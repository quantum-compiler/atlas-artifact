OPENQASM 2.0;
include "qelib1.inc";
qreg q[42];
h q[41];
cx q[41],q[40];
cx q[40],q[39];
cx q[39],q[38];
cx q[38],q[37];
cx q[37],q[36];
cx q[36],q[35];
cx q[35],q[34];
cx q[34],q[33];
cx q[33],q[32];
cx q[32],q[31];
cx q[31],q[30];
cx q[30],q[29];
cx q[29],q[28];
cx q[28],q[27];
cx q[27],q[26];
cx q[26],q[25];
cx q[25],q[24];
cx q[24],q[23];
cx q[23],q[22];
cx q[22],q[21];
cx q[21],q[20];
cx q[20],q[19];
cx q[19],q[18];
cx q[18],q[17];
cx q[17],q[16];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
cx q[13],q[12];
cx q[12],q[11];
cx q[11],q[10];
cx q[10],q[9];
h q[41];
cp(1.570796326794897) q[41],q[40];
h q[40];
cp(0.785398163397448) q[41],q[39];
cp(1.570796326794897) q[40],q[39];
h q[39];
cp(0.392699081698724) q[41],q[38];
cp(0.785398163397448) q[40],q[38];
cp(1.570796326794897) q[39],q[38];
h q[38];
cp(0.196349540849362) q[41],q[37];
cp(0.392699081698724) q[40],q[37];
cp(0.785398163397448) q[39],q[37];
cp(1.570796326794897) q[38],q[37];
h q[37];
cp(0.098174770424681) q[41],q[36];
cp(0.196349540849362) q[40],q[36];
cp(0.392699081698724) q[39],q[36];
cp(0.785398163397448) q[38],q[36];
cp(1.570796326794897) q[37],q[36];
h q[36];
cp(0.049087385212341) q[41],q[35];
cp(0.098174770424681) q[40],q[35];
cp(0.196349540849362) q[39],q[35];
cp(0.392699081698724) q[38],q[35];
cp(0.785398163397448) q[37],q[35];
cp(1.570796326794897) q[36],q[35];
h q[35];
cp(0.024543692606170) q[41],q[34];
cp(0.049087385212341) q[40],q[34];
cp(0.098174770424681) q[39],q[34];
cp(0.196349540849362) q[38],q[34];
cp(0.392699081698724) q[37],q[34];
cp(0.785398163397448) q[36],q[34];
cp(1.570796326794897) q[35],q[34];
h q[34];
cp(0.012271846303085) q[41],q[33];
cp(0.024543692606170) q[40],q[33];
cp(0.049087385212341) q[39],q[33];
cp(0.098174770424681) q[38],q[33];
cp(0.196349540849362) q[37],q[33];
cp(0.392699081698724) q[36],q[33];
cp(0.785398163397448) q[35],q[33];
cp(1.570796326794897) q[34],q[33];
h q[33];
cp(0.006135923151543) q[41],q[32];
cp(0.012271846303085) q[40],q[32];
cp(0.024543692606170) q[39],q[32];
cp(0.049087385212341) q[38],q[32];
cp(0.098174770424681) q[37],q[32];
cp(0.196349540849362) q[36],q[32];
cp(0.392699081698724) q[35],q[32];
cp(0.785398163397448) q[34],q[32];
cp(1.570796326794897) q[33],q[32];
h q[32];
cp(0.003067961575771) q[41],q[31];
cp(0.006135923151543) q[40],q[31];
cp(0.012271846303085) q[39],q[31];
cp(0.024543692606170) q[38],q[31];
cp(0.049087385212341) q[37],q[31];
cp(0.098174770424681) q[36],q[31];
cp(0.196349540849362) q[35],q[31];
cp(0.392699081698724) q[34],q[31];
cp(0.785398163397448) q[33],q[31];
cp(1.570796326794897) q[32],q[31];
h q[31];
cp(0.001533980787886) q[41],q[30];
cp(0.003067961575771) q[40],q[30];
cp(0.006135923151543) q[39],q[30];
cp(0.012271846303085) q[38],q[30];
cp(0.024543692606170) q[37],q[30];
cp(0.049087385212341) q[36],q[30];
cp(0.098174770424681) q[35],q[30];
cp(0.196349540849362) q[34],q[30];
cp(0.392699081698724) q[33],q[30];
cp(0.785398163397448) q[32],q[30];
cp(1.570796326794897) q[31],q[30];
h q[30];
cp(0.000766990393943) q[41],q[29];
cp(0.001533980787886) q[40],q[29];
cp(0.003067961575771) q[39],q[29];
cp(0.006135923151543) q[38],q[29];
cp(0.012271846303085) q[37],q[29];
cp(0.024543692606170) q[36],q[29];
cp(0.049087385212341) q[35],q[29];
cp(0.098174770424681) q[34],q[29];
cp(0.196349540849362) q[33],q[29];
cp(0.392699081698724) q[32],q[29];
cp(0.785398163397448) q[31],q[29];
cp(1.570796326794897) q[30],q[29];
h q[29];
cp(0.000383495196971) q[41],q[28];
cp(0.000766990393943) q[40],q[28];
cp(0.001533980787886) q[39],q[28];
cp(0.003067961575771) q[38],q[28];
cp(0.006135923151543) q[37],q[28];
cp(0.012271846303085) q[36],q[28];
cp(0.024543692606170) q[35],q[28];
cp(0.049087385212341) q[34],q[28];
cp(0.098174770424681) q[33],q[28];
cp(0.196349540849362) q[32],q[28];
cp(0.392699081698724) q[31],q[28];
cp(0.785398163397448) q[30],q[28];
cp(1.570796326794897) q[29],q[28];
h q[28];
cp(0.000191747598486) q[41],q[27];
cp(0.000383495196971) q[40],q[27];
cp(0.000766990393943) q[39],q[27];
cp(0.001533980787886) q[38],q[27];
cp(0.003067961575771) q[37],q[27];
cp(0.006135923151543) q[36],q[27];
cp(0.012271846303085) q[35],q[27];
cp(0.024543692606170) q[34],q[27];
cp(0.049087385212341) q[33],q[27];
cp(0.098174770424681) q[32],q[27];
cp(0.196349540849362) q[31],q[27];
cp(0.392699081698724) q[30],q[27];
cp(0.785398163397448) q[29],q[27];
cp(1.570796326794897) q[28],q[27];
h q[27];
cp(0.000095873799243) q[41],q[26];
cp(0.000191747598486) q[40],q[26];
cp(0.000383495196971) q[39],q[26];
cp(0.000766990393943) q[38],q[26];
cp(0.001533980787886) q[37],q[26];
cp(0.003067961575771) q[36],q[26];
cp(0.006135923151543) q[35],q[26];
cp(0.012271846303085) q[34],q[26];
cp(0.024543692606170) q[33],q[26];
cp(0.049087385212341) q[32],q[26];
cp(0.098174770424681) q[31],q[26];
cp(0.196349540849362) q[30],q[26];
cp(0.392699081698724) q[29],q[26];
cp(0.785398163397448) q[28],q[26];
cp(1.570796326794897) q[27],q[26];
h q[26];
cp(0.000047936899621) q[41],q[25];
cp(0.000095873799243) q[40],q[25];
cp(0.000191747598486) q[39],q[25];
cp(0.000383495196971) q[38],q[25];
cp(0.000766990393943) q[37],q[25];
cp(0.001533980787886) q[36],q[25];
cp(0.003067961575771) q[35],q[25];
cp(0.006135923151543) q[34],q[25];
cp(0.012271846303085) q[33],q[25];
cp(0.024543692606170) q[32],q[25];
cp(0.049087385212341) q[31],q[25];
cp(0.098174770424681) q[30],q[25];
cp(0.196349540849362) q[29],q[25];
cp(0.392699081698724) q[28],q[25];
cp(0.785398163397448) q[27],q[25];
cp(1.570796326794897) q[26],q[25];
h q[25];
cp(0.000023968449811) q[41],q[24];
cp(0.000047936899621) q[40],q[24];
cp(0.000095873799243) q[39],q[24];
cp(0.000191747598486) q[38],q[24];
cp(0.000383495196971) q[37],q[24];
cp(0.000766990393943) q[36],q[24];
cp(0.001533980787886) q[35],q[24];
cp(0.003067961575771) q[34],q[24];
cp(0.006135923151543) q[33],q[24];
cp(0.012271846303085) q[32],q[24];
cp(0.024543692606170) q[31],q[24];
cp(0.049087385212341) q[30],q[24];
cp(0.098174770424681) q[29],q[24];
cp(0.196349540849362) q[28],q[24];
cp(0.392699081698724) q[27],q[24];
cp(0.785398163397448) q[26],q[24];
cp(1.570796326794897) q[25],q[24];
h q[24];
cp(0.000011984224905) q[41],q[23];
cp(0.000023968449811) q[40],q[23];
cp(0.000047936899621) q[39],q[23];
cp(0.000095873799243) q[38],q[23];
cp(0.000191747598486) q[37],q[23];
cp(0.000383495196971) q[36],q[23];
cp(0.000766990393943) q[35],q[23];
cp(0.001533980787886) q[34],q[23];
cp(0.003067961575771) q[33],q[23];
cp(0.006135923151543) q[32],q[23];
cp(0.012271846303085) q[31],q[23];
cp(0.024543692606170) q[30],q[23];
cp(0.049087385212341) q[29],q[23];
cp(0.098174770424681) q[28],q[23];
cp(0.196349540849362) q[27],q[23];
cp(0.392699081698724) q[26],q[23];
cp(0.785398163397448) q[25],q[23];
cp(1.570796326794897) q[24],q[23];
h q[23];
cp(0.000005992112453) q[41],q[22];
cp(0.000011984224905) q[40],q[22];
cp(0.000023968449811) q[39],q[22];
cp(0.000047936899621) q[38],q[22];
cp(0.000095873799243) q[37],q[22];
cp(0.000191747598486) q[36],q[22];
cp(0.000383495196971) q[35],q[22];
cp(0.000766990393943) q[34],q[22];
cp(0.001533980787886) q[33],q[22];
cp(0.003067961575771) q[32],q[22];
cp(0.006135923151543) q[31],q[22];
cp(0.012271846303085) q[30],q[22];
cp(0.024543692606170) q[29],q[22];
cp(0.049087385212341) q[28],q[22];
cp(0.098174770424681) q[27],q[22];
cp(0.196349540849362) q[26],q[22];
cp(0.392699081698724) q[25],q[22];
cp(0.785398163397448) q[24],q[22];
cp(1.570796326794897) q[23],q[22];
h q[22];
cp(0.000002996056226) q[41],q[21];
cp(0.000005992112453) q[40],q[21];
cp(0.000011984224905) q[39],q[21];
cp(0.000023968449811) q[38],q[21];
cp(0.000047936899621) q[37],q[21];
cp(0.000095873799243) q[36],q[21];
cp(0.000191747598486) q[35],q[21];
cp(0.000383495196971) q[34],q[21];
cp(0.000766990393943) q[33],q[21];
cp(0.001533980787886) q[32],q[21];
cp(0.003067961575771) q[31],q[21];
cp(0.006135923151543) q[30],q[21];
cp(0.012271846303085) q[29],q[21];
cp(0.024543692606170) q[28],q[21];
cp(0.049087385212341) q[27],q[21];
cp(0.098174770424681) q[26],q[21];
cp(0.196349540849362) q[25],q[21];
cp(0.392699081698724) q[24],q[21];
cp(0.785398163397448) q[23],q[21];
cp(1.570796326794897) q[22],q[21];
h q[21];
cp(0.000001498028113) q[41],q[20];
cp(0.000002996056226) q[40],q[20];
cp(0.000005992112453) q[39],q[20];
cp(0.000011984224905) q[38],q[20];
cp(0.000023968449811) q[37],q[20];
cp(0.000047936899621) q[36],q[20];
cp(0.000095873799243) q[35],q[20];
cp(0.000191747598486) q[34],q[20];
cp(0.000383495196971) q[33],q[20];
cp(0.000766990393943) q[32],q[20];
cp(0.001533980787886) q[31],q[20];
cp(0.003067961575771) q[30],q[20];
cp(0.006135923151543) q[29],q[20];
cp(0.012271846303085) q[28],q[20];
cp(0.024543692606170) q[27],q[20];
cp(0.049087385212341) q[26],q[20];
cp(0.098174770424681) q[25],q[20];
cp(0.196349540849362) q[24],q[20];
cp(0.392699081698724) q[23],q[20];
cp(0.785398163397448) q[22],q[20];
cp(1.570796326794897) q[21],q[20];
h q[20];
cp(0.000000749014057) q[41],q[19];
cp(0.000001498028113) q[40],q[19];
cp(0.000002996056226) q[39],q[19];
cp(0.000005992112453) q[38],q[19];
cp(0.000011984224905) q[37],q[19];
cp(0.000023968449811) q[36],q[19];
cp(0.000047936899621) q[35],q[19];
cp(0.000095873799243) q[34],q[19];
cp(0.000191747598486) q[33],q[19];
cp(0.000383495196971) q[32],q[19];
cp(0.000766990393943) q[31],q[19];
cp(0.001533980787886) q[30],q[19];
cp(0.003067961575771) q[29],q[19];
cp(0.006135923151543) q[28],q[19];
cp(0.012271846303085) q[27],q[19];
cp(0.024543692606170) q[26],q[19];
cp(0.049087385212341) q[25],q[19];
cp(0.098174770424681) q[24],q[19];
cp(0.196349540849362) q[23],q[19];
cp(0.392699081698724) q[22],q[19];
cp(0.785398163397448) q[21],q[19];
cp(1.570796326794897) q[20],q[19];
h q[19];
cp(0.000000374507028) q[41],q[18];
cp(0.000000749014057) q[40],q[18];
cp(0.000001498028113) q[39],q[18];
cp(0.000002996056226) q[38],q[18];
cp(0.000005992112453) q[37],q[18];
cp(0.000011984224905) q[36],q[18];
cp(0.000023968449811) q[35],q[18];
cp(0.000047936899621) q[34],q[18];
cp(0.000095873799243) q[33],q[18];
cp(0.000191747598486) q[32],q[18];
cp(0.000383495196971) q[31],q[18];
cp(0.000766990393943) q[30],q[18];
cp(0.001533980787886) q[29],q[18];
cp(0.003067961575771) q[28],q[18];
cp(0.006135923151543) q[27],q[18];
cp(0.012271846303085) q[26],q[18];
cp(0.024543692606170) q[25],q[18];
cp(0.049087385212341) q[24],q[18];
cp(0.098174770424681) q[23],q[18];
cp(0.196349540849362) q[22],q[18];
cp(0.392699081698724) q[21],q[18];
cp(0.785398163397448) q[20],q[18];
cp(1.570796326794897) q[19],q[18];
h q[18];
cp(0.000000187253514) q[41],q[17];
cp(0.000000374507028) q[40],q[17];
cp(0.000000749014057) q[39],q[17];
cp(0.000001498028113) q[38],q[17];
cp(0.000002996056226) q[37],q[17];
cp(0.000005992112453) q[36],q[17];
cp(0.000011984224905) q[35],q[17];
cp(0.000023968449811) q[34],q[17];
cp(0.000047936899621) q[33],q[17];
cp(0.000095873799243) q[32],q[17];
cp(0.000191747598486) q[31],q[17];
cp(0.000383495196971) q[30],q[17];
cp(0.000766990393943) q[29],q[17];
cp(0.001533980787886) q[28],q[17];
cp(0.003067961575771) q[27],q[17];
cp(0.006135923151543) q[26],q[17];
cp(0.012271846303085) q[25],q[17];
cp(0.024543692606170) q[24],q[17];
cp(0.049087385212341) q[23],q[17];
cp(0.098174770424681) q[22],q[17];
cp(0.196349540849362) q[21],q[17];
cp(0.392699081698724) q[20],q[17];
cp(0.785398163397448) q[19],q[17];
cp(1.570796326794897) q[18],q[17];
h q[17];
cp(0.000000093626757) q[41],q[16];
cp(0.000000187253514) q[40],q[16];
cp(0.000000374507028) q[39],q[16];
cp(0.000000749014057) q[38],q[16];
cp(0.000001498028113) q[37],q[16];
cp(0.000002996056226) q[36],q[16];
cp(0.000005992112453) q[35],q[16];
cp(0.000011984224905) q[34],q[16];
cp(0.000023968449811) q[33],q[16];
cp(0.000047936899621) q[32],q[16];
cp(0.000095873799243) q[31],q[16];
cp(0.000191747598486) q[30],q[16];
cp(0.000383495196971) q[29],q[16];
cp(0.000766990393943) q[28],q[16];
cp(0.001533980787886) q[27],q[16];
cp(0.003067961575771) q[26],q[16];
cp(0.006135923151543) q[25],q[16];
cp(0.012271846303085) q[24],q[16];
cp(0.024543692606170) q[23],q[16];
cp(0.049087385212341) q[22],q[16];
cp(0.098174770424681) q[21],q[16];
cp(0.196349540849362) q[20],q[16];
cp(0.392699081698724) q[19],q[16];
cp(0.785398163397448) q[18],q[16];
cp(1.570796326794897) q[17],q[16];
h q[16];
cp(0.000000046813379) q[41],q[15];
cp(0.000000093626757) q[40],q[15];
cp(0.000000187253514) q[39],q[15];
cp(0.000000374507028) q[38],q[15];
cp(0.000000749014057) q[37],q[15];
cp(0.000001498028113) q[36],q[15];
cp(0.000002996056226) q[35],q[15];
cp(0.000005992112453) q[34],q[15];
cp(0.000011984224905) q[33],q[15];
cp(0.000023968449811) q[32],q[15];
cp(0.000047936899621) q[31],q[15];
cp(0.000095873799243) q[30],q[15];
cp(0.000191747598486) q[29],q[15];
cp(0.000383495196971) q[28],q[15];
cp(0.000766990393943) q[27],q[15];
cp(0.001533980787886) q[26],q[15];
cp(0.003067961575771) q[25],q[15];
cp(0.006135923151543) q[24],q[15];
cp(0.012271846303085) q[23],q[15];
cp(0.024543692606170) q[22],q[15];
cp(0.049087385212341) q[21],q[15];
cp(0.098174770424681) q[20],q[15];
cp(0.196349540849362) q[19],q[15];
cp(0.392699081698724) q[18],q[15];
cp(0.785398163397448) q[17],q[15];
cp(1.570796326794897) q[16],q[15];
h q[15];
cp(0.000000023406689) q[41],q[14];
cp(0.000000046813379) q[40],q[14];
cp(0.000000093626757) q[39],q[14];
cp(0.000000187253514) q[38],q[14];
cp(0.000000374507028) q[37],q[14];
cp(0.000000749014057) q[36],q[14];
cp(0.000001498028113) q[35],q[14];
cp(0.000002996056226) q[34],q[14];
cp(0.000005992112453) q[33],q[14];
cp(0.000011984224905) q[32],q[14];
cp(0.000023968449811) q[31],q[14];
cp(0.000047936899621) q[30],q[14];
cp(0.000095873799243) q[29],q[14];
cp(0.000191747598486) q[28],q[14];
cp(0.000383495196971) q[27],q[14];
cp(0.000766990393943) q[26],q[14];
cp(0.001533980787886) q[25],q[14];
cp(0.003067961575771) q[24],q[14];
cp(0.006135923151543) q[23],q[14];
cp(0.012271846303085) q[22],q[14];
cp(0.024543692606170) q[21],q[14];
cp(0.049087385212341) q[20],q[14];
cp(0.098174770424681) q[19],q[14];
cp(0.196349540849362) q[18],q[14];
cp(0.392699081698724) q[17],q[14];
cp(0.785398163397448) q[16],q[14];
cp(1.570796326794897) q[15],q[14];
h q[14];
cp(0.000000011703345) q[41],q[13];
cp(0.000000023406689) q[40],q[13];
cp(0.000000046813379) q[39],q[13];
cp(0.000000093626757) q[38],q[13];
cp(0.000000187253514) q[37],q[13];
cp(0.000000374507028) q[36],q[13];
cp(0.000000749014057) q[35],q[13];
cp(0.000001498028113) q[34],q[13];
cp(0.000002996056226) q[33],q[13];
cp(0.000005992112453) q[32],q[13];
cp(0.000011984224905) q[31],q[13];
cp(0.000023968449811) q[30],q[13];
cp(0.000047936899621) q[29],q[13];
cp(0.000095873799243) q[28],q[13];
cp(0.000191747598486) q[27],q[13];
cp(0.000383495196971) q[26],q[13];
cp(0.000766990393943) q[25],q[13];
cp(0.001533980787886) q[24],q[13];
cp(0.003067961575771) q[23],q[13];
cp(0.006135923151543) q[22],q[13];
cp(0.012271846303085) q[21],q[13];
cp(0.024543692606170) q[20],q[13];
cp(0.049087385212341) q[19],q[13];
cp(0.098174770424681) q[18],q[13];
cp(0.196349540849362) q[17],q[13];
cp(0.392699081698724) q[16],q[13];
cp(0.785398163397448) q[15],q[13];
cp(1.570796326794897) q[14],q[13];
h q[13];
cp(0.000000005851672) q[41],q[12];
cp(0.000000011703345) q[40],q[12];
cp(0.000000023406689) q[39],q[12];
cp(0.000000046813379) q[38],q[12];
cp(0.000000093626757) q[37],q[12];
cp(0.000000187253514) q[36],q[12];
cp(0.000000374507028) q[35],q[12];
cp(0.000000749014057) q[34],q[12];
cp(0.000001498028113) q[33],q[12];
cp(0.000002996056226) q[32],q[12];
cp(0.000005992112453) q[31],q[12];
cp(0.000011984224905) q[30],q[12];
cp(0.000023968449811) q[29],q[12];
cp(0.000047936899621) q[28],q[12];
cp(0.000095873799243) q[27],q[12];
cp(0.000191747598486) q[26],q[12];
cp(0.000383495196971) q[25],q[12];
cp(0.000766990393943) q[24],q[12];
cp(0.001533980787886) q[23],q[12];
cp(0.003067961575771) q[22],q[12];
cp(0.006135923151543) q[21],q[12];
cp(0.012271846303085) q[20],q[12];
cp(0.024543692606170) q[19],q[12];
cp(0.049087385212341) q[18],q[12];
cp(0.098174770424681) q[17],q[12];
cp(0.196349540849362) q[16],q[12];
cp(0.392699081698724) q[15],q[12];
cp(0.785398163397448) q[14],q[12];
cp(1.570796326794897) q[13],q[12];
h q[12];
cp(0.000000002925836) q[41],q[11];
cp(0.000000005851672) q[40],q[11];
cp(0.000000011703345) q[39],q[11];
cp(0.000000023406689) q[38],q[11];
cp(0.000000046813379) q[37],q[11];
cp(0.000000093626757) q[36],q[11];
cp(0.000000187253514) q[35],q[11];
cp(0.000000374507028) q[34],q[11];
cp(0.000000749014057) q[33],q[11];
cp(0.000001498028113) q[32],q[11];
cp(0.000002996056226) q[31],q[11];
cp(0.000005992112453) q[30],q[11];
cp(0.000011984224905) q[29],q[11];
cp(0.000023968449811) q[28],q[11];
cp(0.000047936899621) q[27],q[11];
cp(0.000095873799243) q[26],q[11];
cp(0.000191747598486) q[25],q[11];
cp(0.000383495196971) q[24],q[11];
cp(0.000766990393943) q[23],q[11];
cp(0.001533980787886) q[22],q[11];
cp(0.003067961575771) q[21],q[11];
cp(0.006135923151543) q[20],q[11];
cp(0.012271846303085) q[19],q[11];
cp(0.024543692606170) q[18],q[11];
cp(0.049087385212341) q[17],q[11];
cp(0.098174770424681) q[16],q[11];
cp(0.196349540849362) q[15],q[11];
cp(0.392699081698724) q[14],q[11];
cp(0.785398163397448) q[13],q[11];
cp(1.570796326794897) q[12],q[11];
h q[11];
cp(0.000000001462918) q[41],q[10];
cp(0.000000002925836) q[40],q[10];
cp(0.000000005851672) q[39],q[10];
cp(0.000000011703345) q[38],q[10];
cp(0.000000023406689) q[37],q[10];
cp(0.000000046813379) q[36],q[10];
cp(0.000000093626757) q[35],q[10];
cp(0.000000187253514) q[34],q[10];
cp(0.000000374507028) q[33],q[10];
cp(0.000000749014057) q[32],q[10];
cp(0.000001498028113) q[31],q[10];
cp(0.000002996056226) q[30],q[10];
cp(0.000005992112453) q[29],q[10];
cp(0.000011984224905) q[28],q[10];
cp(0.000023968449811) q[27],q[10];
cp(0.000047936899621) q[26],q[10];
cp(0.000095873799243) q[25],q[10];
cp(0.000191747598486) q[24],q[10];
cp(0.000383495196971) q[23],q[10];
cp(0.000766990393943) q[22],q[10];
cp(0.001533980787886) q[21],q[10];
cp(0.003067961575771) q[20],q[10];
cp(0.006135923151543) q[19],q[10];
cp(0.012271846303085) q[18],q[10];
cp(0.024543692606170) q[17],q[10];
cp(0.049087385212341) q[16],q[10];
cp(0.098174770424681) q[15],q[10];
cp(0.196349540849362) q[14],q[10];
cp(0.392699081698724) q[13],q[10];
cp(0.785398163397448) q[12],q[10];
cp(1.570796326794897) q[11],q[10];
h q[10];
cx q[9],q[8];
cp(0.000000000731459) q[41],q[9];
cp(0.000000001462918) q[40],q[9];
cp(0.000000002925836) q[39],q[9];
cp(0.000000005851672) q[38],q[9];
cp(0.000000011703345) q[37],q[9];
cp(0.000000023406689) q[36],q[9];
cp(0.000000046813379) q[35],q[9];
cp(0.000000093626757) q[34],q[9];
cp(0.000000187253514) q[33],q[9];
cp(0.000000374507028) q[32],q[9];
cp(0.000000749014057) q[31],q[9];
cp(0.000001498028113) q[30],q[9];
cp(0.000002996056226) q[29],q[9];
cp(0.000005992112453) q[28],q[9];
cp(0.000011984224905) q[27],q[9];
cp(0.000023968449811) q[26],q[9];
cp(0.000047936899621) q[25],q[9];
cp(0.000095873799243) q[24],q[9];
cp(0.000191747598486) q[23],q[9];
cp(0.000383495196971) q[22],q[9];
cp(0.000766990393943) q[21],q[9];
cp(0.001533980787886) q[20],q[9];
cp(0.003067961575771) q[19],q[9];
cp(0.006135923151543) q[18],q[9];
cp(0.012271846303085) q[17],q[9];
cp(0.024543692606170) q[16],q[9];
cp(0.049087385212341) q[15],q[9];
cp(0.098174770424681) q[14],q[9];
cp(0.196349540849362) q[13],q[9];
cp(0.392699081698724) q[12],q[9];
cp(0.785398163397448) q[11],q[9];
cp(1.570796326794897) q[10],q[9];
cx q[8],q[7];
cp(0.000000000365730) q[41],q[8];
cp(0.000000000731459) q[40],q[8];
cp(0.000000001462918) q[39],q[8];
cp(0.000000002925836) q[38],q[8];
cp(0.000000005851672) q[37],q[8];
cp(0.000000011703345) q[36],q[8];
cp(0.000000023406689) q[35],q[8];
cp(0.000000046813379) q[34],q[8];
cp(0.000000093626757) q[33],q[8];
cp(0.000000187253514) q[32],q[8];
cp(0.000000374507028) q[31],q[8];
cp(0.000000749014057) q[30],q[8];
cp(0.000001498028113) q[29],q[8];
cp(0.000002996056226) q[28],q[8];
cp(0.000005992112453) q[27],q[8];
cp(0.000011984224905) q[26],q[8];
cp(0.000023968449811) q[25],q[8];
cp(0.000047936899621) q[24],q[8];
cp(0.000095873799243) q[23],q[8];
cp(0.000191747598486) q[22],q[8];
cp(0.000383495196971) q[21],q[8];
cp(0.000766990393943) q[20],q[8];
cp(0.001533980787886) q[19],q[8];
cp(0.003067961575771) q[18],q[8];
cp(0.006135923151543) q[17],q[8];
cp(0.012271846303085) q[16],q[8];
cp(0.024543692606170) q[15],q[8];
cp(0.049087385212341) q[14],q[8];
cp(0.098174770424681) q[13],q[8];
cp(0.196349540849362) q[12],q[8];
cp(0.392699081698724) q[11],q[8];
cp(0.785398163397448) q[10],q[8];
cx q[7],q[6];
cp(0.000000000182865) q[41],q[7];
cp(0.000000000365730) q[40],q[7];
cp(0.000000000731459) q[39],q[7];
cp(0.000000001462918) q[38],q[7];
cp(0.000000002925836) q[37],q[7];
cp(0.000000005851672) q[36],q[7];
cp(0.000000011703345) q[35],q[7];
cp(0.000000023406689) q[34],q[7];
cp(0.000000046813379) q[33],q[7];
cp(0.000000093626757) q[32],q[7];
cp(0.000000187253514) q[31],q[7];
cp(0.000000374507028) q[30],q[7];
cp(0.000000749014057) q[29],q[7];
cp(0.000001498028113) q[28],q[7];
cp(0.000002996056226) q[27],q[7];
cp(0.000005992112453) q[26],q[7];
cp(0.000011984224905) q[25],q[7];
cp(0.000023968449811) q[24],q[7];
cp(0.000047936899621) q[23],q[7];
cp(0.000095873799243) q[22],q[7];
cp(0.000191747598486) q[21],q[7];
cp(0.000383495196971) q[20],q[7];
cp(0.000766990393943) q[19],q[7];
cp(0.001533980787886) q[18],q[7];
cp(0.003067961575771) q[17],q[7];
cp(0.006135923151543) q[16],q[7];
cp(0.012271846303085) q[15],q[7];
cp(0.024543692606170) q[14],q[7];
cp(0.049087385212341) q[13],q[7];
cp(0.098174770424681) q[12],q[7];
cp(0.196349540849362) q[11],q[7];
cp(0.392699081698724) q[10],q[7];
cx q[6],q[5];
cp(0.000000000091432) q[41],q[6];
cp(0.000000000182865) q[40],q[6];
cp(0.000000000365730) q[39],q[6];
cp(0.000000000731459) q[38],q[6];
cp(0.000000001462918) q[37],q[6];
cp(0.000000002925836) q[36],q[6];
cp(0.000000005851672) q[35],q[6];
cp(0.000000011703345) q[34],q[6];
cp(0.000000023406689) q[33],q[6];
cp(0.000000046813379) q[32],q[6];
cp(0.000000093626757) q[31],q[6];
cp(0.000000187253514) q[30],q[6];
cp(0.000000374507028) q[29],q[6];
cp(0.000000749014057) q[28],q[6];
cp(0.000001498028113) q[27],q[6];
cp(0.000002996056226) q[26],q[6];
cp(0.000005992112453) q[25],q[6];
cp(0.000011984224905) q[24],q[6];
cp(0.000023968449811) q[23],q[6];
cp(0.000047936899621) q[22],q[6];
cp(0.000095873799243) q[21],q[6];
cp(0.000191747598486) q[20],q[6];
cp(0.000383495196971) q[19],q[6];
cp(0.000766990393943) q[18],q[6];
cp(0.001533980787886) q[17],q[6];
cp(0.003067961575771) q[16],q[6];
cp(0.006135923151543) q[15],q[6];
cp(0.012271846303085) q[14],q[6];
cp(0.024543692606170) q[13],q[6];
cp(0.049087385212341) q[12],q[6];
cp(0.098174770424681) q[11],q[6];
cp(0.196349540849362) q[10],q[6];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
cp(0.000000000045716) q[41],q[5];
cp(0.000000000091432) q[40],q[5];
cp(0.000000000182865) q[39],q[5];
cp(0.000000000365730) q[38],q[5];
cp(0.000000000731459) q[37],q[5];
cp(0.000000001462918) q[36],q[5];
cp(0.000000002925836) q[35],q[5];
cp(0.000000005851672) q[34],q[5];
cp(0.000000011703345) q[33],q[5];
cp(0.000000023406689) q[32],q[5];
cp(0.000000046813379) q[31],q[5];
cp(0.000000093626757) q[30],q[5];
cp(0.000000187253514) q[29],q[5];
cp(0.000000374507028) q[28],q[5];
cp(0.000000749014057) q[27],q[5];
cp(0.000001498028113) q[26],q[5];
cp(0.000002996056226) q[25],q[5];
cp(0.000005992112453) q[24],q[5];
cp(0.000011984224905) q[23],q[5];
cp(0.000023968449811) q[22],q[5];
cp(0.000047936899621) q[21],q[5];
cp(0.000095873799243) q[20],q[5];
cp(0.000191747598486) q[19],q[5];
cp(0.000383495196971) q[18],q[5];
cp(0.000766990393943) q[17],q[5];
cp(0.001533980787886) q[16],q[5];
cp(0.003067961575771) q[15],q[5];
cp(0.006135923151543) q[14],q[5];
cp(0.012271846303085) q[13],q[5];
cp(0.024543692606170) q[12],q[5];
cp(0.049087385212341) q[11],q[5];
cp(0.098174770424681) q[10],q[5];
cp(0.000000000022858) q[41],q[4];
cp(0.000000000045716) q[40],q[4];
cp(0.000000000091432) q[39],q[4];
cp(0.000000000182865) q[38],q[4];
cp(0.000000000365730) q[37],q[4];
cp(0.000000000731459) q[36],q[4];
cp(0.000000001462918) q[35],q[4];
cp(0.000000002925836) q[34],q[4];
cp(0.000000005851672) q[33],q[4];
cp(0.000000011703345) q[32],q[4];
cp(0.000000023406689) q[31],q[4];
cp(0.000000046813379) q[30],q[4];
cp(0.000000093626757) q[29],q[4];
cp(0.000000187253514) q[28],q[4];
cp(0.000000374507028) q[27],q[4];
cp(0.000000749014057) q[26],q[4];
cp(0.000001498028113) q[25],q[4];
cp(0.000002996056226) q[24],q[4];
cp(0.000005992112453) q[23],q[4];
cp(0.000011984224905) q[22],q[4];
cp(0.000023968449811) q[21],q[4];
cp(0.000047936899621) q[20],q[4];
cp(0.000095873799243) q[19],q[4];
cp(0.000191747598486) q[18],q[4];
cp(0.000383495196971) q[17],q[4];
cp(0.000766990393943) q[16],q[4];
cp(0.001533980787886) q[15],q[4];
cp(0.003067961575771) q[14],q[4];
cp(0.006135923151543) q[13],q[4];
cp(0.012271846303085) q[12],q[4];
cp(0.024543692606170) q[11],q[4];
cp(0.049087385212341) q[10],q[4];
cp(0.000000000011429) q[41],q[3];
cp(0.000000000022858) q[40],q[3];
cp(0.000000000045716) q[39],q[3];
cp(0.000000000091432) q[38],q[3];
cp(0.000000000182865) q[37],q[3];
cp(0.000000000365730) q[36],q[3];
cp(0.000000000731459) q[35],q[3];
cp(0.000000001462918) q[34],q[3];
cp(0.000000002925836) q[33],q[3];
cp(0.000000005851672) q[32],q[3];
cp(0.000000011703345) q[31],q[3];
cp(0.000000023406689) q[30],q[3];
cp(0.000000046813379) q[29],q[3];
cp(0.000000093626757) q[28],q[3];
cp(0.000000187253514) q[27],q[3];
cp(0.000000374507028) q[26],q[3];
cp(0.000000749014057) q[25],q[3];
cp(0.000001498028113) q[24],q[3];
cp(0.000002996056226) q[23],q[3];
cp(0.000005992112453) q[22],q[3];
cp(0.000011984224905) q[21],q[3];
cp(0.000023968449811) q[20],q[3];
cp(0.000047936899621) q[19],q[3];
cp(0.000095873799243) q[18],q[3];
cp(0.000191747598486) q[17],q[3];
cp(0.000383495196971) q[16],q[3];
cp(0.000766990393943) q[15],q[3];
cp(0.001533980787886) q[14],q[3];
cp(0.003067961575771) q[13],q[3];
cp(0.006135923151543) q[12],q[3];
cp(0.012271846303085) q[11],q[3];
cp(0.024543692606170) q[10],q[3];
cp(0.000000000005715) q[41],q[2];
cp(0.000000000011429) q[40],q[2];
cp(0.000000000022858) q[39],q[2];
cp(0.000000000045716) q[38],q[2];
cp(0.000000000091432) q[37],q[2];
cp(0.000000000182865) q[36],q[2];
cp(0.000000000365730) q[35],q[2];
cp(0.000000000731459) q[34],q[2];
cp(0.000000001462918) q[33],q[2];
cp(0.000000002925836) q[32],q[2];
cp(0.000000005851672) q[31],q[2];
cp(0.000000011703345) q[30],q[2];
cp(0.000000023406689) q[29],q[2];
cp(0.000000046813379) q[28],q[2];
cp(0.000000093626757) q[27],q[2];
cp(0.000000187253514) q[26],q[2];
cp(0.000000374507028) q[25],q[2];
cp(0.000000749014057) q[24],q[2];
cp(0.000001498028113) q[23],q[2];
cp(0.000002996056226) q[22],q[2];
cp(0.000005992112453) q[21],q[2];
cp(0.000011984224905) q[20],q[2];
cp(0.000023968449811) q[19],q[2];
cp(0.000047936899621) q[18],q[2];
cp(0.000095873799243) q[17],q[2];
cp(0.000191747598486) q[16],q[2];
cp(0.000383495196971) q[15],q[2];
cp(0.000766990393943) q[14],q[2];
cp(0.001533980787886) q[13],q[2];
cp(0.003067961575771) q[12],q[2];
cp(0.006135923151543) q[11],q[2];
cp(0.012271846303085) q[10],q[2];
cp(0.000000000002857) q[41],q[1];
cp(0.000000000005715) q[40],q[1];
cp(0.000000000011429) q[39],q[1];
cp(0.000000000022858) q[38],q[1];
cp(0.000000000045716) q[37],q[1];
cp(0.000000000091432) q[36],q[1];
cp(0.000000000182865) q[35],q[1];
cp(0.000000000365730) q[34],q[1];
cp(0.000000000731459) q[33],q[1];
cp(0.000000001462918) q[32],q[1];
cp(0.000000002925836) q[31],q[1];
cp(0.000000005851672) q[30],q[1];
cp(0.000000011703345) q[29],q[1];
cp(0.000000023406689) q[28],q[1];
cp(0.000000046813379) q[27],q[1];
cp(0.000000093626757) q[26],q[1];
cp(0.000000187253514) q[25],q[1];
cp(0.000000374507028) q[24],q[1];
cp(0.000000749014057) q[23],q[1];
cp(0.000001498028113) q[22],q[1];
cp(0.000002996056226) q[21],q[1];
cp(0.000005992112453) q[20],q[1];
cp(0.000011984224905) q[19],q[1];
cp(0.000023968449811) q[18],q[1];
cp(0.000047936899621) q[17],q[1];
cp(0.000095873799243) q[16],q[1];
cp(0.000191747598486) q[15],q[1];
cp(0.000383495196971) q[14],q[1];
cp(0.000766990393943) q[13],q[1];
cp(0.001533980787886) q[12],q[1];
cp(0.003067961575771) q[11],q[1];
cp(0.006135923151543) q[10],q[1];
cp(0.000000000001429) q[41],q[0];
cp(0.000000000002857) q[40],q[0];
cp(0.000000000005715) q[39],q[0];
cp(0.000000000011429) q[38],q[0];
cp(0.000000000022858) q[37],q[0];
cp(0.000000000045716) q[36],q[0];
cp(0.000000000091432) q[35],q[0];
cp(0.000000000182865) q[34],q[0];
cp(0.000000000365730) q[33],q[0];
cp(0.000000000731459) q[32],q[0];
cp(0.000000001462918) q[31],q[0];
cp(0.000000002925836) q[30],q[0];
cp(0.000000005851672) q[29],q[0];
cp(0.000000011703345) q[28],q[0];
cp(0.000000023406689) q[27],q[0];
cp(0.000000046813379) q[26],q[0];
cp(0.000000093626757) q[25],q[0];
cp(0.000000187253514) q[24],q[0];
cp(0.000000374507028) q[23],q[0];
cp(0.000000749014057) q[22],q[0];
cp(0.000001498028113) q[21],q[0];
cp(0.000002996056226) q[20],q[0];
cp(0.000005992112453) q[19],q[0];
cp(0.000011984224905) q[18],q[0];
cp(0.000023968449811) q[17],q[0];
cp(0.000047936899621) q[16],q[0];
cp(0.000095873799243) q[15],q[0];
cp(0.000191747598486) q[14],q[0];
cp(0.000383495196971) q[13],q[0];
cp(0.000766990393943) q[12],q[0];
cp(0.001533980787886) q[11],q[0];
cp(0.003067961575771) q[10],q[0];
h q[9];
cp(1.570796326794897) q[9],q[8];
h q[8];
cp(0.785398163397448) q[9],q[7];
cp(1.570796326794897) q[8],q[7];
h q[7];
cp(0.392699081698724) q[9],q[6];
cp(0.785398163397448) q[8],q[6];
cp(1.570796326794897) q[7],q[6];
h q[6];
cp(0.196349540849362) q[9],q[5];
cp(0.392699081698724) q[8],q[5];
cp(0.785398163397448) q[7],q[5];
cp(1.570796326794897) q[6],q[5];
h q[5];
cp(0.098174770424681) q[9],q[4];
cp(0.196349540849362) q[8],q[4];
cp(0.392699081698724) q[7],q[4];
cp(0.785398163397448) q[6],q[4];
cp(1.570796326794897) q[5],q[4];
h q[4];
cp(0.049087385212341) q[9],q[3];
cp(0.098174770424681) q[8],q[3];
cp(0.196349540849362) q[7],q[3];
cp(0.392699081698724) q[6],q[3];
cp(0.785398163397448) q[5],q[3];
cp(1.570796326794897) q[4],q[3];
h q[3];
cp(0.024543692606170) q[9],q[2];
cp(0.049087385212341) q[8],q[2];
cp(0.098174770424681) q[7],q[2];
cp(0.196349540849362) q[6],q[2];
cp(0.392699081698724) q[5],q[2];
cp(0.785398163397448) q[4],q[2];
cp(1.570796326794897) q[3],q[2];
h q[2];
cp(0.012271846303085) q[9],q[1];
cp(0.024543692606170) q[8],q[1];
cp(0.049087385212341) q[7],q[1];
cp(0.098174770424681) q[6],q[1];
cp(0.196349540849362) q[5],q[1];
cp(0.392699081698724) q[4],q[1];
cp(0.785398163397448) q[3],q[1];
cp(1.570796326794897) q[2],q[1];
h q[1];
cp(0.006135923151543) q[9],q[0];
cp(0.012271846303085) q[8],q[0];
cp(0.024543692606170) q[7],q[0];
cp(0.049087385212341) q[6],q[0];
cp(0.098174770424681) q[5],q[0];
cp(0.196349540849362) q[4],q[0];
cp(0.392699081698724) q[3],q[0];
cp(0.785398163397448) q[2],q[0];
cp(1.570796326794897) q[1],q[0];
h q[0];
