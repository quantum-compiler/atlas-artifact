OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
t q[0];
t q[0];
sx q[0];
t q[0];
t q[0];
t q[1];
t q[1];
sx q[1];
t q[1];
t q[1];
t q[2];
t q[2];
sx q[2];
t q[2];
t q[2];
t q[3];
t q[3];
sx q[3];
t q[3];
t q[3];
t q[4];
t q[4];
sx q[4];
t q[4];
t q[4];
t q[5];
t q[5];
sx q[5];
t q[5];
t q[5];
t q[6];
t q[6];
sx q[6];
t q[6];
t q[6];
t q[7];
t q[7];
sx q[7];
t q[7];
t q[7];
t q[8];
t q[8];
sx q[8];
t q[8];
t q[8];
cx q[14],q[9];
cx q[13],q[14];
cx q[14],q[4];
tdg q[4];
t q[9];
t q[9];
sx q[9];
t q[9];
t q[9];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[4];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
t q[4];
cx q[14],q[4];
tdg q[4];
cx q[15],q[4];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[14],q[11];
t q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
cx q[13],q[14];
tdg q[14];
cx q[12],q[14];
t q[14];
cx q[13],q[14];
tdg q[14];
cx q[12],q[14];
cx q[12],q[13];
tdg q[13];
cx q[12],q[13];
t q[12];
t q[13];
t q[13];
t q[13];
sx q[13];
t q[13];
t q[13];
t q[14];
t q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
cx q[14],q[13];
tdg q[13];
cx q[11],q[13];
t q[13];
cx q[14],q[13];
tdg q[13];
cx q[11],q[13];
cx q[11],q[14];
t q[13];
t q[13];
t q[13];
sx q[13];
t q[13];
t q[13];
cx q[13],q[15];
tdg q[14];
cx q[11],q[14];
t q[11];
t q[14];
cx q[14],q[1];
t q[1];
tdg q[15];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[1];
tdg q[1];
cx q[14],q[1];
t q[1];
cx q[15],q[1];
t q[1];
sx q[1];
t q[1];
t q[1];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
cx q[14],q[10];
t q[10];
t q[10];
sx q[10];
t q[10];
t q[10];
t q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
cx q[13],q[15];
t q[15];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[13],q[14];
tdg q[14];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
cx q[12],q[15];
t q[15];
cx q[11],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[11],q[15];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[14];
t q[14];
cx q[13],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
cx q[14],q[9];
cx q[15],q[13];
tdg q[13];
cx q[15],q[13];
t q[13];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[12],q[15];
tdg q[15];
cx q[11],q[15];
t q[15];
cx q[12],q[15];
tdg q[15];
cx q[11],q[15];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[15];
cx q[13],q[15];
t q[15];
t q[16];
cx q[12],q[16];
t q[16];
t q[4];
t q[4];
t q[4];
sx q[4];
t q[4];
t q[4];
t q[9];
cx q[11],q[9];
tdg q[9];
cx q[14],q[9];
t q[9];
cx q[11],q[9];
cx q[11],q[14];
t q[14];
cx q[11],q[14];
tdg q[11];
cx q[11],q[16];
tdg q[14];
cx q[14],q[5];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
tdg q[16];
tdg q[5];
cx q[15],q[5];
t q[5];
cx q[14],q[5];
tdg q[5];
cx q[15],q[5];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
cx q[14],q[0];
t q[0];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
cx q[12],q[0];
tdg q[0];
cx q[14],q[0];
t q[0];
cx q[12],q[0];
tdg q[0];
cx q[12],q[14];
t q[14];
cx q[12],q[14];
tdg q[12];
tdg q[14];
cx q[14],q[0];
tdg q[0];
cx q[13],q[0];
t q[0];
cx q[14],q[0];
tdg q[0];
cx q[13],q[0];
t q[0];
cx q[13],q[14];
tdg q[14];
cx q[13],q[14];
t q[13];
cx q[13],q[15];
t q[14];
cx q[14],q[0];
tdg q[0];
tdg q[15];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[0];
t q[0];
cx q[14],q[0];
tdg q[0];
cx q[15],q[0];
t q[0];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
cx q[13],q[15];
t q[15];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[13],q[15];
tdg q[15];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[14],q[12];
cx q[14],q[3];
tdg q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
t q[3];
cx q[15],q[3];
tdg q[3];
cx q[14],q[3];
t q[3];
cx q[15],q[3];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[13],q[15];
tdg q[15];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
tdg q[16];
t q[3];
sx q[3];
t q[3];
t q[3];
t q[5];
t q[5];
t q[5];
sx q[5];
t q[5];
t q[5];
tdg q[9];
cx q[14],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[14],q[9];
tdg q[9];
cx q[12],q[9];
cx q[12],q[14];
tdg q[14];
cx q[12],q[14];
t q[12];
t q[14];
cx q[14],q[2];
t q[2];
cx q[12],q[2];
tdg q[2];
cx q[14],q[2];
t q[2];
cx q[12],q[2];
cx q[12],q[14];
t q[14];
cx q[12],q[14];
tdg q[12];
cx q[12],q[16];
tdg q[14];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
tdg q[2];
cx q[14],q[2];
tdg q[2];
cx q[15],q[2];
t q[2];
cx q[14],q[2];
tdg q[2];
cx q[15],q[2];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
t q[13];
sx q[13];
t q[13];
t q[13];
cx q[14],q[13];
t q[13];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[12],q[15];
tdg q[15];
cx q[11],q[15];
t q[15];
cx q[12],q[15];
tdg q[15];
cx q[11],q[15];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[13];
tdg q[13];
cx q[14],q[13];
t q[13];
cx q[15],q[13];
t q[13];
sx q[13];
t q[13];
t q[13];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[12],q[15];
t q[15];
cx q[11],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[11],q[15];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
t q[11];
sx q[11];
t q[11];
t q[11];
tdg q[12];
tdg q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
cx q[12],q[13];
tdg q[13];
cx q[12],q[13];
t q[12];
t q[13];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
tdg q[16];
t q[2];
cx q[14],q[2];
tdg q[2];
cx q[15],q[2];
t q[2];
cx q[14],q[2];
tdg q[2];
cx q[15],q[2];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
cx q[14],q[11];
t q[11];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[12],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[12],q[15];
cx q[12],q[13];
t q[13];
cx q[12],q[13];
tdg q[12];
tdg q[13];
tdg q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
cx q[12],q[13];
tdg q[13];
cx q[12],q[13];
t q[12];
t q[13];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[11];
tdg q[11];
cx q[14],q[11];
t q[11];
cx q[15],q[11];
t q[11];
sx q[11];
t q[11];
t q[11];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
cx q[14],q[0];
tdg q[0];
cx q[11],q[0];
t q[0];
cx q[14],q[0];
tdg q[0];
cx q[11],q[0];
t q[0];
t q[0];
t q[0];
sx q[0];
t q[0];
t q[0];
cx q[11],q[14];
tdg q[14];
cx q[11],q[14];
t q[11];
t q[14];
cx q[14],q[6];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[12],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[12],q[15];
cx q[12],q[13];
t q[13];
cx q[12],q[13];
tdg q[12];
cx q[12],q[16];
tdg q[13];
tdg q[15];
cx q[13],q[15];
tdg q[15];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
t q[2];
t q[2];
t q[2];
sx q[2];
t q[2];
t q[2];
t q[6];
cx q[15],q[6];
tdg q[6];
cx q[14],q[6];
t q[6];
cx q[15],q[6];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
t q[13];
sx q[13];
t q[13];
t q[13];
cx q[14],q[13];
t q[13];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
cx q[11],q[13];
t q[12];
tdg q[13];
cx q[14],q[13];
t q[13];
cx q[11],q[13];
cx q[11],q[14];
t q[13];
sx q[13];
t q[13];
t q[13];
t q[14];
cx q[11],q[14];
t q[11];
sx q[11];
t q[11];
t q[11];
tdg q[14];
cx q[14],q[11];
tdg q[11];
cx q[13],q[11];
t q[11];
cx q[14],q[11];
tdg q[11];
cx q[13],q[11];
t q[11];
t q[11];
t q[11];
sx q[11];
t q[11];
t q[11];
cx q[13],q[14];
tdg q[14];
cx q[13],q[14];
t q[13];
cx q[13],q[15];
t q[14];
cx q[14],q[7];
t q[15];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
tdg q[16];
t q[6];
sx q[6];
t q[6];
t q[6];
tdg q[7];
cx q[15],q[7];
t q[7];
cx q[14],q[7];
tdg q[7];
cx q[15],q[7];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
cx q[13],q[15];
t q[15];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
cx q[11],q[15];
t q[12];
sx q[12];
t q[12];
t q[12];
cx q[14],q[12];
t q[12];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[11],q[15];
cx q[11],q[13];
t q[13];
cx q[11],q[13];
tdg q[11];
tdg q[13];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[12];
tdg q[12];
cx q[14],q[12];
t q[12];
cx q[15],q[12];
t q[12];
sx q[12];
t q[12];
t q[12];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
tdg q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[11],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[11],q[15];
cx q[11],q[13];
tdg q[13];
cx q[11],q[13];
t q[11];
t q[13];
t q[15];
cx q[13],q[15];
t q[15];
tdg q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
tdg q[16];
t q[7];
t q[7];
t q[7];
sx q[7];
t q[7];
t q[7];
t q[9];
cx q[14],q[9];
tdg q[9];
cx q[15],q[9];
t q[9];
cx q[14],q[9];
tdg q[9];
cx q[15],q[9];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
cx q[14],q[10];
t q[10];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
cx q[13],q[15];
t q[15];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
tdg q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
t q[12];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[14],q[10];
t q[10];
cx q[15],q[10];
tdg q[10];
cx q[15],q[14];
t q[14];
cx q[15],q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[13],q[15];
tdg q[15];
tdg q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
cx q[13],q[10];
t q[10];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[12],q[14];
tdg q[14];
cx q[11],q[14];
t q[14];
cx q[12],q[14];
tdg q[14];
cx q[11],q[14];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
cx q[11],q[10];
tdg q[10];
t q[12];
cx q[13],q[10];
t q[10];
cx q[11],q[10];
t q[10];
sx q[10];
t q[10];
t q[10];
cx q[11],q[13];
t q[13];
cx q[11],q[13];
tdg q[11];
tdg q[13];
t q[14];
t q[14];
t q[14];
sx q[14];
t q[14];
t q[14];
cx q[14],q[13];
cx q[13],q[15];
cx q[14],q[8];
tdg q[15];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
tdg q[16];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[16],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[16],q[15];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
tdg q[13];
cx q[16],q[13];
t q[13];
t q[16];
tdg q[8];
cx q[15],q[8];
t q[8];
cx q[14],q[8];
tdg q[8];
cx q[15],q[8];
cx q[15],q[14];
tdg q[14];
cx q[15],q[14];
t q[14];
t q[15];
t q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
cx q[13],q[15];
t q[15];
cx q[16],q[15];
t q[15];
sx q[15];
t q[15];
t q[15];
cx q[16],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
t q[16];
sx q[16];
t q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
t q[16];
cx q[12],q[16];
tdg q[16];
cx q[11],q[16];
cx q[11],q[12];
tdg q[12];
cx q[11],q[12];
t q[11];
cx q[11],q[14];
t q[12];
cx q[12],q[13];
t q[16];
t q[16];
t q[16];
sx q[16];
t q[16];
t q[16];
t q[8];
t q[8];
t q[8];
sx q[8];
t q[8];
t q[8];
t q[9];
t q[9];
t q[9];
sx q[9];
t q[9];
t q[9];
cx q[10],q[9];
cx q[9],q[13];
cx q[13],q[12];
cx q[12],q[8];
cx q[8],q[12];
cx q[12],q[11];
cx q[14],q[11];
cx q[10],q[14];
cx q[10],q[13];
cx q[9],q[11];
cx q[11],q[7];
cx q[7],q[11];
cx q[7],q[10];
cx q[10],q[6];
cx q[6],q[10];
cx q[6],q[9];
cx q[9],q[5];
cx q[5],q[8];
cx q[5],q[9];
cx q[8],q[4];
cx q[4],q[7];
cx q[4],q[8];
cx q[7],q[3];
cx q[3],q[6];
cx q[3],q[7];
cx q[6],q[2];
cx q[2],q[6];
cx q[2],q[5];
cx q[5],q[1];
cx q[1],q[4];
cx q[1],q[5];
cx q[4],q[0];
cx q[0],q[3];
cx q[0],q[4];