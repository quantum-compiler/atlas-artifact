OPENQASM 2.0;
include "qelib1.inc";
qreg q0[35];
creg c0[35];
creg meas[35];
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
p(0.046202188) q0[0];
p(1.9966283) q0[1];
p(0.44089438) q0[2];
p(1.5257945) q0[3];
p(0.84607974) q0[4];
p(2.8020459) q0[5];
p(2.6035893) q0[6];
p(1.4655349) q0[7];
p(2.3807079) q0[8];
p(1.4369445) q0[9];
p(1.4150166) q0[10];
p(3.0693594) q0[11];
p(2.0791358) q0[12];
p(2.8840637) q0[13];
p(1.7593758) q0[14];
p(1.3141675) q0[15];
p(1.2395858) q0[16];
p(2.9619607) q0[17];
p(0.80616555) q0[18];
p(1.8587461) q0[19];
p(0.1018854) q0[20];
p(1.9524017) q0[21];
p(0.20607295) q0[22];
p(1.0347683) q0[23];
p(1.835671) q0[24];
p(1.0404183) q0[25];
p(0.87781453) q0[26];
p(1.5353559) q0[27];
p(0.84433382) q0[28];
p(1.1579378) q0[29];
p(3.1064561) q0[30];
p(0.34998571) q0[31];
p(0.96536258) q0[32];
p(1.7903917) q0[33];
p(1.2768793) q0[34];
cx q0[0],q0[1];
rz(1.4595997) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(0.87795666) q0[2];
cx q0[1],q0[2];
cx q0[2],q0[3];
rz(0.29806876) q0[3];
cx q0[2],q0[3];
cx q0[3],q0[4];
rz(0.50757162) q0[4];
cx q0[3],q0[4];
cx q0[4],q0[5];
rz(0.41741441) q0[5];
cx q0[4],q0[5];
cx q0[5],q0[6];
rz(2.8014366) q0[6];
cx q0[5],q0[6];
cx q0[6],q0[7];
rz(1.4543134) q0[7];
cx q0[6],q0[7];
cx q0[7],q0[8];
rz(0.50929738) q0[8];
cx q0[7],q0[8];
cx q0[8],q0[9];
rz(1.0449156) q0[9];
cx q0[8],q0[9];
cx q0[9],q0[10];
rz(3.0024155) q0[10];
cx q0[9],q0[10];
cx q0[10],q0[11];
rz(0.26402967) q0[11];
cx q0[10],q0[11];
cx q0[11],q0[12];
rz(0.87957374) q0[12];
cx q0[11],q0[12];
cx q0[12],q0[13];
rz(0.549999) q0[13];
cx q0[12],q0[13];
cx q0[13],q0[14];
rz(1.6950434) q0[14];
cx q0[13],q0[14];
cx q0[14],q0[15];
rz(2.6106748) q0[15];
cx q0[14],q0[15];
cx q0[15],q0[16];
rz(1.4256809) q0[16];
cx q0[15],q0[16];
cx q0[16],q0[17];
rz(1.2115705) q0[17];
cx q0[16],q0[17];
cx q0[17],q0[18];
rz(2.7430614) q0[18];
cx q0[17],q0[18];
cx q0[18],q0[19];
rz(0.13112555) q0[19];
cx q0[18],q0[19];
cx q0[19],q0[20];
rz(0.7974355) q0[20];
cx q0[19],q0[20];
cx q0[20],q0[21];
rz(2.4581262) q0[21];
cx q0[20],q0[21];
cx q0[21],q0[22];
rz(0.92839424) q0[22];
cx q0[21],q0[22];
cx q0[22],q0[23];
rz(0.32835547) q0[23];
cx q0[22],q0[23];
cx q0[23],q0[24];
rz(0.0185514) q0[24];
cx q0[23],q0[24];
cx q0[24],q0[25];
rz(1.5453776) q0[25];
cx q0[24],q0[25];
cx q0[25],q0[26];
rz(1.5447873) q0[26];
cx q0[25],q0[26];
cx q0[26],q0[27];
rz(1.0299718) q0[27];
cx q0[26],q0[27];
cx q0[27],q0[28];
rz(1.8225126) q0[28];
cx q0[27],q0[28];
cx q0[28],q0[29];
rz(2.6939831) q0[29];
cx q0[28],q0[29];
cx q0[29],q0[30];
rz(2.4556055) q0[30];
cx q0[29],q0[30];
cx q0[30],q0[31];
rz(1.4149013) q0[31];
cx q0[30],q0[31];
cx q0[31],q0[32];
rz(2.3690866) q0[32];
cx q0[31],q0[32];
cx q0[32],q0[33];
rz(1.8585358) q0[33];
cx q0[32],q0[33];
cx q0[33],q0[34];
rz(0.08780298) q0[34];
cx q0[33],q0[34];
cx q0[33],q0[34];
rz(1.8310293) q0[34];
cx q0[33],q0[34];
cx q0[32],q0[33];
rz(1.9611872) q0[33];
cx q0[32],q0[33];
cx q0[31],q0[32];
rz(2.9500447) q0[32];
cx q0[31],q0[32];
cx q0[30],q0[31];
rz(1.4413113) q0[31];
cx q0[30],q0[31];
cx q0[29],q0[30];
rz(1.0251052) q0[30];
cx q0[29],q0[30];
cx q0[28],q0[29];
rz(2.7438694) q0[29];
cx q0[28],q0[29];
cx q0[27],q0[28];
rz(0.092048333) q0[28];
cx q0[27],q0[28];
cx q0[26],q0[27];
rz(1.9229087) q0[27];
cx q0[26],q0[27];
cx q0[25],q0[26];
rz(1.8248365) q0[26];
cx q0[25],q0[26];
cx q0[24],q0[25];
rz(0.23729934) q0[25];
cx q0[24],q0[25];
cx q0[23],q0[24];
rz(1.0511897) q0[24];
cx q0[23],q0[24];
cx q0[22],q0[23];
rz(2.2565123) q0[23];
cx q0[22],q0[23];
cx q0[21],q0[22];
rz(0.062605674) q0[22];
cx q0[21],q0[22];
cx q0[20],q0[21];
rz(0.16311501) q0[21];
cx q0[20],q0[21];
cx q0[19],q0[20];
rz(2.7613362) q0[20];
cx q0[19],q0[20];
cx q0[18],q0[19];
rz(2.3173212) q0[19];
cx q0[18],q0[19];
cx q0[17],q0[18];
rz(2.8663499) q0[18];
cx q0[17],q0[18];
cx q0[16],q0[17];
rz(1.1116405) q0[17];
cx q0[16],q0[17];
cx q0[15],q0[16];
rz(0.93015089) q0[16];
cx q0[15],q0[16];
cx q0[14],q0[15];
rz(0.81262607) q0[15];
cx q0[14],q0[15];
cx q0[13],q0[14];
rz(1.8105201) q0[14];
cx q0[13],q0[14];
cx q0[12],q0[13];
rz(2.1384493) q0[13];
cx q0[12],q0[13];
cx q0[11],q0[12];
rz(1.5698759) q0[12];
cx q0[11],q0[12];
cx q0[10],q0[11];
rz(1.1475919) q0[11];
cx q0[10],q0[11];
cx q0[9],q0[10];
rz(1.9897459) q0[10];
cx q0[9],q0[10];
cx q0[8],q0[9];
rz(1.0886958) q0[9];
cx q0[8],q0[9];
cx q0[7],q0[8];
rz(1.0861844) q0[8];
cx q0[7],q0[8];
cx q0[6],q0[7];
rz(1.2957926) q0[7];
cx q0[6],q0[7];
cx q0[5],q0[6];
rz(1.390424) q0[6];
cx q0[5],q0[6];
cx q0[4],q0[5];
rz(1.1176447) q0[5];
cx q0[4],q0[5];
cx q0[3],q0[4];
rz(2.3941683) q0[4];
cx q0[3],q0[4];
cx q0[2],q0[3];
rz(0.98713904) q0[3];
cx q0[2],q0[3];
cx q0[1],q0[2];
rz(2.8052126) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(0.88435286) q0[1];
cx q0[0],q0[1];
rz(1.5098402) q0[0];
rz(0.30155911) q0[1];
rz(1.4519102) q0[2];
rz(0.13307716) q0[3];
rz(0.11814981) q0[4];
rz(1.8791093) q0[5];
rz(2.94085) q0[6];
rz(0.12467101) q0[7];
rz(0.94916025) q0[8];
rz(3.0059481) q0[9];
rz(1.0149452) q0[10];
rz(0.31597255) q0[11];
rz(0.60311222) q0[12];
rz(0.97999194) q0[13];
rz(0.58520306) q0[14];
rz(1.4121577) q0[15];
rz(1.7573288) q0[16];
rz(0.21217438) q0[17];
rz(1.0301379) q0[18];
rz(2.0241866) q0[19];
rz(0.66740554) q0[20];
rz(1.1227218) q0[21];
rz(2.7251948) q0[22];
rz(2.6651464) q0[23];
rz(0.54424441) q0[24];
rz(0.55159281) q0[25];
rz(2.0985174) q0[26];
rz(2.5241214) q0[27];
rz(1.8077262) q0[28];
rz(0.54702987) q0[29];
rz(2.4043851) q0[30];
rz(2.856807) q0[31];
rz(0.47012608) q0[32];
rz(3.0264263) q0[33];
rz(0.47144891) q0[34];
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
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6],q0[7],q0[8],q0[9],q0[10],q0[11],q0[12],q0[13],q0[14],q0[15],q0[16],q0[17],q0[18],q0[19],q0[20],q0[21],q0[22],q0[23],q0[24],q0[25],q0[26],q0[27],q0[28],q0[29],q0[30],q0[31],q0[32],q0[33],q0[34];
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