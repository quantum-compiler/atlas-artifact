OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
u2(0,0) q[0];
u2(0,0) q[1];
h q[2];
u2(0,0) q[3];
h q[4];
u2(0,0) q[5];
u2(0,0) q[6];
h q[7];
u2(0,0) q[8];
u2(0,0) q[9];
h q[10];
u2(0,0) q[11];
u2(0,0) q[12];
h q[13];
h q[14];
u2(0,0) q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
u2(0,0) q[21];
h q[22];
h q[23];
u2(0,0) q[24];
u2(0,0) q[25];
h q[26];
h q[27];
u2(0,0) q[28];
h q[29];
h q[30];
u2(0,0) q[31];
h q[32];
h q[33];
h q[34];
u2(-3.141592653589793,-3.141592653589793) q[35];
cx q[0],q[35];
u2(-3.141592653589793,-3.141592653589793) q[0];
cx q[1],q[35];
u2(-3.141592653589793,-3.141592653589793) q[1];
cx q[2],q[35];
h q[2];
cx q[3],q[35];
u2(-3.141592653589793,-3.141592653589793) q[3];
cx q[4],q[35];
h q[4];
cx q[5],q[35];
u2(-3.141592653589793,-3.141592653589793) q[5];
cx q[6],q[35];
u2(-3.141592653589793,-3.141592653589793) q[6];
cx q[7],q[35];
h q[7];
cx q[8],q[35];
u2(-3.141592653589793,-3.141592653589793) q[8];
cx q[9],q[35];
u2(-3.141592653589793,-3.141592653589793) q[9];
cx q[10],q[35];
h q[10];
cx q[11],q[35];
u2(-3.141592653589793,-3.141592653589793) q[11];
cx q[12],q[35];
u2(-3.141592653589793,-3.141592653589793) q[12];
cx q[13],q[35];
h q[13];
cx q[14],q[35];
h q[14];
cx q[15],q[35];
u2(-3.141592653589793,-3.141592653589793) q[15];
cx q[16],q[35];
h q[16];
cx q[17],q[35];
h q[17];
cx q[18],q[35];
h q[18];
cx q[19],q[35];
h q[19];
cx q[20],q[35];
h q[20];
cx q[21],q[35];
u2(-3.141592653589793,-3.141592653589793) q[21];
cx q[22],q[35];
h q[22];
cx q[23],q[35];
h q[23];
cx q[24],q[35];
u2(-3.141592653589793,-3.141592653589793) q[24];
cx q[25],q[35];
u2(-3.141592653589793,-3.141592653589793) q[25];
cx q[26],q[35];
h q[26];
cx q[27],q[35];
h q[27];
cx q[28],q[35];
u2(-3.141592653589793,-3.141592653589793) q[28];
cx q[29],q[35];
h q[29];
cx q[30],q[35];
h q[30];
cx q[31],q[35];
u2(-3.141592653589793,-3.141592653589793) q[31];
cx q[32],q[35];
h q[32];
cx q[33],q[35];
h q[33];
cx q[34],q[35];
h q[34];
