OPENQASM 2.0;
include "qelib1.inc";
qreg q[42];
u2(0,-3.141592653589793) q[0];
u2(0,-3.141592653589793) q[1];
u2(0,-3.141592653589793) q[2];
u2(0,-3.141592653589793) q[3];
u2(0,-3.141592653589793) q[4];
u2(0,-3.141592653589793) q[5];
u2(0,-3.141592653589793) q[6];
u2(0,-3.141592653589793) q[7];
u2(0,-3.141592653589793) q[8];
u2(0,-3.141592653589793) q[9];
u2(0,-3.141592653589793) q[10];
u2(0,-3.141592653589793) q[11];
u2(0,-3.141592653589793) q[12];
u2(0,-3.141592653589793) q[13];
u2(0,-3.141592653589793) q[14];
u2(0,-3.141592653589793) q[15];
u2(0,-3.141592653589793) q[16];
u2(0,-3.141592653589793) q[17];
u2(0,-3.141592653589793) q[18];
u2(0,-3.141592653589793) q[19];
u2(0,-3.141592653589793) q[20];
u2(0,-3.141592653589793) q[21];
u2(0,-3.141592653589793) q[22];
u2(0,-3.141592653589793) q[23];
u2(0,-3.141592653589793) q[24];
u2(0,-3.141592653589793) q[25];
u2(0,-3.141592653589793) q[26];
u2(0,-3.141592653589793) q[27];
u2(0,-3.141592653589793) q[28];
u2(0,-3.141592653589793) q[29];
u2(0,-3.141592653589793) q[30];
u2(0,-3.141592653589793) q[31];
u2(0,-3.141592653589793) q[32];
u2(0,-3.141592653589793) q[33];
u2(0,-3.141592653589793) q[34];
u2(0,-3.141592653589793) q[35];
u2(0,-3.141592653589793) q[36];
u2(0,-3.141592653589793) q[37];
u2(0,-3.141592653589793) q[38];
u2(0,-3.141592653589793) q[39];
u2(0,-3.141592653589793) q[40];
u3(0.927295220000000,0,0) q[41];
cx q[0],q[41];
u3(-0.927295220000000,0,0) q[41];
cx q[0],q[41];
u3(0.927295220000000,0,0) q[41];
cx q[1],q[41];
u3(-1.854590400000000,0,0) q[41];
cx q[1],q[41];
u3(1.854590400000000,0,0) q[41];
cx q[2],q[41];
u3(-3.709180900000000,0,0) q[41];
cx q[2],q[41];
u3(2.574004400000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[3],q[41];
u3(-7.418361700000000,0,0) q[41];
cx q[3],q[41];
u3(1.135176400000000,0,0) q[41];
cx q[4],q[41];
u3(-14.836722999999999,0,0) q[41];
cx q[4],q[41];
u3(2.270352900000000,0,0) q[41];
cx q[5],q[41];
u3(-29.673446999999999,0,0) q[41];
cx q[5],q[41];
u3(1.742479600000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[6],q[41];
u3(-59.346893999999999,0,0) q[41];
cx q[6],q[41];
u3(2.798226200000000,0,0) q[41];
cx q[7],q[41];
u3(-118.693790000000007,0,0) q[41];
cx q[7],q[41];
u3(0.686732930000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[8],q[41];
u3(-237.387580000000014,0,0) q[41];
cx q[8],q[41];
u3(1.373465900000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[9],q[41];
u3(-474.775149999999996,0,0) q[41];
cx q[9],q[41];
u3(2.746931700000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[10],q[41];
u3(-949.550299999999993,0,0) q[41];
cx q[10],q[41];
u3(0.789321850000000,0,0) q[41];
cx q[11],q[41];
u3(-1899.100599999999986,0,0) q[41];
cx q[11],q[41];
u3(1.578643700000000,0,0) q[41];
cx q[12],q[41];
u3(-3798.201199999999972,0,0) q[41];
cx q[12],q[41];
u3(3.125897900000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[13],q[41];
u3(-7596.402399999999943,0,0) q[41];
cx q[13],q[41];
u3(0.031389489000000,0,0) q[41];
cx q[14],q[41];
u3(-15192.805000000000291,0,0) q[41];
cx q[14],q[41];
u3(0.062778978000000,0,0) q[41];
cx q[15],q[41];
u3(-30385.610000000000582,0,0) q[41];
cx q[15],q[41];
u3(0.125557960000000,0,0) q[41];
cx q[16],q[41];
u3(-60771.218999999997322,0,0) q[41];
cx q[16],q[41];
u3(0.251115910000000,0,0) q[41];
cx q[17],q[41];
u3(-121542.440000000002328,0,0) q[41];
cx q[17],q[41];
u3(0.502231830000000,0,0) q[41];
cx q[18],q[41];
u3(-243084.880000000004657,0,0) q[41];
cx q[18],q[41];
u3(1.004463700000000,0,0) q[41];
cx q[19],q[41];
u3(-486169.760000000009313,0,0) q[41];
cx q[19],q[41];
u3(2.008927300000000,0,0) q[41];
cx q[20],q[41];
u3(-972339.510000000009313,0,0) q[41];
cx q[20],q[41];
u3(2.265330700000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[21],q[41];
u3(-1944679.000000000000000,0,0) q[41];
cx q[21],q[41];
u3(1.752523900000000,0,0) q[41];
cx q[22],q[41];
u3(-3889358.000000000000000,0,0) q[41];
cx q[22],q[41];
u3(2.778137500000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[23],q[41];
u3(-7778716.099999999627471,0,0) q[41];
cx q[23],q[41];
u3(0.726910290000000,0,0) q[41];
cx q[24],q[41];
u3(-15557432.000000000000000,0,0) q[41];
cx q[24],q[41];
u3(1.453820600000000,0,0) q[41];
cx q[25],q[41];
u3(-31114864.000000000000000,0,0) q[41];
cx q[25],q[41];
u3(2.907641200000000,0,0) q[41];
cx q[26],q[41];
u3(-62229729.000000000000000,0,0) q[41];
cx q[26],q[41];
u3(0.467902990000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[27],q[41];
u3(-124459460.000000000000000,0,0) q[41];
cx q[27],q[41];
u3(0.935805990000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[28],q[41];
u3(-248918910.000000000000000,0,0) q[41];
cx q[28],q[41];
u3(1.871612000000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[29],q[41];
u3(-497837830.000000000000000,0,0) q[41];
cx q[29],q[41];
u3(2.539961400000000,0,0) q[41];
cx q[30],q[41];
u3(-995675660.000000000000000,0,0) q[41];
cx q[30],q[41];
u3(1.203262600000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[31],q[41];
u3(-1991351300.000000000000000,0,0) q[41];
cx q[31],q[41];
u3(2.406525200000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[32],q[41];
u3(-3982702600.000000000000000,0,0) q[41];
cx q[32],q[41];
u3(1.470134900000000,0,0) q[41];
cx q[33],q[41];
u3(-7965405300.000000000000000,0,0) q[41];
cx q[33],q[41];
u3(2.940269900000000,0,0) q[41];
cx q[34],q[41];
u3(-15930811000.000000000000000,0,0) q[41];
cx q[34],q[41];
u3(0.402645570000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[35],q[41];
u3(-31861621000.000000000000000,0,0) q[41];
cx q[35],q[41];
u3(0.805291140000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[36],q[41];
u3(-63723242000.000000000000000,0,0) q[41];
cx q[36],q[41];
u3(1.610582300000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[37],q[41];
u3(-127446480000.000000000000000,0,0) q[41];
cx q[37],q[41];
u3(3.062020700000000,0,0) q[41];
cx q[38],q[41];
u3(-254892970000.000000000000000,0,0) q[41];
cx q[38],q[41];
u3(0.159143820000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[39],q[41];
u3(-509785940000.000000000000000,0,0) q[41];
cx q[39],q[41];
u3(0.318287640000000,-3.141592653589793,-3.141592653589793) q[41];
cx q[40],q[41];
u3(-1019571900000.000000000000000,0,0) q[41];
cx q[40],q[41];
u3(1019571900000.000000000000000,0,0) q[41];
h q[40];
cp(-1.570796326794897) q[39],q[40];
cp(-0.785398163397448) q[38],q[40];
cp(-0.392699081698724) q[37],q[40];
cp(-0.196349540849362) q[36],q[40];
cp(-0.098174770424681) q[35],q[40];
cp(-0.049087385212341) q[34],q[40];
cp(-0.024543692606170) q[33],q[40];
cp(-0.012271846303085) q[32],q[40];
cp(-0.006135923151543) q[31],q[40];
cp(-0.003067961575771) q[30],q[40];
cp(-0.001533980787886) q[29],q[40];
cp(-0.000766990393943) q[28],q[40];
cp(-0.000383495196971) q[27],q[40];
cp(-0.000191747598486) q[26],q[40];
cp(-0.000095873799243) q[25],q[40];
cp(-0.000047936899621) q[24],q[40];
cp(-0.000023968449811) q[23],q[40];
cp(-0.000011984224905) q[22],q[40];
cp(-0.000005992112453) q[21],q[40];
cp(-0.000002996056226) q[20],q[40];
cp(-0.000001498028113) q[19],q[40];
cp(-0.000000749014057) q[18],q[40];
cp(-0.000000374507028) q[17],q[40];
cp(-0.000000187253514) q[16],q[40];
cp(-0.000000093626757) q[15],q[40];
cp(-0.000000046813379) q[14],q[40];
cp(-0.000000023406689) q[13],q[40];
cp(-0.000000011703345) q[12],q[40];
cp(-0.000000005851672) q[11],q[40];
cp(-0.000000002925836) q[10],q[40];
h q[39];
cp(-1.570796326794897) q[38],q[39];
cp(-0.785398163397448) q[37],q[39];
cp(-0.392699081698724) q[36],q[39];
cp(-0.196349540849362) q[35],q[39];
cp(-0.098174770424681) q[34],q[39];
cp(-0.049087385212341) q[33],q[39];
cp(-0.024543692606170) q[32],q[39];
cp(-0.012271846303085) q[31],q[39];
cp(-0.006135923151543) q[30],q[39];
cp(-0.003067961575771) q[29],q[39];
cp(-0.001533980787886) q[28],q[39];
cp(-0.000766990393943) q[27],q[39];
cp(-0.000383495196971) q[26],q[39];
cp(-0.000191747598486) q[25],q[39];
cp(-0.000095873799243) q[24],q[39];
cp(-0.000047936899621) q[23],q[39];
cp(-0.000023968449811) q[22],q[39];
cp(-0.000011984224905) q[21],q[39];
cp(-0.000005992112453) q[20],q[39];
cp(-0.000002996056226) q[19],q[39];
cp(-0.000001498028113) q[18],q[39];
cp(-0.000000749014057) q[17],q[39];
cp(-0.000000374507028) q[16],q[39];
cp(-0.000000187253514) q[15],q[39];
cp(-0.000000093626757) q[14],q[39];
cp(-0.000000046813379) q[13],q[39];
cp(-0.000000023406689) q[12],q[39];
cp(-0.000000011703345) q[11],q[39];
cp(-0.000000005851672) q[10],q[39];
h q[38];
cp(-1.570796326794897) q[37],q[38];
cp(-0.785398163397448) q[36],q[38];
cp(-0.392699081698724) q[35],q[38];
cp(-0.196349540849362) q[34],q[38];
cp(-0.098174770424681) q[33],q[38];
cp(-0.049087385212341) q[32],q[38];
cp(-0.024543692606170) q[31],q[38];
cp(-0.012271846303085) q[30],q[38];
cp(-0.006135923151543) q[29],q[38];
cp(-0.003067961575771) q[28],q[38];
cp(-0.001533980787886) q[27],q[38];
cp(-0.000766990393943) q[26],q[38];
cp(-0.000383495196971) q[25],q[38];
cp(-0.000191747598486) q[24],q[38];
cp(-0.000095873799243) q[23],q[38];
cp(-0.000047936899621) q[22],q[38];
cp(-0.000023968449811) q[21],q[38];
cp(-0.000011984224905) q[20],q[38];
cp(-0.000005992112453) q[19],q[38];
cp(-0.000002996056226) q[18],q[38];
cp(-0.000001498028113) q[17],q[38];
cp(-0.000000749014057) q[16],q[38];
cp(-0.000000374507028) q[15],q[38];
cp(-0.000000187253514) q[14],q[38];
cp(-0.000000093626757) q[13],q[38];
cp(-0.000000046813379) q[12],q[38];
cp(-0.000000023406689) q[11],q[38];
cp(-0.000000011703345) q[10],q[38];
h q[37];
cp(-1.570796326794897) q[36],q[37];
cp(-0.785398163397448) q[35],q[37];
cp(-0.392699081698724) q[34],q[37];
cp(-0.196349540849362) q[33],q[37];
cp(-0.098174770424681) q[32],q[37];
cp(-0.049087385212341) q[31],q[37];
cp(-0.024543692606170) q[30],q[37];
cp(-0.012271846303085) q[29],q[37];
cp(-0.006135923151543) q[28],q[37];
cp(-0.003067961575771) q[27],q[37];
cp(-0.001533980787886) q[26],q[37];
cp(-0.000766990393943) q[25],q[37];
cp(-0.000383495196971) q[24],q[37];
cp(-0.000191747598486) q[23],q[37];
cp(-0.000095873799243) q[22],q[37];
cp(-0.000047936899621) q[21],q[37];
cp(-0.000023968449811) q[20],q[37];
cp(-0.000011984224905) q[19],q[37];
cp(-0.000005992112453) q[18],q[37];
cp(-0.000002996056226) q[17],q[37];
cp(-0.000001498028113) q[16],q[37];
cp(-0.000000749014057) q[15],q[37];
cp(-0.000000374507028) q[14],q[37];
cp(-0.000000187253514) q[13],q[37];
cp(-0.000000093626757) q[12],q[37];
cp(-0.000000046813379) q[11],q[37];
cp(-0.000000023406689) q[10],q[37];
h q[36];
cp(-1.570796326794897) q[35],q[36];
cp(-0.785398163397448) q[34],q[36];
cp(-0.392699081698724) q[33],q[36];
cp(-0.196349540849362) q[32],q[36];
cp(-0.098174770424681) q[31],q[36];
cp(-0.049087385212341) q[30],q[36];
cp(-0.024543692606170) q[29],q[36];
cp(-0.012271846303085) q[28],q[36];
cp(-0.006135923151543) q[27],q[36];
cp(-0.003067961575771) q[26],q[36];
cp(-0.001533980787886) q[25],q[36];
cp(-0.000766990393943) q[24],q[36];
cp(-0.000383495196971) q[23],q[36];
cp(-0.000191747598486) q[22],q[36];
cp(-0.000095873799243) q[21],q[36];
cp(-0.000047936899621) q[20],q[36];
cp(-0.000023968449811) q[19],q[36];
cp(-0.000011984224905) q[18],q[36];
cp(-0.000005992112453) q[17],q[36];
cp(-0.000002996056226) q[16],q[36];
cp(-0.000001498028113) q[15],q[36];
cp(-0.000000749014057) q[14],q[36];
cp(-0.000000374507028) q[13],q[36];
cp(-0.000000187253514) q[12],q[36];
cp(-0.000000093626757) q[11],q[36];
cp(-0.000000046813379) q[10],q[36];
h q[35];
cp(-1.570796326794897) q[34],q[35];
cp(-0.785398163397448) q[33],q[35];
cp(-0.392699081698724) q[32],q[35];
cp(-0.196349540849362) q[31],q[35];
cp(-0.098174770424681) q[30],q[35];
cp(-0.049087385212341) q[29],q[35];
cp(-0.024543692606170) q[28],q[35];
cp(-0.012271846303085) q[27],q[35];
cp(-0.006135923151543) q[26],q[35];
cp(-0.003067961575771) q[25],q[35];
cp(-0.001533980787886) q[24],q[35];
cp(-0.000766990393943) q[23],q[35];
cp(-0.000383495196971) q[22],q[35];
cp(-0.000191747598486) q[21],q[35];
cp(-0.000095873799243) q[20],q[35];
cp(-0.000047936899621) q[19],q[35];
cp(-0.000023968449811) q[18],q[35];
cp(-0.000011984224905) q[17],q[35];
cp(-0.000005992112453) q[16],q[35];
cp(-0.000002996056226) q[15],q[35];
cp(-0.000001498028113) q[14],q[35];
cp(-0.000000749014057) q[13],q[35];
cp(-0.000000374507028) q[12],q[35];
cp(-0.000000187253514) q[11],q[35];
cp(-0.000000093626757) q[10],q[35];
h q[34];
cp(-1.570796326794897) q[33],q[34];
cp(-0.785398163397448) q[32],q[34];
cp(-0.392699081698724) q[31],q[34];
cp(-0.196349540849362) q[30],q[34];
cp(-0.098174770424681) q[29],q[34];
cp(-0.049087385212341) q[28],q[34];
cp(-0.024543692606170) q[27],q[34];
cp(-0.012271846303085) q[26],q[34];
cp(-0.006135923151543) q[25],q[34];
cp(-0.003067961575771) q[24],q[34];
cp(-0.001533980787886) q[23],q[34];
cp(-0.000766990393943) q[22],q[34];
cp(-0.000383495196971) q[21],q[34];
cp(-0.000191747598486) q[20],q[34];
cp(-0.000095873799243) q[19],q[34];
cp(-0.000047936899621) q[18],q[34];
cp(-0.000023968449811) q[17],q[34];
cp(-0.000011984224905) q[16],q[34];
cp(-0.000005992112453) q[15],q[34];
cp(-0.000002996056226) q[14],q[34];
cp(-0.000001498028113) q[13],q[34];
cp(-0.000000749014057) q[12],q[34];
cp(-0.000000374507028) q[11],q[34];
cp(-0.000000187253514) q[10],q[34];
h q[33];
cp(-1.570796326794897) q[32],q[33];
cp(-0.785398163397448) q[31],q[33];
cp(-0.392699081698724) q[30],q[33];
cp(-0.196349540849362) q[29],q[33];
cp(-0.098174770424681) q[28],q[33];
cp(-0.049087385212341) q[27],q[33];
cp(-0.024543692606170) q[26],q[33];
cp(-0.012271846303085) q[25],q[33];
cp(-0.006135923151543) q[24],q[33];
cp(-0.003067961575771) q[23],q[33];
cp(-0.001533980787886) q[22],q[33];
cp(-0.000766990393943) q[21],q[33];
cp(-0.000383495196971) q[20],q[33];
cp(-0.000191747598486) q[19],q[33];
cp(-0.000095873799243) q[18],q[33];
cp(-0.000047936899621) q[17],q[33];
cp(-0.000023968449811) q[16],q[33];
cp(-0.000011984224905) q[15],q[33];
cp(-0.000005992112453) q[14],q[33];
cp(-0.000002996056226) q[13],q[33];
cp(-0.000001498028113) q[12],q[33];
cp(-0.000000749014057) q[11],q[33];
cp(-0.000000374507028) q[10],q[33];
h q[32];
cp(-1.570796326794897) q[31],q[32];
cp(-0.785398163397448) q[30],q[32];
cp(-0.392699081698724) q[29],q[32];
cp(-0.196349540849362) q[28],q[32];
cp(-0.098174770424681) q[27],q[32];
cp(-0.049087385212341) q[26],q[32];
cp(-0.024543692606170) q[25],q[32];
cp(-0.012271846303085) q[24],q[32];
cp(-0.006135923151543) q[23],q[32];
cp(-0.003067961575771) q[22],q[32];
cp(-0.001533980787886) q[21],q[32];
cp(-0.000766990393943) q[20],q[32];
cp(-0.000383495196971) q[19],q[32];
cp(-0.000191747598486) q[18],q[32];
cp(-0.000095873799243) q[17],q[32];
cp(-0.000047936899621) q[16],q[32];
cp(-0.000023968449811) q[15],q[32];
cp(-0.000011984224905) q[14],q[32];
cp(-0.000005992112453) q[13],q[32];
cp(-0.000002996056226) q[12],q[32];
cp(-0.000001498028113) q[11],q[32];
cp(-0.000000749014057) q[10],q[32];
h q[31];
cp(-1.570796326794897) q[30],q[31];
cp(-0.785398163397448) q[29],q[31];
cp(-0.392699081698724) q[28],q[31];
cp(-0.196349540849362) q[27],q[31];
cp(-0.098174770424681) q[26],q[31];
cp(-0.049087385212341) q[25],q[31];
cp(-0.024543692606170) q[24],q[31];
cp(-0.012271846303085) q[23],q[31];
cp(-0.006135923151543) q[22],q[31];
cp(-0.003067961575771) q[21],q[31];
cp(-0.001533980787886) q[20],q[31];
cp(-0.000766990393943) q[19],q[31];
cp(-0.000383495196971) q[18],q[31];
cp(-0.000191747598486) q[17],q[31];
cp(-0.000095873799243) q[16],q[31];
cp(-0.000047936899621) q[15],q[31];
cp(-0.000023968449811) q[14],q[31];
cp(-0.000011984224905) q[13],q[31];
cp(-0.000005992112453) q[12],q[31];
cp(-0.000002996056226) q[11],q[31];
cp(-0.000001498028113) q[10],q[31];
h q[30];
cp(-1.570796326794897) q[29],q[30];
cp(-0.785398163397448) q[28],q[30];
cp(-0.392699081698724) q[27],q[30];
cp(-0.196349540849362) q[26],q[30];
cp(-0.098174770424681) q[25],q[30];
cp(-0.049087385212341) q[24],q[30];
cp(-0.024543692606170) q[23],q[30];
cp(-0.012271846303085) q[22],q[30];
cp(-0.006135923151543) q[21],q[30];
cp(-0.003067961575771) q[20],q[30];
cp(-0.001533980787886) q[19],q[30];
cp(-0.000766990393943) q[18],q[30];
cp(-0.000383495196971) q[17],q[30];
cp(-0.000191747598486) q[16],q[30];
cp(-0.000095873799243) q[15],q[30];
cp(-0.000047936899621) q[14],q[30];
cp(-0.000023968449811) q[13],q[30];
cp(-0.000011984224905) q[12],q[30];
cp(-0.000005992112453) q[11],q[30];
cp(-0.000002996056226) q[10],q[30];
h q[29];
cp(-1.570796326794897) q[28],q[29];
cp(-0.785398163397448) q[27],q[29];
cp(-0.392699081698724) q[26],q[29];
cp(-0.196349540849362) q[25],q[29];
cp(-0.098174770424681) q[24],q[29];
cp(-0.049087385212341) q[23],q[29];
cp(-0.024543692606170) q[22],q[29];
cp(-0.012271846303085) q[21],q[29];
cp(-0.006135923151543) q[20],q[29];
cp(-0.003067961575771) q[19],q[29];
cp(-0.001533980787886) q[18],q[29];
cp(-0.000766990393943) q[17],q[29];
cp(-0.000383495196971) q[16],q[29];
cp(-0.000191747598486) q[15],q[29];
cp(-0.000095873799243) q[14],q[29];
cp(-0.000047936899621) q[13],q[29];
cp(-0.000023968449811) q[12],q[29];
cp(-0.000011984224905) q[11],q[29];
cp(-0.000005992112453) q[10],q[29];
h q[28];
cp(-1.570796326794897) q[27],q[28];
cp(-0.785398163397448) q[26],q[28];
cp(-0.392699081698724) q[25],q[28];
cp(-0.196349540849362) q[24],q[28];
cp(-0.098174770424681) q[23],q[28];
cp(-0.049087385212341) q[22],q[28];
cp(-0.024543692606170) q[21],q[28];
cp(-0.012271846303085) q[20],q[28];
cp(-0.006135923151543) q[19],q[28];
cp(-0.003067961575771) q[18],q[28];
cp(-0.001533980787886) q[17],q[28];
cp(-0.000766990393943) q[16],q[28];
cp(-0.000383495196971) q[15],q[28];
cp(-0.000191747598486) q[14],q[28];
cp(-0.000095873799243) q[13],q[28];
cp(-0.000047936899621) q[12],q[28];
cp(-0.000023968449811) q[11],q[28];
cp(-0.000011984224905) q[10],q[28];
h q[27];
cp(-1.570796326794897) q[26],q[27];
cp(-0.785398163397448) q[25],q[27];
cp(-0.392699081698724) q[24],q[27];
cp(-0.196349540849362) q[23],q[27];
cp(-0.098174770424681) q[22],q[27];
cp(-0.049087385212341) q[21],q[27];
cp(-0.024543692606170) q[20],q[27];
cp(-0.012271846303085) q[19],q[27];
cp(-0.006135923151543) q[18],q[27];
cp(-0.003067961575771) q[17],q[27];
cp(-0.001533980787886) q[16],q[27];
cp(-0.000766990393943) q[15],q[27];
cp(-0.000383495196971) q[14],q[27];
cp(-0.000191747598486) q[13],q[27];
cp(-0.000095873799243) q[12],q[27];
cp(-0.000047936899621) q[11],q[27];
cp(-0.000023968449811) q[10],q[27];
h q[26];
cp(-1.570796326794897) q[25],q[26];
cp(-0.785398163397448) q[24],q[26];
cp(-0.392699081698724) q[23],q[26];
cp(-0.196349540849362) q[22],q[26];
cp(-0.098174770424681) q[21],q[26];
cp(-0.049087385212341) q[20],q[26];
cp(-0.024543692606170) q[19],q[26];
cp(-0.012271846303085) q[18],q[26];
cp(-0.006135923151543) q[17],q[26];
cp(-0.003067961575771) q[16],q[26];
cp(-0.001533980787886) q[15],q[26];
cp(-0.000766990393943) q[14],q[26];
cp(-0.000383495196971) q[13],q[26];
cp(-0.000191747598486) q[12],q[26];
cp(-0.000095873799243) q[11],q[26];
cp(-0.000047936899621) q[10],q[26];
h q[25];
cp(-1.570796326794897) q[24],q[25];
cp(-0.785398163397448) q[23],q[25];
cp(-0.392699081698724) q[22],q[25];
cp(-0.196349540849362) q[21],q[25];
cp(-0.098174770424681) q[20],q[25];
cp(-0.049087385212341) q[19],q[25];
cp(-0.024543692606170) q[18],q[25];
cp(-0.012271846303085) q[17],q[25];
cp(-0.006135923151543) q[16],q[25];
cp(-0.003067961575771) q[15],q[25];
cp(-0.001533980787886) q[14],q[25];
cp(-0.000766990393943) q[13],q[25];
cp(-0.000383495196971) q[12],q[25];
cp(-0.000191747598486) q[11],q[25];
cp(-0.000095873799243) q[10],q[25];
h q[24];
cp(-1.570796326794897) q[23],q[24];
cp(-0.785398163397448) q[22],q[24];
cp(-0.392699081698724) q[21],q[24];
cp(-0.196349540849362) q[20],q[24];
cp(-0.098174770424681) q[19],q[24];
cp(-0.049087385212341) q[18],q[24];
cp(-0.024543692606170) q[17],q[24];
cp(-0.012271846303085) q[16],q[24];
cp(-0.006135923151543) q[15],q[24];
cp(-0.003067961575771) q[14],q[24];
cp(-0.001533980787886) q[13],q[24];
cp(-0.000766990393943) q[12],q[24];
cp(-0.000383495196971) q[11],q[24];
cp(-0.000191747598486) q[10],q[24];
h q[23];
cp(-1.570796326794897) q[22],q[23];
cp(-0.785398163397448) q[21],q[23];
cp(-0.392699081698724) q[20],q[23];
cp(-0.196349540849362) q[19],q[23];
cp(-0.098174770424681) q[18],q[23];
cp(-0.049087385212341) q[17],q[23];
cp(-0.024543692606170) q[16],q[23];
cp(-0.012271846303085) q[15],q[23];
cp(-0.006135923151543) q[14],q[23];
cp(-0.003067961575771) q[13],q[23];
cp(-0.001533980787886) q[12],q[23];
cp(-0.000766990393943) q[11],q[23];
cp(-0.000383495196971) q[10],q[23];
h q[22];
cp(-1.570796326794897) q[21],q[22];
cp(-0.785398163397448) q[20],q[22];
cp(-0.392699081698724) q[19],q[22];
cp(-0.196349540849362) q[18],q[22];
cp(-0.098174770424681) q[17],q[22];
cp(-0.049087385212341) q[16],q[22];
cp(-0.024543692606170) q[15],q[22];
cp(-0.012271846303085) q[14],q[22];
cp(-0.006135923151543) q[13],q[22];
cp(-0.003067961575771) q[12],q[22];
cp(-0.001533980787886) q[11],q[22];
cp(-0.000766990393943) q[10],q[22];
h q[21];
cp(-1.570796326794897) q[20],q[21];
cp(-0.785398163397448) q[19],q[21];
cp(-0.392699081698724) q[18],q[21];
cp(-0.196349540849362) q[17],q[21];
cp(-0.098174770424681) q[16],q[21];
cp(-0.049087385212341) q[15],q[21];
cp(-0.024543692606170) q[14],q[21];
cp(-0.012271846303085) q[13],q[21];
cp(-0.006135923151543) q[12],q[21];
cp(-0.003067961575771) q[11],q[21];
cp(-0.001533980787886) q[10],q[21];
h q[20];
cp(-1.570796326794897) q[19],q[20];
cp(-0.785398163397448) q[18],q[20];
cp(-0.392699081698724) q[17],q[20];
cp(-0.196349540849362) q[16],q[20];
cp(-0.098174770424681) q[15],q[20];
cp(-0.049087385212341) q[14],q[20];
cp(-0.024543692606170) q[13],q[20];
cp(-0.012271846303085) q[12],q[20];
cp(-0.006135923151543) q[11],q[20];
cp(-0.003067961575771) q[10],q[20];
h q[19];
cp(-1.570796326794897) q[18],q[19];
cp(-0.785398163397448) q[17],q[19];
cp(-0.392699081698724) q[16],q[19];
cp(-0.196349540849362) q[15],q[19];
cp(-0.098174770424681) q[14],q[19];
cp(-0.049087385212341) q[13],q[19];
cp(-0.024543692606170) q[12],q[19];
cp(-0.012271846303085) q[11],q[19];
cp(-0.006135923151543) q[10],q[19];
h q[18];
cp(-1.570796326794897) q[17],q[18];
cp(-0.785398163397448) q[16],q[18];
cp(-0.392699081698724) q[15],q[18];
cp(-0.196349540849362) q[14],q[18];
cp(-0.098174770424681) q[13],q[18];
cp(-0.049087385212341) q[12],q[18];
cp(-0.024543692606170) q[11],q[18];
cp(-0.012271846303085) q[10],q[18];
h q[17];
cp(-1.570796326794897) q[16],q[17];
cp(-0.785398163397448) q[15],q[17];
cp(-0.392699081698724) q[14],q[17];
cp(-0.196349540849362) q[13],q[17];
cp(-0.098174770424681) q[12],q[17];
cp(-0.049087385212341) q[11],q[17];
cp(-0.024543692606170) q[10],q[17];
h q[16];
cp(-1.570796326794897) q[15],q[16];
cp(-0.785398163397448) q[14],q[16];
cp(-0.392699081698724) q[13],q[16];
cp(-0.196349540849362) q[12],q[16];
cp(-0.098174770424681) q[11],q[16];
cp(-0.049087385212341) q[10],q[16];
h q[15];
cp(-1.570796326794897) q[14],q[15];
cp(-0.785398163397448) q[13],q[15];
cp(-0.392699081698724) q[12],q[15];
cp(-0.196349540849362) q[11],q[15];
cp(-0.098174770424681) q[10],q[15];
h q[14];
cp(-1.570796326794897) q[13],q[14];
cp(-0.785398163397448) q[12],q[14];
cp(-0.392699081698724) q[11],q[14];
cp(-0.196349540849362) q[10],q[14];
h q[13];
cp(-1.570796326794897) q[12],q[13];
cp(-0.785398163397448) q[11],q[13];
cp(-0.392699081698724) q[10],q[13];
h q[12];
cp(-1.570796326794897) q[11],q[12];
cp(-0.785398163397448) q[10],q[12];
h q[11];
cp(-1.570796326794897) q[10],q[11];
h q[10];
cp(-0.000000001462918) q[9],q[40];
cp(-0.000000000731459) q[8],q[40];
cp(-0.000000000365730) q[7],q[40];
cp(-0.000000000182865) q[6],q[40];
cp(-0.000000000091432) q[5],q[40];
cp(-0.000000000045716) q[4],q[40];
cp(-0.000000000022858) q[3],q[40];
cp(-0.000000000011429) q[2],q[40];
cp(-0.000000000005715) q[1],q[40];
cp(-0.000000000002857) q[0],q[40];
cp(-0.000000002925836) q[9],q[39];
cp(-0.000000001462918) q[8],q[39];
cp(-0.000000000731459) q[7],q[39];
cp(-0.000000000365730) q[6],q[39];
cp(-0.000000000182865) q[5],q[39];
cp(-0.000000000091432) q[4],q[39];
cp(-0.000000000045716) q[3],q[39];
cp(-0.000000000022858) q[2],q[39];
cp(-0.000000000011429) q[1],q[39];
cp(-0.000000000005715) q[0],q[39];
cp(-0.000000005851672) q[9],q[38];
cp(-0.000000002925836) q[8],q[38];
cp(-0.000000001462918) q[7],q[38];
cp(-0.000000000731459) q[6],q[38];
cp(-0.000000000365730) q[5],q[38];
cp(-0.000000000182865) q[4],q[38];
cp(-0.000000000091432) q[3],q[38];
cp(-0.000000000045716) q[2],q[38];
cp(-0.000000000022858) q[1],q[38];
cp(-0.000000000011429) q[0],q[38];
cp(-0.000000011703345) q[9],q[37];
cp(-0.000000005851672) q[8],q[37];
cp(-0.000000002925836) q[7],q[37];
cp(-0.000000001462918) q[6],q[37];
cp(-0.000000000731459) q[5],q[37];
cp(-0.000000000365730) q[4],q[37];
cp(-0.000000000182865) q[3],q[37];
cp(-0.000000000091432) q[2],q[37];
cp(-0.000000000045716) q[1],q[37];
cp(-0.000000000022858) q[0],q[37];
cp(-0.000000023406689) q[9],q[36];
cp(-0.000000011703345) q[8],q[36];
cp(-0.000000005851672) q[7],q[36];
cp(-0.000000002925836) q[6],q[36];
cp(-0.000000001462918) q[5],q[36];
cp(-0.000000000731459) q[4],q[36];
cp(-0.000000000365730) q[3],q[36];
cp(-0.000000000182865) q[2],q[36];
cp(-0.000000000091432) q[1],q[36];
cp(-0.000000000045716) q[0],q[36];
cp(-0.000000046813379) q[9],q[35];
cp(-0.000000023406689) q[8],q[35];
cp(-0.000000011703345) q[7],q[35];
cp(-0.000000005851672) q[6],q[35];
cp(-0.000000002925836) q[5],q[35];
cp(-0.000000001462918) q[4],q[35];
cp(-0.000000000731459) q[3],q[35];
cp(-0.000000000365730) q[2],q[35];
cp(-0.000000000182865) q[1],q[35];
cp(-0.000000000091432) q[0],q[35];
cp(-0.000000093626757) q[9],q[34];
cp(-0.000000046813379) q[8],q[34];
cp(-0.000000023406689) q[7],q[34];
cp(-0.000000011703345) q[6],q[34];
cp(-0.000000005851672) q[5],q[34];
cp(-0.000000002925836) q[4],q[34];
cp(-0.000000001462918) q[3],q[34];
cp(-0.000000000731459) q[2],q[34];
cp(-0.000000000365730) q[1],q[34];
cp(-0.000000000182865) q[0],q[34];
cp(-0.000000187253514) q[9],q[33];
cp(-0.000000093626757) q[8],q[33];
cp(-0.000000046813379) q[7],q[33];
cp(-0.000000023406689) q[6],q[33];
cp(-0.000000011703345) q[5],q[33];
cp(-0.000000005851672) q[4],q[33];
cp(-0.000000002925836) q[3],q[33];
cp(-0.000000001462918) q[2],q[33];
cp(-0.000000000731459) q[1],q[33];
cp(-0.000000000365730) q[0],q[33];
cp(-0.000000374507028) q[9],q[32];
cp(-0.000000187253514) q[8],q[32];
cp(-0.000000093626757) q[7],q[32];
cp(-0.000000046813379) q[6],q[32];
cp(-0.000000023406689) q[5],q[32];
cp(-0.000000011703345) q[4],q[32];
cp(-0.000000005851672) q[3],q[32];
cp(-0.000000002925836) q[2],q[32];
cp(-0.000000001462918) q[1],q[32];
cp(-0.000000000731459) q[0],q[32];
cp(-0.000000749014057) q[9],q[31];
cp(-0.000000374507028) q[8],q[31];
cp(-0.000000187253514) q[7],q[31];
cp(-0.000000093626757) q[6],q[31];
cp(-0.000000046813379) q[5],q[31];
cp(-0.000000023406689) q[4],q[31];
cp(-0.000000011703345) q[3],q[31];
cp(-0.000000005851672) q[2],q[31];
cp(-0.000000002925836) q[1],q[31];
cp(-0.000000001462918) q[0],q[31];
cp(-0.000001498028113) q[9],q[30];
cp(-0.000000749014057) q[8],q[30];
cp(-0.000000374507028) q[7],q[30];
cp(-0.000000187253514) q[6],q[30];
cp(-0.000000093626757) q[5],q[30];
cp(-0.000000046813379) q[4],q[30];
cp(-0.000000023406689) q[3],q[30];
cp(-0.000000011703345) q[2],q[30];
cp(-0.000000005851672) q[1],q[30];
cp(-0.000000002925836) q[0],q[30];
cp(-0.000002996056226) q[9],q[29];
cp(-0.000001498028113) q[8],q[29];
cp(-0.000000749014057) q[7],q[29];
cp(-0.000000374507028) q[6],q[29];
cp(-0.000000187253514) q[5],q[29];
cp(-0.000000093626757) q[4],q[29];
cp(-0.000000046813379) q[3],q[29];
cp(-0.000000023406689) q[2],q[29];
cp(-0.000000011703345) q[1],q[29];
cp(-0.000000005851672) q[0],q[29];
cp(-0.000005992112453) q[9],q[28];
cp(-0.000002996056226) q[8],q[28];
cp(-0.000001498028113) q[7],q[28];
cp(-0.000000749014057) q[6],q[28];
cp(-0.000000374507028) q[5],q[28];
cp(-0.000000187253514) q[4],q[28];
cp(-0.000000093626757) q[3],q[28];
cp(-0.000000046813379) q[2],q[28];
cp(-0.000000023406689) q[1],q[28];
cp(-0.000000011703345) q[0],q[28];
cp(-0.000011984224905) q[9],q[27];
cp(-0.000005992112453) q[8],q[27];
cp(-0.000002996056226) q[7],q[27];
cp(-0.000001498028113) q[6],q[27];
cp(-0.000000749014057) q[5],q[27];
cp(-0.000000374507028) q[4],q[27];
cp(-0.000000187253514) q[3],q[27];
cp(-0.000000093626757) q[2],q[27];
cp(-0.000000046813379) q[1],q[27];
cp(-0.000000023406689) q[0],q[27];
cp(-0.000023968449811) q[9],q[26];
cp(-0.000011984224905) q[8],q[26];
cp(-0.000005992112453) q[7],q[26];
cp(-0.000002996056226) q[6],q[26];
cp(-0.000001498028113) q[5],q[26];
cp(-0.000000749014057) q[4],q[26];
cp(-0.000000374507028) q[3],q[26];
cp(-0.000000187253514) q[2],q[26];
cp(-0.000000093626757) q[1],q[26];
cp(-0.000000046813379) q[0],q[26];
cp(-0.000047936899621) q[9],q[25];
cp(-0.000023968449811) q[8],q[25];
cp(-0.000011984224905) q[7],q[25];
cp(-0.000005992112453) q[6],q[25];
cp(-0.000002996056226) q[5],q[25];
cp(-0.000001498028113) q[4],q[25];
cp(-0.000000749014057) q[3],q[25];
cp(-0.000000374507028) q[2],q[25];
cp(-0.000000187253514) q[1],q[25];
cp(-0.000000093626757) q[0],q[25];
cp(-0.000095873799243) q[9],q[24];
cp(-0.000047936899621) q[8],q[24];
cp(-0.000023968449811) q[7],q[24];
cp(-0.000011984224905) q[6],q[24];
cp(-0.000005992112453) q[5],q[24];
cp(-0.000002996056226) q[4],q[24];
cp(-0.000001498028113) q[3],q[24];
cp(-0.000000749014057) q[2],q[24];
cp(-0.000000374507028) q[1],q[24];
cp(-0.000000187253514) q[0],q[24];
cp(-0.000191747598486) q[9],q[23];
cp(-0.000095873799243) q[8],q[23];
cp(-0.000047936899621) q[7],q[23];
cp(-0.000023968449811) q[6],q[23];
cp(-0.000011984224905) q[5],q[23];
cp(-0.000005992112453) q[4],q[23];
cp(-0.000002996056226) q[3],q[23];
cp(-0.000001498028113) q[2],q[23];
cp(-0.000000749014057) q[1],q[23];
cp(-0.000000374507028) q[0],q[23];
cp(-0.000383495196971) q[9],q[22];
cp(-0.000191747598486) q[8],q[22];
cp(-0.000095873799243) q[7],q[22];
cp(-0.000047936899621) q[6],q[22];
cp(-0.000023968449811) q[5],q[22];
cp(-0.000011984224905) q[4],q[22];
cp(-0.000005992112453) q[3],q[22];
cp(-0.000002996056226) q[2],q[22];
cp(-0.000001498028113) q[1],q[22];
cp(-0.000000749014057) q[0],q[22];
cp(-0.000766990393943) q[9],q[21];
cp(-0.000383495196971) q[8],q[21];
cp(-0.000191747598486) q[7],q[21];
cp(-0.000095873799243) q[6],q[21];
cp(-0.000047936899621) q[5],q[21];
cp(-0.000023968449811) q[4],q[21];
cp(-0.000011984224905) q[3],q[21];
cp(-0.000005992112453) q[2],q[21];
cp(-0.000002996056226) q[1],q[21];
cp(-0.000001498028113) q[0],q[21];
cp(-0.001533980787886) q[9],q[20];
cp(-0.000766990393943) q[8],q[20];
cp(-0.000383495196971) q[7],q[20];
cp(-0.000191747598486) q[6],q[20];
cp(-0.000095873799243) q[5],q[20];
cp(-0.000047936899621) q[4],q[20];
cp(-0.000023968449811) q[3],q[20];
cp(-0.000011984224905) q[2],q[20];
cp(-0.000005992112453) q[1],q[20];
cp(-0.000002996056226) q[0],q[20];
cp(-0.003067961575771) q[9],q[19];
cp(-0.001533980787886) q[8],q[19];
cp(-0.000766990393943) q[7],q[19];
cp(-0.000383495196971) q[6],q[19];
cp(-0.000191747598486) q[5],q[19];
cp(-0.000095873799243) q[4],q[19];
cp(-0.000047936899621) q[3],q[19];
cp(-0.000023968449811) q[2],q[19];
cp(-0.000011984224905) q[1],q[19];
cp(-0.000005992112453) q[0],q[19];
cp(-0.006135923151543) q[9],q[18];
cp(-0.003067961575771) q[8],q[18];
cp(-0.001533980787886) q[7],q[18];
cp(-0.000766990393943) q[6],q[18];
cp(-0.000383495196971) q[5],q[18];
cp(-0.000191747598486) q[4],q[18];
cp(-0.000095873799243) q[3],q[18];
cp(-0.000047936899621) q[2],q[18];
cp(-0.000023968449811) q[1],q[18];
cp(-0.000011984224905) q[0],q[18];
cp(-0.012271846303085) q[9],q[17];
cp(-0.006135923151543) q[8],q[17];
cp(-0.003067961575771) q[7],q[17];
cp(-0.001533980787886) q[6],q[17];
cp(-0.000766990393943) q[5],q[17];
cp(-0.000383495196971) q[4],q[17];
cp(-0.000191747598486) q[3],q[17];
cp(-0.000095873799243) q[2],q[17];
cp(-0.000047936899621) q[1],q[17];
cp(-0.000023968449811) q[0],q[17];
cp(-0.024543692606170) q[9],q[16];
cp(-0.012271846303085) q[8],q[16];
cp(-0.006135923151543) q[7],q[16];
cp(-0.003067961575771) q[6],q[16];
cp(-0.001533980787886) q[5],q[16];
cp(-0.000766990393943) q[4],q[16];
cp(-0.000383495196971) q[3],q[16];
cp(-0.000191747598486) q[2],q[16];
cp(-0.000095873799243) q[1],q[16];
cp(-0.000047936899621) q[0],q[16];
cp(-0.049087385212341) q[9],q[15];
cp(-0.024543692606170) q[8],q[15];
cp(-0.012271846303085) q[7],q[15];
cp(-0.006135923151543) q[6],q[15];
cp(-0.003067961575771) q[5],q[15];
cp(-0.001533980787886) q[4],q[15];
cp(-0.000766990393943) q[3],q[15];
cp(-0.000383495196971) q[2],q[15];
cp(-0.000191747598486) q[1],q[15];
cp(-0.000095873799243) q[0],q[15];
cp(-0.098174770424681) q[9],q[14];
cp(-0.049087385212341) q[8],q[14];
cp(-0.024543692606170) q[7],q[14];
cp(-0.012271846303085) q[6],q[14];
cp(-0.006135923151543) q[5],q[14];
cp(-0.003067961575771) q[4],q[14];
cp(-0.001533980787886) q[3],q[14];
cp(-0.000766990393943) q[2],q[14];
cp(-0.000383495196971) q[1],q[14];
cp(-0.000191747598486) q[0],q[14];
cp(-0.196349540849362) q[9],q[13];
cp(-0.098174770424681) q[8],q[13];
cp(-0.049087385212341) q[7],q[13];
cp(-0.024543692606170) q[6],q[13];
cp(-0.012271846303085) q[5],q[13];
cp(-0.006135923151543) q[4],q[13];
cp(-0.003067961575771) q[3],q[13];
cp(-0.001533980787886) q[2],q[13];
cp(-0.000766990393943) q[1],q[13];
cp(-0.000383495196971) q[0],q[13];
cp(-0.392699081698724) q[9],q[12];
cp(-0.196349540849362) q[8],q[12];
cp(-0.098174770424681) q[7],q[12];
cp(-0.049087385212341) q[6],q[12];
cp(-0.024543692606170) q[5],q[12];
cp(-0.012271846303085) q[4],q[12];
cp(-0.006135923151543) q[3],q[12];
cp(-0.003067961575771) q[2],q[12];
cp(-0.001533980787886) q[1],q[12];
cp(-0.000766990393943) q[0],q[12];
cp(-0.785398163397448) q[9],q[11];
cp(-0.392699081698724) q[8],q[11];
cp(-0.196349540849362) q[7],q[11];
cp(-0.098174770424681) q[6],q[11];
cp(-0.049087385212341) q[5],q[11];
cp(-0.024543692606170) q[4],q[11];
cp(-0.012271846303085) q[3],q[11];
cp(-0.006135923151543) q[2],q[11];
cp(-0.003067961575771) q[1],q[11];
cp(-0.001533980787886) q[0],q[11];
cp(-1.570796326794897) q[9],q[10];
cp(-0.785398163397448) q[8],q[10];
cp(-0.392699081698724) q[7],q[10];
cp(-0.196349540849362) q[6],q[10];
cp(-0.098174770424681) q[5],q[10];
cp(-0.049087385212341) q[4],q[10];
cp(-0.024543692606170) q[3],q[10];
cp(-0.012271846303085) q[2],q[10];
cp(-0.006135923151543) q[1],q[10];
cp(-0.003067961575771) q[0],q[10];
h q[9];
cp(-1.570796326794897) q[8],q[9];
cp(-0.785398163397448) q[7],q[9];
cp(-0.392699081698724) q[6],q[9];
cp(-0.196349540849362) q[5],q[9];
cp(-0.098174770424681) q[4],q[9];
cp(-0.049087385212341) q[3],q[9];
cp(-0.024543692606170) q[2],q[9];
cp(-0.012271846303085) q[1],q[9];
cp(-0.006135923151543) q[0],q[9];
h q[8];
cp(-1.570796326794897) q[7],q[8];
cp(-0.785398163397448) q[6],q[8];
cp(-0.392699081698724) q[5],q[8];
cp(-0.196349540849362) q[4],q[8];
cp(-0.098174770424681) q[3],q[8];
cp(-0.049087385212341) q[2],q[8];
cp(-0.024543692606170) q[1],q[8];
cp(-0.012271846303085) q[0],q[8];
h q[7];
cp(-1.570796326794897) q[6],q[7];
cp(-0.785398163397448) q[5],q[7];
cp(-0.392699081698724) q[4],q[7];
cp(-0.196349540849362) q[3],q[7];
cp(-0.098174770424681) q[2],q[7];
cp(-0.049087385212341) q[1],q[7];
cp(-0.024543692606170) q[0],q[7];
h q[6];
cp(-1.570796326794897) q[5],q[6];
cp(-0.785398163397448) q[4],q[6];
cp(-0.392699081698724) q[3],q[6];
cp(-0.196349540849362) q[2],q[6];
cp(-0.098174770424681) q[1],q[6];
cp(-0.049087385212341) q[0],q[6];
h q[5];
cp(-1.570796326794897) q[4],q[5];
cp(-0.785398163397448) q[3],q[5];
cp(-0.392699081698724) q[2],q[5];
cp(-0.196349540849362) q[1],q[5];
cp(-0.098174770424681) q[0],q[5];
h q[4];
cp(-1.570796326794897) q[3],q[4];
cp(-0.785398163397448) q[2],q[4];
cp(-0.392699081698724) q[1],q[4];
cp(-0.196349540849362) q[0],q[4];
h q[3];
cp(-1.570796326794897) q[2],q[3];
cp(-0.785398163397448) q[1],q[3];
cp(-0.392699081698724) q[0],q[3];
h q[2];
cp(-1.570796326794897) q[1],q[2];
cp(-0.785398163397448) q[0],q[2];
h q[1];
cp(-1.570796326794897) q[0],q[1];
h q[0];
