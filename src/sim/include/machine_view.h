#ifndef _FLEXFLOW_MACHINE_VIEW_H
#define _FLEXFLOW_MACHINE_VIEW_H

#include "legion.h"
#include "distributed_simulator_const.h"
#include <vector>
#ifdef FF_USE_NCCL
#include <nccl.h>
#endif

namespace sim {

struct MachineView {
  static const MachineView NO_VIEW;
  MachineView();

  int get_device_id(Legion::DomainPoint const &p) const;
  bool operator==(MachineView const &rhs) const;
  bool operator!=(MachineView const &rhs) const;

  Legion::Domain get_domain() const;

  size_t hash() const;
  size_t num_parts() const;
  enum DeviceType {
    GPU = 0,
    CPU = 1,
  };
  DeviceType device_type;
  int ndims, start_device_id, dim[MAX_TENSOR_DIM], stride[MAX_TENSOR_DIM];
  std::vector<int> device_ids() const;

  friend std::ostream &operator<<(std::ostream &, MachineView const &);
};

struct MachineViewDimCompare {
  bool operator()(MachineView const &a, MachineView const &b) const {
    if (a.ndims != b.ndims) {
      return a.ndims < b.ndims;
    }
    for (int i = 0; i < a.ndims; i++) {
      if (a.dim[i] != b.dim[i]) {
        return a.dim[i] < b.dim[i];
      }
    }
    return false;
  }
};

struct ParallelConfig {
  enum DeviceType {
    GPU = 0,
    CPU = 1,
  };
  bool operator==(ParallelConfig const &rhs) const {
    if (nDims != rhs.nDims) {
      return false;
    }
    if (device_type != rhs.device_type) {
      return false;
    }
    for (int i = 0; i < nDims; i++) {
      if (dim[i] != rhs.dim[i]) {
        return false;
      }
    }
    for (int i = 0; i < num_parts(); i++) {
      if (device_ids[i] != rhs.device_ids[i]) {
        return false;
      }
    }
    return true;
  }
  int num_parts() const;
  bool is_data_parallel() const;
  ParallelConfig
      change_data_parallel_dimensionality(int new_dimensionality) const;
  DeviceType device_type;
  int nDims, dim[MAX_TENSOR_DIM];
  int device_ids[MAX_NUM_WORKERS];
#ifdef FF_USE_NCCL
  ncclComm_t nccl_comms[MAX_NUM_WORKERS];
#endif
};

}; // namespace FlexFlow

namespace std {
template <>
struct hash<sim::MachineView> {
  size_t operator()(sim::MachineView const &) const;
};
}; // namespace std

#endif // _FLEXFLOW_MACHINE_VIEW_H
