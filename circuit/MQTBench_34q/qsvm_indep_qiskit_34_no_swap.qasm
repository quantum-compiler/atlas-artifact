OPENQASM 2.0;
include "qelib1.inc";
qreg q[34];
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
p(1.080369400000000) q[0];
p(2.530797300000000) q[1];
p(2.794461800000000) q[2];
p(0.384156090000000) q[3];
p(0.913853800000000) q[4];
p(0.925288640000000) q[5];
p(2.226997100000000) q[6];
p(1.006687200000000) q[7];
p(2.565943000000000) q[8];
p(2.175798100000000) q[9];
p(0.118681380000000) q[10];
p(2.657353000000000) q[11];
p(0.004233972100000) q[12];
p(0.345725170000000) q[13];
p(1.051566300000000) q[14];
p(1.026108600000000) q[15];
p(2.359308100000000) q[16];
p(2.334423400000000) q[17];
p(0.125025070000000) q[18];
p(0.777162940000000) q[19];
p(0.054358840000000) q[20];
p(2.274283600000000) q[21];
p(0.647545980000000) q[22];
p(0.601783030000000) q[23];
p(2.534412100000000) q[24];
p(0.602996810000000) q[25];
p(0.819069200000000) q[26];
p(2.583771700000000) q[27];
p(0.197961940000000) q[28];
p(0.390695110000000) q[29];
p(0.247461360000000) q[30];
p(0.990546660000000) q[31];
p(2.119843500000000) q[32];
p(0.176254820000000) q[33];
cx q[0],q[1];
rz(1.293269100000000) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0.152291060000000) q[2];
cx q[1],q[2];
cx q[2],q[3];
rz(0.946966500000000) q[3];
cx q[2],q[3];
cx q[3],q[4];
rz(2.484330100000000) q[4];
cx q[3],q[4];
cx q[4],q[5];
rz(1.725199600000000) q[5];
cx q[4],q[5];
cx q[5],q[6];
rz(2.223326300000000) q[6];
cx q[5],q[6];
cx q[6],q[7];
rz(2.897771600000000) q[7];
cx q[6],q[7];
cx q[7],q[8];
rz(2.712121200000000) q[8];
cx q[7],q[8];
cx q[8],q[9];
rz(0.257976630000000) q[9];
cx q[8],q[9];
cx q[9],q[10];
rz(0.432183480000000) q[10];
cx q[9],q[10];
cx q[10],q[11];
rz(0.189778070000000) q[11];
cx q[10],q[11];
cx q[11],q[12];
rz(0.512050370000000) q[12];
cx q[11],q[12];
cx q[12],q[13];
rz(0.793488540000000) q[13];
cx q[12],q[13];
cx q[13],q[14];
rz(0.960390100000000) q[14];
cx q[13],q[14];
cx q[14],q[15];
rz(2.071526500000000) q[15];
cx q[14],q[15];
cx q[15],q[16];
rz(0.738581970000000) q[16];
cx q[15],q[16];
cx q[16],q[17];
rz(2.890288800000000) q[17];
cx q[16],q[17];
cx q[17],q[18];
rz(0.755759060000000) q[18];
cx q[17],q[18];
cx q[18],q[19];
rz(1.038668300000000) q[19];
cx q[18],q[19];
cx q[19],q[20];
rz(2.272344000000000) q[20];
cx q[19],q[20];
cx q[20],q[21];
rz(1.150627700000000) q[21];
cx q[20],q[21];
cx q[21],q[22];
rz(2.253953700000000) q[22];
cx q[21],q[22];
cx q[22],q[23];
rz(0.724712370000000) q[23];
cx q[22],q[23];
cx q[23],q[24];
rz(2.579609300000000) q[24];
cx q[23],q[24];
cx q[24],q[25];
rz(2.259730500000000) q[25];
cx q[24],q[25];
cx q[25],q[26];
rz(0.906716410000000) q[26];
cx q[25],q[26];
cx q[26],q[27];
rz(1.492711000000000) q[27];
cx q[26],q[27];
cx q[27],q[28];
rz(0.655784610000000) q[28];
cx q[27],q[28];
cx q[28],q[29];
rz(0.150954170000000) q[29];
cx q[28],q[29];
cx q[29],q[30];
rz(0.437484210000000) q[30];
cx q[29],q[30];
cx q[30],q[31];
rz(1.210397700000000) q[31];
cx q[30],q[31];
cx q[31],q[32];
rz(1.436552900000000) q[32];
cx q[31],q[32];
cx q[32],q[33];
rz(1.842343000000000) q[33];
cx q[32],q[33];
cx q[32],q[33];
rz(2.535798100000000) q[33];
cx q[32],q[33];
cx q[31],q[32];
rz(2.688333100000000) q[32];
cx q[31],q[32];
cx q[30],q[31];
rz(2.749576900000000) q[31];
cx q[30],q[31];
cx q[29],q[30];
rz(0.742892190000000) q[30];
cx q[29],q[30];
cx q[28],q[29];
rz(1.083115000000000) q[29];
cx q[28],q[29];
cx q[27],q[28];
rz(2.080375600000000) q[28];
cx q[27],q[28];
cx q[26],q[27];
rz(0.992732000000000) q[27];
cx q[26],q[27];
cx q[25],q[26];
rz(0.737864370000000) q[26];
cx q[25],q[26];
cx q[24],q[25];
rz(1.232655300000000) q[25];
cx q[24],q[25];
cx q[23],q[24];
rz(1.019375800000000) q[24];
cx q[23],q[24];
cx q[22],q[23];
rz(2.366929400000000) q[23];
cx q[22],q[23];
cx q[21],q[22];
rz(0.442649860000000) q[22];
cx q[21],q[22];
cx q[20],q[21];
rz(0.739408840000000) q[21];
cx q[20],q[21];
cx q[19],q[20];
rz(0.844332340000000) q[20];
cx q[19],q[20];
cx q[18],q[19];
rz(0.220138990000000) q[19];
cx q[18],q[19];
cx q[17],q[18];
rz(0.268699100000000) q[18];
cx q[17],q[18];
cx q[16],q[17];
rz(2.496415200000000) q[17];
cx q[16],q[17];
cx q[15],q[16];
rz(1.517786800000000) q[16];
cx q[15],q[16];
cx q[14],q[15];
rz(2.892276200000000) q[15];
cx q[14],q[15];
cx q[13],q[14];
rz(0.043345581000000) q[14];
cx q[13],q[14];
cx q[12],q[13];
rz(0.874460850000000) q[13];
cx q[12],q[13];
cx q[11],q[12];
rz(2.416311700000000) q[12];
cx q[11],q[12];
cx q[10],q[11];
rz(1.730650100000000) q[11];
cx q[10],q[11];
cx q[9],q[10];
rz(0.697544320000000) q[10];
cx q[9],q[10];
cx q[8],q[9];
rz(2.410780800000000) q[9];
cx q[8],q[9];
cx q[7],q[8];
rz(0.806587320000000) q[8];
cx q[7],q[8];
cx q[6],q[7];
rz(1.251199400000000) q[7];
cx q[6],q[7];
cx q[5],q[6];
rz(2.973072900000000) q[6];
cx q[5],q[6];
cx q[4],q[5];
rz(2.631104100000000) q[5];
cx q[4],q[5];
cx q[3],q[4];
rz(2.940267000000000) q[4];
cx q[3],q[4];
cx q[2],q[3];
rz(0.977921120000000) q[3];
cx q[2],q[3];
cx q[1],q[2];
rz(2.896130200000000) q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(0.286742710000000) q[1];
cx q[0],q[1];
rz(0.151729350000000) q[0];
rz(1.522541900000000) q[1];
rz(1.398832800000000) q[2];
rz(1.634572600000000) q[3];
rz(2.868394700000000) q[4];
rz(1.444342700000000) q[5];
rz(2.111214000000000) q[6];
rz(0.362241040000000) q[7];
rz(0.998721550000000) q[8];
rz(1.930784300000000) q[9];
rz(2.532462300000000) q[10];
rz(1.288517400000000) q[11];
rz(2.878864200000000) q[12];
rz(0.216003830000000) q[13];
rz(0.228792560000000) q[14];
rz(0.270795170000000) q[15];
rz(0.146272430000000) q[16];
rz(0.860632700000000) q[17];
rz(2.119557700000000) q[18];
rz(3.092050100000000) q[19];
rz(3.075852400000000) q[20];
rz(0.536594240000000) q[21];
rz(2.529425100000000) q[22];
rz(1.492639500000000) q[23];
rz(0.146195690000000) q[24];
rz(1.319657100000000) q[25];
rz(3.136299800000000) q[26];
rz(1.567714800000000) q[27];
rz(0.175403970000000) q[28];
rz(2.945875900000000) q[29];
rz(0.660539130000000) q[30];
rz(1.966578100000000) q[31];
rz(1.036727600000000) q[32];
rz(0.247297850000000) q[33];
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
