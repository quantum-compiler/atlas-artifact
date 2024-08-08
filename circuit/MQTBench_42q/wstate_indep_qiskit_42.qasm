// Benchmark was created by MQT Bench on 2022-12-15
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 0.2.2
// Qiskit version: {'qiskit-terra': '0.22.3', 'qiskit-aer': '0.11.1', 'qiskit-ignis': '0.7.0', 'qiskit-ibmq-provider': '0.19.2', 'qiskit': '0.39.3', 'qiskit-nature': '0.5.1', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.4.0', 'qiskit-machine-learning': '0.5.0'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[42];
creg meas[42];
ry(-pi/4) q[0];
ry(-0.95531662) q[1];
ry(-pi/3) q[2];
ry(-1.1071487) q[3];
ry(-1.150262) q[4];
ry(-1.1831996) q[5];
ry(-1.2094292) q[6];
ry(-1.2309594) q[7];
ry(-1.2490458) q[8];
ry(-1.264519) q[9];
ry(-1.2779536) q[10];
ry(-1.2897614) q[11];
ry(-1.3002466) q[12];
ry(-1.3096389) q[13];
ry(-1.3181161) q[14];
ry(-1.3258177) q[15];
ry(-1.3328552) q[16];
ry(-1.339319) q[17];
ry(-1.3452829) q[18];
ry(-1.3508083) q[19];
ry(-1.3559465) q[20];
ry(-1.3607406) q[21];
ry(-1.3652274) q[22];
ry(-1.3694384) q[23];
ry(-1.3734008) q[24];
ry(-1.377138) q[25];
ry(-1.3806707) q[26];
ry(-1.3840169) q[27];
ry(-1.3871923) q[28];
ry(-1.3902111) q[29];
ry(-1.3930857) q[30];
ry(-1.3958273) q[31];
ry(-1.3984457) q[32];
ry(-1.40095) q[33];
ry(-1.4033482) q[34];
ry(-1.4056476) q[35];
ry(-1.4078548) q[36];
ry(-1.4099758) q[37];
ry(-1.4120161) q[38];
ry(-1.4139806) q[39];
ry(-1.415874) q[40];
x q[41];
cz q[41],q[40];
ry(1.415874) q[40];
cz q[40],q[39];
ry(1.4139806) q[39];
cz q[39],q[38];
ry(1.4120161) q[38];
cz q[38],q[37];
ry(1.4099758) q[37];
cz q[37],q[36];
ry(1.4078548) q[36];
cz q[36],q[35];
ry(1.4056476) q[35];
cz q[35],q[34];
ry(1.4033482) q[34];
cz q[34],q[33];
ry(1.40095) q[33];
cz q[33],q[32];
ry(1.3984457) q[32];
cz q[32],q[31];
ry(1.3958273) q[31];
cz q[31],q[30];
ry(1.3930857) q[30];
cz q[30],q[29];
ry(1.3902111) q[29];
cz q[29],q[28];
ry(1.3871923) q[28];
cz q[28],q[27];
ry(1.3840169) q[27];
cz q[27],q[26];
ry(1.3806707) q[26];
cz q[26],q[25];
ry(1.377138) q[25];
cz q[25],q[24];
ry(1.3734008) q[24];
cz q[24],q[23];
ry(1.3694384) q[23];
cz q[23],q[22];
ry(1.3652274) q[22];
cz q[22],q[21];
ry(1.3607406) q[21];
cz q[21],q[20];
ry(1.3559465) q[20];
cz q[20],q[19];
ry(1.3508083) q[19];
cz q[19],q[18];
ry(1.3452829) q[18];
cz q[18],q[17];
ry(1.339319) q[17];
cz q[17],q[16];
ry(1.3328552) q[16];
cz q[16],q[15];
ry(1.3258177) q[15];
cz q[15],q[14];
ry(1.3181161) q[14];
cz q[14],q[13];
ry(1.3096389) q[13];
cz q[13],q[12];
ry(1.3002466) q[12];
cz q[12],q[11];
ry(1.2897614) q[11];
cz q[11],q[10];
ry(1.2779536) q[10];
cz q[10],q[9];
cx q[40],q[41];
cx q[39],q[40];
cx q[38],q[39];
cx q[37],q[38];
cx q[36],q[37];
cx q[35],q[36];
cx q[34],q[35];
cx q[33],q[34];
cx q[32],q[33];
cx q[31],q[32];
cx q[30],q[31];
cx q[29],q[30];
cx q[28],q[29];
cx q[27],q[28];
cx q[26],q[27];
cx q[25],q[26];
cx q[24],q[25];
cx q[23],q[24];
cx q[22],q[23];
cx q[21],q[22];
cx q[20],q[21];
cx q[19],q[20];
cx q[18],q[19];
cx q[17],q[18];
cx q[16],q[17];
cx q[15],q[16];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
ry(1.264519) q[9];
cz q[9],q[8];
ry(1.2490458) q[8];
cz q[8],q[7];
ry(1.2309594) q[7];
cz q[7],q[6];
ry(1.2094292) q[6];
cz q[6],q[5];
ry(1.1831996) q[5];
cz q[5],q[4];
ry(1.150262) q[4];
cz q[4],q[3];
ry(1.1071487) q[3];
cz q[3],q[2];
ry(pi/3) q[2];
cz q[2],q[1];
ry(0.95531662) q[1];
cz q[1],q[0];
ry(pi/4) q[0];
cx q[9],q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
measure q[10] -> meas[10];
measure q[11] -> meas[11];
measure q[12] -> meas[12];
measure q[13] -> meas[13];
measure q[14] -> meas[14];
measure q[15] -> meas[15];
measure q[16] -> meas[16];
measure q[17] -> meas[17];
measure q[18] -> meas[18];
measure q[19] -> meas[19];
measure q[20] -> meas[20];
measure q[21] -> meas[21];
measure q[22] -> meas[22];
measure q[23] -> meas[23];
measure q[24] -> meas[24];
measure q[25] -> meas[25];
measure q[26] -> meas[26];
measure q[27] -> meas[27];
measure q[28] -> meas[28];
measure q[29] -> meas[29];
measure q[30] -> meas[30];
measure q[31] -> meas[31];
measure q[32] -> meas[32];
measure q[33] -> meas[33];
measure q[34] -> meas[34];
measure q[35] -> meas[35];
measure q[36] -> meas[36];
measure q[37] -> meas[37];
measure q[38] -> meas[38];
measure q[39] -> meas[39];
measure q[40] -> meas[40];
measure q[41] -> meas[41];
