OPENQASM 2.0;
include "qelib1.inc";
qreg q[35];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
p(0.046202188000000) q[0];
p(1.996628300000000) q[1];
p(0.440894380000000) q[2];
p(1.525794500000000) q[3];
p(0.846079740000000) q[4];
p(2.802045900000000) q[5];
p(2.603589300000000) q[6];
p(1.465534900000000) q[7];
p(2.380707900000000) q[8];
p(1.436944500000000) q[9];
p(1.415016600000000) q[10];
p(3.069359400000000) q[11];
p(2.079135800000000) q[12];
p(2.884063700000000) q[13];
p(1.759375800000000) q[14];
p(1.314167500000000) q[15];
p(1.239585800000000) q[16];
p(2.961960700000000) q[17];
p(0.806165550000000) q[18];
p(1.858746100000000) q[19];
p(0.101885400000000) q[20];
p(1.952401700000000) q[21];
p(0.206072950000000) q[22];
p(1.034768300000000) q[23];
p(1.835671000000000) q[24];
p(1.040418300000000) q[25];
p(0.877814530000000) q[26];
p(1.535355900000000) q[27];
p(0.844333820000000) q[28];
p(1.157937800000000) q[29];
p(3.106456100000000) q[30];
p(0.349985710000000) q[31];
p(0.965362580000000) q[32];
p(1.790391700000000) q[33];
p(1.276879300000000) q[34];
cx q[0],q[1];
rz(1.459599700000000) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0.877956660000000) q[2];
cx q[1],q[2];
cx q[2],q[3];
rz(0.298068760000000) q[3];
cx q[2],q[3];
cx q[3],q[4];
rz(0.507571620000000) q[4];
cx q[3],q[4];
cx q[4],q[5];
rz(0.417414410000000) q[5];
cx q[4],q[5];
cx q[5],q[6];
rz(2.801436600000000) q[6];
cx q[5],q[6];
cx q[6],q[7];
rz(1.454313400000000) q[7];
cx q[6],q[7];
cx q[7],q[8];
rz(0.509297380000000) q[8];
cx q[7],q[8];
cx q[8],q[9];
rz(1.044915600000000) q[9];
cx q[8],q[9];
cx q[9],q[10];
rz(3.002415500000000) q[10];
cx q[9],q[10];
cx q[10],q[11];
rz(0.264029670000000) q[11];
cx q[10],q[11];
cx q[11],q[12];
rz(0.879573740000000) q[12];
cx q[11],q[12];
cx q[12],q[13];
rz(0.549999000000000) q[13];
cx q[12],q[13];
cx q[13],q[14];
rz(1.695043400000000) q[14];
cx q[13],q[14];
cx q[14],q[15];
rz(2.610674800000000) q[15];
cx q[14],q[15];
cx q[15],q[16];
rz(1.425680900000000) q[16];
cx q[15],q[16];
cx q[16],q[17];
rz(1.211570500000000) q[17];
cx q[16],q[17];
cx q[17],q[18];
rz(2.743061400000000) q[18];
cx q[17],q[18];
cx q[18],q[19];
rz(0.131125550000000) q[19];
cx q[18],q[19];
cx q[19],q[20];
rz(0.797435500000000) q[20];
cx q[19],q[20];
cx q[20],q[21];
rz(2.458126200000000) q[21];
cx q[20],q[21];
cx q[21],q[22];
rz(0.928394240000000) q[22];
cx q[21],q[22];
cx q[22],q[23];
rz(0.328355470000000) q[23];
cx q[22],q[23];
cx q[23],q[24];
rz(0.018551400000000) q[24];
cx q[23],q[24];
cx q[24],q[25];
rz(1.545377600000000) q[25];
cx q[24],q[25];
cx q[25],q[26];
rz(1.544787300000000) q[26];
cx q[25],q[26];
cx q[26],q[27];
rz(1.029971800000000) q[27];
cx q[26],q[27];
cx q[27],q[28];
rz(1.822512600000000) q[28];
cx q[27],q[28];
cx q[28],q[29];
rz(2.693983100000000) q[29];
cx q[28],q[29];
cx q[29],q[30];
rz(2.455605500000000) q[30];
cx q[29],q[30];
cx q[30],q[31];
rz(1.414901300000000) q[31];
cx q[30],q[31];
cx q[31],q[32];
rz(2.369086600000000) q[32];
cx q[31],q[32];
cx q[32],q[33];
rz(1.858535800000000) q[33];
cx q[32],q[33];
cx q[33],q[34];
rz(0.087802980000000) q[34];
cx q[33],q[34];
cx q[33],q[34];
rz(1.831029300000000) q[34];
cx q[33],q[34];
cx q[32],q[33];
rz(1.961187200000000) q[33];
cx q[32],q[33];
cx q[31],q[32];
rz(2.950044700000000) q[32];
cx q[31],q[32];
cx q[30],q[31];
rz(1.441311300000000) q[31];
cx q[30],q[31];
cx q[29],q[30];
rz(1.025105200000000) q[30];
cx q[29],q[30];
cx q[28],q[29];
rz(2.743869400000000) q[29];
cx q[28],q[29];
cx q[27],q[28];
rz(0.092048333000000) q[28];
cx q[27],q[28];
cx q[26],q[27];
rz(1.922908700000000) q[27];
cx q[26],q[27];
cx q[25],q[26];
rz(1.824836500000000) q[26];
cx q[25],q[26];
cx q[24],q[25];
rz(0.237299340000000) q[25];
cx q[24],q[25];
cx q[23],q[24];
rz(1.051189700000000) q[24];
cx q[23],q[24];
cx q[22],q[23];
rz(2.256512300000000) q[23];
cx q[22],q[23];
cx q[21],q[22];
rz(0.062605674000000) q[22];
cx q[21],q[22];
cx q[20],q[21];
rz(0.163115010000000) q[21];
cx q[20],q[21];
cx q[19],q[20];
rz(2.761336200000000) q[20];
cx q[19],q[20];
cx q[18],q[19];
rz(2.317321200000000) q[19];
cx q[18],q[19];
cx q[17],q[18];
rz(2.866349900000000) q[18];
cx q[17],q[18];
cx q[16],q[17];
rz(1.111640500000000) q[17];
cx q[16],q[17];
cx q[15],q[16];
rz(0.930150890000000) q[16];
cx q[15],q[16];
cx q[14],q[15];
rz(0.812626070000000) q[15];
cx q[14],q[15];
cx q[13],q[14];
rz(1.810520100000000) q[14];
cx q[13],q[14];
cx q[12],q[13];
rz(2.138449300000000) q[13];
cx q[12],q[13];
cx q[11],q[12];
rz(1.569875900000000) q[12];
cx q[11],q[12];
cx q[10],q[11];
rz(1.147591900000000) q[11];
cx q[10],q[11];
cx q[9],q[10];
rz(1.989745900000000) q[10];
cx q[9],q[10];
cx q[8],q[9];
rz(1.088695800000000) q[9];
cx q[8],q[9];
cx q[7],q[8];
rz(1.086184400000000) q[8];
cx q[7],q[8];
cx q[6],q[7];
rz(1.295792600000000) q[7];
cx q[6],q[7];
cx q[5],q[6];
rz(1.390424000000000) q[6];
cx q[5],q[6];
cx q[4],q[5];
rz(1.117644700000000) q[5];
cx q[4],q[5];
cx q[3],q[4];
rz(2.394168300000000) q[4];
cx q[3],q[4];
cx q[2],q[3];
rz(0.987139040000000) q[3];
cx q[2],q[3];
cx q[1],q[2];
rz(2.805212600000000) q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(0.884352860000000) q[1];
cx q[0],q[1];
rz(1.509840200000000) q[0];
rz(0.301559110000000) q[1];
rz(1.451910200000000) q[2];
rz(0.133077160000000) q[3];
rz(0.118149810000000) q[4];
rz(1.879109300000000) q[5];
rz(2.940850000000000) q[6];
rz(0.124671010000000) q[7];
rz(0.949160250000000) q[8];
rz(3.005948100000000) q[9];
rz(1.014945200000000) q[10];
rz(0.315972550000000) q[11];
rz(0.603112220000000) q[12];
rz(0.979991940000000) q[13];
rz(0.585203060000000) q[14];
rz(1.412157700000000) q[15];
rz(1.757328800000000) q[16];
rz(0.212174380000000) q[17];
rz(1.030137900000000) q[18];
rz(2.024186600000000) q[19];
rz(0.667405540000000) q[20];
rz(1.122721800000000) q[21];
rz(2.725194800000000) q[22];
rz(2.665146400000000) q[23];
rz(0.544244410000000) q[24];
rz(0.551592810000000) q[25];
rz(2.098517400000000) q[26];
rz(2.524121400000000) q[27];
rz(1.807726200000000) q[28];
rz(0.547029870000000) q[29];
rz(2.404385100000000) q[30];
rz(2.856807000000000) q[31];
rz(0.470126080000000) q[32];
rz(3.026426300000000) q[33];
rz(0.471448910000000) q[34];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
