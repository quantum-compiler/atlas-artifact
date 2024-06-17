OPENQASM 2.0;
include "qelib1.inc";
qreg q0[37];
creg c0[37];
creg meas[37];
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
h q0[28];
h q0[29];
h q0[30];
h q0[31];
h q0[32];
h q0[33];
h q0[34];
h q0[35];
h q0[36];
p(1.5935867) q0[0];
p(1.3206049) q0[1];
p(1.7460159) q0[2];
p(0.22319924) q0[3];
p(3.0331172) q0[4];
p(2.1006329) q0[5];
p(1.1503787) q0[6];
p(2.7678842) q0[7];
p(3.0792002) q0[8];
p(2.9259474) q0[9];
p(1.7331631) q0[10];
p(2.9876739) q0[11];
p(2.8960058) q0[12];
p(1.1475434) q0[13];
p(2.721471) q0[14];
p(0.47532995) q0[15];
p(2.5638793) q0[16];
p(1.1582561) q0[17];
p(0.53525003) q0[18];
p(2.1310684) q0[19];
p(2.04721) q0[20];
p(0.7377176) q0[21];
p(1.6990476) q0[22];
p(1.9154714) q0[23];
p(1.7641873) q0[24];
p(2.2445225) q0[25];
p(2.6323225) q0[26];
p(2.889473) q0[27];
p(2.6720368) q0[28];
p(1.2084076) q0[29];
p(0.90317299) q0[30];
p(2.0546492) q0[31];
p(2.0777568) q0[32];
p(2.6764187) q0[33];
p(1.8836564) q0[34];
p(1.0591637) q0[35];
p(0.72037073) q0[36];
cx q0[0],q0[1];
rz(0.80231025) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(0.42541378) q0[2];
cx q0[1],q0[2];
cx q0[2],q0[3];
rz(1.1224508) q0[3];
cx q0[2],q0[3];
cx q0[3],q0[4];
rz(0.13446424) q0[4];
cx q0[3],q0[4];
cx q0[4],q0[5];
rz(0.15403687) q0[5];
cx q0[4],q0[5];
cx q0[5],q0[6];
rz(0.61112088) q0[6];
cx q0[5],q0[6];
cx q0[6],q0[7];
rz(1.3176239) q0[7];
cx q0[6],q0[7];
cx q0[7],q0[8];
rz(1.1652922) q0[8];
cx q0[7],q0[8];
cx q0[8],q0[9];
rz(0.69756898) q0[9];
cx q0[8],q0[9];
cx q0[9],q0[10];
rz(0.028477184) q0[10];
cx q0[9],q0[10];
cx q0[10],q0[11];
rz(1.783178) q0[11];
cx q0[10],q0[11];
cx q0[11],q0[12];
rz(0.90822638) q0[12];
cx q0[11],q0[12];
cx q0[12],q0[13];
rz(0.14433988) q0[13];
cx q0[12],q0[13];
cx q0[13],q0[14];
rz(3.0550162) q0[14];
cx q0[13],q0[14];
cx q0[14],q0[15];
rz(1.8034072) q0[15];
cx q0[14],q0[15];
cx q0[15],q0[16];
rz(2.8175432) q0[16];
cx q0[15],q0[16];
cx q0[16],q0[17];
rz(2.0592651) q0[17];
cx q0[16],q0[17];
cx q0[17],q0[18];
rz(1.5619833) q0[18];
cx q0[17],q0[18];
cx q0[18],q0[19];
rz(0.68444387) q0[19];
cx q0[18],q0[19];
cx q0[19],q0[20];
rz(1.1510388) q0[20];
cx q0[19],q0[20];
cx q0[20],q0[21];
rz(0.24301163) q0[21];
cx q0[20],q0[21];
cx q0[21],q0[22];
rz(1.8691385) q0[22];
cx q0[21],q0[22];
cx q0[22],q0[23];
rz(2.2707879) q0[23];
cx q0[22],q0[23];
cx q0[23],q0[24];
rz(3.0385138) q0[24];
cx q0[23],q0[24];
cx q0[24],q0[25];
rz(0.95139062) q0[25];
cx q0[24],q0[25];
cx q0[25],q0[26];
rz(1.5902102) q0[26];
cx q0[25],q0[26];
cx q0[26],q0[27];
rz(1.3191653) q0[27];
cx q0[26],q0[27];
cx q0[27],q0[28];
rz(1.0281854) q0[28];
cx q0[27],q0[28];
cx q0[28],q0[29];
rz(0.29806156) q0[29];
cx q0[28],q0[29];
cx q0[29],q0[30];
rz(0.75800859) q0[30];
cx q0[29],q0[30];
cx q0[30],q0[31];
rz(0.71016753) q0[31];
cx q0[30],q0[31];
cx q0[31],q0[32];
rz(0.32985281) q0[32];
cx q0[31],q0[32];
cx q0[32],q0[33];
rz(0.44670689) q0[33];
cx q0[32],q0[33];
cx q0[33],q0[34];
rz(2.9137206) q0[34];
cx q0[33],q0[34];
cx q0[34],q0[35];
rz(2.1135636) q0[35];
cx q0[34],q0[35];
cx q0[35],q0[36];
rz(1.6895043) q0[36];
cx q0[35],q0[36];
cx q0[35],q0[36];
rz(1.9551158) q0[36];
cx q0[35],q0[36];
cx q0[34],q0[35];
rz(0.8442581) q0[35];
cx q0[34],q0[35];
cx q0[33],q0[34];
rz(0.37848139) q0[34];
cx q0[33],q0[34];
cx q0[32],q0[33];
rz(1.8448821) q0[33];
cx q0[32],q0[33];
cx q0[31],q0[32];
rz(1.2368064) q0[32];
cx q0[31],q0[32];
cx q0[30],q0[31];
rz(2.774933) q0[31];
cx q0[30],q0[31];
cx q0[29],q0[30];
rz(0.51045225) q0[30];
cx q0[29],q0[30];
cx q0[28],q0[29];
rz(0.64230102) q0[29];
cx q0[28],q0[29];
cx q0[27],q0[28];
rz(1.7520161) q0[28];
cx q0[27],q0[28];
cx q0[26],q0[27];
rz(0.5010011) q0[27];
cx q0[26],q0[27];
cx q0[25],q0[26];
rz(1.4999181) q0[26];
cx q0[25],q0[26];
cx q0[24],q0[25];
rz(1.0646663) q0[25];
cx q0[24],q0[25];
cx q0[23],q0[24];
rz(1.789536) q0[24];
cx q0[23],q0[24];
cx q0[22],q0[23];
rz(1.6666729) q0[23];
cx q0[22],q0[23];
cx q0[21],q0[22];
rz(2.5198441) q0[22];
cx q0[21],q0[22];
cx q0[20],q0[21];
rz(2.2394398) q0[21];
cx q0[20],q0[21];
cx q0[19],q0[20];
rz(1.1923361) q0[20];
cx q0[19],q0[20];
cx q0[18],q0[19];
rz(0.82515826) q0[19];
cx q0[18],q0[19];
cx q0[17],q0[18];
rz(0.26621452) q0[18];
cx q0[17],q0[18];
cx q0[16],q0[17];
rz(1.8058784) q0[17];
cx q0[16],q0[17];
cx q0[15],q0[16];
rz(2.6480393) q0[16];
cx q0[15],q0[16];
cx q0[14],q0[15];
rz(2.0118776) q0[15];
cx q0[14],q0[15];
cx q0[13],q0[14];
rz(1.0996551) q0[14];
cx q0[13],q0[14];
cx q0[12],q0[13];
rz(0.058341226) q0[13];
cx q0[12],q0[13];
cx q0[11],q0[12];
rz(0.79822209) q0[12];
cx q0[11],q0[12];
cx q0[10],q0[11];
rz(2.948614) q0[11];
cx q0[10],q0[11];
cx q0[9],q0[10];
rz(0.4706662) q0[10];
cx q0[9],q0[10];
cx q0[8],q0[9];
rz(0.66209433) q0[9];
cx q0[8],q0[9];
cx q0[7],q0[8];
rz(2.3748158) q0[8];
cx q0[7],q0[8];
cx q0[6],q0[7];
rz(1.9165633) q0[7];
cx q0[6],q0[7];
cx q0[5],q0[6];
rz(1.838154) q0[6];
cx q0[5],q0[6];
cx q0[4],q0[5];
rz(2.4357995) q0[5];
cx q0[4],q0[5];
cx q0[3],q0[4];
rz(0.492897) q0[4];
cx q0[3],q0[4];
cx q0[2],q0[3];
rz(1.4023862) q0[3];
cx q0[2],q0[3];
cx q0[1],q0[2];
rz(0.93372489) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(0.83396217) q0[1];
cx q0[0],q0[1];
rz(2.5630489) q0[0];
rz(2.1962835) q0[1];
rz(0.73827348) q0[2];
rz(3.0150438) q0[3];
rz(2.7522892) q0[4];
rz(0.58159619) q0[5];
rz(2.0398897) q0[6];
rz(2.0073665) q0[7];
rz(0.22455209) q0[8];
rz(1.8275901) q0[9];
rz(2.1851288) q0[10];
rz(1.2366099) q0[11];
rz(2.3544553) q0[12];
rz(0.32418622) q0[13];
rz(0.85539496) q0[14];
rz(1.0038807) q0[15];
rz(0.30714557) q0[16];
rz(2.1437812) q0[17];
rz(2.2494874) q0[18];
rz(0.9441042) q0[19];
rz(1.7815686) q0[20];
rz(0.9829471) q0[21];
rz(2.9369589) q0[22];
rz(2.8584678) q0[23];
rz(1.0199991) q0[24];
rz(2.0851942) q0[25];
rz(2.3407339) q0[26];
rz(2.9821257) q0[27];
rz(2.5636414) q0[28];
rz(1.5300453) q0[29];
rz(1.1394564) q0[30];
rz(1.1606114) q0[31];
rz(2.7927683) q0[32];
rz(1.1224244) q0[33];
rz(3.115582) q0[34];
rz(2.8024593) q0[35];
rz(1.6947007) q0[36];
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
h q0[28];
h q0[29];
h q0[30];
h q0[31];
h q0[32];
h q0[33];
h q0[34];
h q0[35];
h q0[36];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6],q0[7],q0[8],q0[9],q0[10],q0[11],q0[12],q0[13],q0[14],q0[15],q0[16],q0[17],q0[18],q0[19],q0[20],q0[21],q0[22],q0[23],q0[24],q0[25],q0[26],q0[27],q0[28],q0[29],q0[30],q0[31],q0[32],q0[33],q0[34],q0[35],q0[36];
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
measure q0[28] -> meas[28];
measure q0[29] -> meas[29];
measure q0[30] -> meas[30];
measure q0[31] -> meas[31];
measure q0[32] -> meas[32];
measure q0[33] -> meas[33];
measure q0[34] -> meas[34];
measure q0[35] -> meas[35];
measure q0[36] -> meas[36];