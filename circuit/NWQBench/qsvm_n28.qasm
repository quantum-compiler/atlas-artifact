OPENQASM 2.0;
include "qelib1.inc";
qreg q0[28];
creg c0[28];
creg meas[28];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
h q0[7];
h q0[8];
h q0[9];
h q0[10];
h q0[11];
h q0[12];
h q0[13];
h q0[14];
h q0[15];
h q0[16];
h q0[17];
h q0[18];
h q0[19];
h q0[20];
h q0[21];
h q0[22];
h q0[23];
h q0[24];
h q0[25];
h q0[26];
h q0[27];
p(2.6007264) q0[0];
p(2.0223465) q0[1];
p(3.0684112) q0[2];
p(1.4500746) q0[3];
p(3.1210811) q0[4];
p(1.0506243) q0[5];
p(0.055535203) q0[6];
p(2.723849) q0[7];
p(0.45520833) q0[8];
p(1.2024762) q0[9];
p(2.9386134) q0[10];
p(0.26734011) q0[11];
p(0.055517283) q0[12];
p(1.731841) q0[13];
p(1.2950323) q0[14];
p(1.5907856) q0[15];
p(1.0510935) q0[16];
p(2.7617066) q0[17];
p(0.48829598) q0[18];
p(1.0376063) q0[19];
p(1.6843713) q0[20];
p(1.0379424) q0[21];
p(1.4416035) q0[22];
p(0.66029775) q0[23];
p(0.52152439) q0[24];
p(2.2231689) q0[25];
p(1.8203838) q0[26];
p(2.9282457) q0[27];
cx q0[0],q0[1];
rz(0.91104678) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(0.51850775) q0[2];
cx q0[1],q0[2];
cx q0[2],q0[3];
rz(2.4664617) q0[3];
cx q0[2],q0[3];
cx q0[3],q0[4];
rz(2.3471114) q0[4];
cx q0[3],q0[4];
cx q0[4],q0[5];
rz(3.1357285) q0[5];
cx q0[4],q0[5];
cx q0[5],q0[6];
rz(2.9744192) q0[6];
cx q0[5],q0[6];
cx q0[6],q0[7];
rz(2.0368162) q0[7];
cx q0[6],q0[7];
cx q0[7],q0[8];
rz(0.61184388) q0[8];
cx q0[7],q0[8];
cx q0[8],q0[9];
rz(0.35891934) q0[9];
cx q0[8],q0[9];
cx q0[9],q0[10];
rz(0.40725222) q0[10];
cx q0[9],q0[10];
cx q0[10],q0[11];
rz(0.67855692) q0[11];
cx q0[10],q0[11];
cx q0[11],q0[12];
rz(2.1667958) q0[12];
cx q0[11],q0[12];
cx q0[12],q0[13];
rz(0.96682907) q0[13];
cx q0[12],q0[13];
cx q0[13],q0[14];
rz(1.7198402) q0[14];
cx q0[13],q0[14];
cx q0[14],q0[15];
rz(2.7695083) q0[15];
cx q0[14],q0[15];
cx q0[15],q0[16];
rz(0.59419258) q0[16];
cx q0[15],q0[16];
cx q0[16],q0[17];
rz(1.721134) q0[17];
cx q0[16],q0[17];
cx q0[17],q0[18];
rz(0.36125096) q0[18];
cx q0[17],q0[18];
cx q0[18],q0[19];
rz(2.4791433) q0[19];
cx q0[18],q0[19];
cx q0[19],q0[20];
rz(1.8816938) q0[20];
cx q0[19],q0[20];
cx q0[20],q0[21];
rz(1.1759218) q0[21];
cx q0[20],q0[21];
cx q0[21],q0[22];
rz(0.64688424) q0[22];
cx q0[21],q0[22];
cx q0[22],q0[23];
rz(0.94957683) q0[23];
cx q0[22],q0[23];
cx q0[23],q0[24];
rz(0.33685514) q0[24];
cx q0[23],q0[24];
cx q0[24],q0[25];
rz(3.0793275) q0[25];
cx q0[24],q0[25];
cx q0[25],q0[26];
rz(1.9580461) q0[26];
cx q0[25],q0[26];
cx q0[26],q0[27];
rz(0.27952786) q0[27];
cx q0[26],q0[27];
cx q0[26],q0[27];
rz(2.9805824) q0[27];
cx q0[26],q0[27];
cx q0[25],q0[26];
rz(0.056874434) q0[26];
cx q0[25],q0[26];
cx q0[24],q0[25];
rz(1.5807845) q0[25];
cx q0[24],q0[25];
cx q0[23],q0[24];
rz(0.10726435) q0[24];
cx q0[23],q0[24];
cx q0[22],q0[23];
rz(3.0370866) q0[23];
cx q0[22],q0[23];
cx q0[21],q0[22];
rz(1.4342688) q0[22];
cx q0[21],q0[22];
cx q0[20],q0[21];
rz(2.842019) q0[21];
cx q0[20],q0[21];
cx q0[19],q0[20];
rz(0.24770601) q0[20];
cx q0[19],q0[20];
cx q0[18],q0[19];
rz(0.96926192) q0[19];
cx q0[18],q0[19];
cx q0[17],q0[18];
rz(2.2589585) q0[18];
cx q0[17],q0[18];
cx q0[16],q0[17];
rz(0.79479642) q0[17];
cx q0[16],q0[17];
cx q0[15],q0[16];
rz(0.0048060593) q0[16];
cx q0[15],q0[16];
cx q0[14],q0[15];
rz(0.60776218) q0[15];
cx q0[14],q0[15];
cx q0[13],q0[14];
rz(1.3177827) q0[14];
cx q0[13],q0[14];
cx q0[12],q0[13];
rz(1.9804649) q0[13];
cx q0[12],q0[13];
cx q0[11],q0[12];
rz(0.93357439) q0[12];
cx q0[11],q0[12];
cx q0[10],q0[11];
rz(2.1012011) q0[11];
cx q0[10],q0[11];
cx q0[9],q0[10];
rz(0.79226027) q0[10];
cx q0[9],q0[10];
cx q0[8],q0[9];
rz(1.072955) q0[9];
cx q0[8],q0[9];
cx q0[7],q0[8];
rz(1.6380519) q0[8];
cx q0[7],q0[8];
cx q0[6],q0[7];
rz(2.9974322) q0[7];
cx q0[6],q0[7];
cx q0[5],q0[6];
rz(2.8838409) q0[6];
cx q0[5],q0[6];
cx q0[4],q0[5];
rz(0.42444365) q0[5];
cx q0[4],q0[5];
cx q0[3],q0[4];
rz(0.063277148) q0[4];
cx q0[3],q0[4];
cx q0[2],q0[3];
rz(1.4840357) q0[3];
cx q0[2],q0[3];
cx q0[1],q0[2];
rz(1.8025953) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(0.0081567663) q0[1];
cx q0[0],q0[1];
rz(0.98251548) q0[0];
rz(0.53026561) q0[1];
rz(0.10108905) q0[2];
rz(0.42554604) q0[3];
rz(0.65581883) q0[4];
rz(1.572738) q0[5];
rz(1.0818148) q0[6];
rz(2.4704624) q0[7];
rz(0.060020961) q0[8];
rz(1.4484561) q0[9];
rz(0.9160072) q0[10];
rz(2.3512623) q0[11];
rz(2.0982432) q0[12];
rz(3.0151028) q0[13];
rz(0.55430701) q0[14];
rz(0.79903231) q0[15];
rz(2.8119235) q0[16];
rz(0.53031619) q0[17];
rz(2.9888893) q0[18];
rz(1.7184541) q0[19];
rz(2.8777357) q0[20];
rz(0.32518477) q0[21];
rz(0.024316831) q0[22];
rz(1.1610065) q0[23];
rz(1.6890955) q0[24];
rz(2.2199943) q0[25];
rz(1.2054932) q0[26];
rz(1.2360394) q0[27];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
h q0[7];
h q0[8];
h q0[9];
h q0[10];
h q0[11];
h q0[12];
h q0[13];
h q0[14];
h q0[15];
h q0[16];
h q0[17];
h q0[18];
h q0[19];
h q0[20];
h q0[21];
h q0[22];
h q0[23];
h q0[24];
h q0[25];
h q0[26];
h q0[27];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6],q0[7],q0[8],q0[9],q0[10],q0[11],q0[12],q0[13],q0[14],q0[15],q0[16],q0[17],q0[18],q0[19],q0[20],q0[21],q0[22],q0[23],q0[24],q0[25],q0[26],q0[27];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q0[2] -> meas[2];
measure q0[3] -> meas[3];
measure q0[4] -> meas[4];
measure q0[5] -> meas[5];
measure q0[6] -> meas[6];
measure q0[7] -> meas[7];
measure q0[8] -> meas[8];
measure q0[9] -> meas[9];
measure q0[10] -> meas[10];
measure q0[11] -> meas[11];
measure q0[12] -> meas[12];
measure q0[13] -> meas[13];
measure q0[14] -> meas[14];
measure q0[15] -> meas[15];
measure q0[16] -> meas[16];
measure q0[17] -> meas[17];
measure q0[18] -> meas[18];
measure q0[19] -> meas[19];
measure q0[20] -> meas[20];
measure q0[21] -> meas[21];
measure q0[22] -> meas[22];
measure q0[23] -> meas[23];
measure q0[24] -> meas[24];
measure q0[25] -> meas[25];
measure q0[26] -> meas[26];
measure q0[27] -> meas[27];
