OPENQASM 2.0;
include "qelib1.inc";
qreg q[35];
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
x q[0];
cp(0.448778551713748) q[0],q[1];
cp(0.897557103427496) q[0],q[2];
cp(1.795114206854992) q[0],q[3];
cp(-2.692956893469602) q[0],q[4];
cp(0.897271520240381) q[0],q[5];
cp(1.794543040480763) q[0],q[6];
cp(-2.694099226218061) q[0],q[7];
cp(0.894986854743464) q[0],q[8];
cp(1.789973709486929) q[0],q[9];
cp(-2.703237888205729) q[0],q[10];
cp(0.876709530768129) q[0],q[11];
cp(1.753419061536257) q[0],q[12];
cp(-2.776347184107071) q[0],q[13];
cp(0.730490938965444) q[0],q[14];
cp(1.460981877930888) q[0],q[15];
cp(2.921963755861776) q[0],q[16];
cp(-0.439257795456034) q[0],q[17];
cp(-0.878515590912069) q[0],q[18];
cp(-1.757031181824138) q[0],q[19];
cp(2.769122943531311) q[0],q[20];
cp(-0.744939420116964) q[0],q[21];
cp(-1.489878840233929) q[0],q[22];
cp(-2.979757680467858) q[0],q[23];
cp(0.323669946243870) q[0],q[24];
cp(0.647339892487741) q[0],q[25];
cp(1.294679784975481) q[0],q[26];
cp(2.589359569950962) q[0],q[27];
cp(-1.104466167277662) q[0],q[28];
cp(-2.208932334555323) q[0],q[29];
cp(1.865320638068940) q[0],q[30];
cp(-2.552544031041707) q[0],q[31];
cp(1.178097245096172) q[0],q[32];
cp(2.356194490192345) q[0],q[33];
cp(-1.570796326794897) q[0],q[34];
h q[34];
cp(-1.570796326794897) q[33],q[34];
h q[33];
cp(-0.785398163397448) q[32],q[34];
cp(-1.570796326794897) q[32],q[33];
h q[32];
cp(-0.392699081698724) q[31],q[34];
cp(-0.785398163397448) q[31],q[33];
cp(-1.570796326794897) q[31],q[32];
h q[31];
cp(-0.196349540849362) q[30],q[34];
cp(-0.392699081698724) q[30],q[33];
cp(-0.785398163397448) q[30],q[32];
cp(-1.570796326794897) q[30],q[31];
h q[30];
cp(-0.098174770424681) q[29],q[34];
cp(-0.196349540849362) q[29],q[33];
cp(-0.392699081698724) q[29],q[32];
cp(-0.785398163397448) q[29],q[31];
cp(-1.570796326794897) q[29],q[30];
h q[29];
cp(-0.049087385212341) q[28],q[34];
cp(-0.098174770424681) q[28],q[33];
cp(-0.196349540849362) q[28],q[32];
cp(-0.392699081698724) q[28],q[31];
cp(-0.785398163397448) q[28],q[30];
cp(-1.570796326794897) q[28],q[29];
h q[28];
cp(-0.024543692606170) q[27],q[34];
cp(-0.049087385212341) q[27],q[33];
cp(-0.098174770424681) q[27],q[32];
cp(-0.196349540849362) q[27],q[31];
cp(-0.392699081698724) q[27],q[30];
cp(-0.785398163397448) q[27],q[29];
cp(-1.570796326794897) q[27],q[28];
h q[27];
cp(-0.012271846303085) q[26],q[34];
cp(-0.024543692606170) q[26],q[33];
cp(-0.049087385212341) q[26],q[32];
cp(-0.098174770424681) q[26],q[31];
cp(-0.196349540849362) q[26],q[30];
cp(-0.392699081698724) q[26],q[29];
cp(-0.785398163397448) q[26],q[28];
cp(-1.570796326794897) q[26],q[27];
h q[26];
cp(-0.006135923151543) q[25],q[34];
cp(-0.012271846303085) q[25],q[33];
cp(-0.024543692606170) q[25],q[32];
cp(-0.049087385212341) q[25],q[31];
cp(-0.098174770424681) q[25],q[30];
cp(-0.196349540849362) q[25],q[29];
cp(-0.392699081698724) q[25],q[28];
cp(-0.785398163397448) q[25],q[27];
cp(-1.570796326794897) q[25],q[26];
h q[25];
cp(-0.003067961575771) q[24],q[34];
cp(-0.006135923151543) q[24],q[33];
cp(-0.012271846303085) q[24],q[32];
cp(-0.024543692606170) q[24],q[31];
cp(-0.049087385212341) q[24],q[30];
cp(-0.098174770424681) q[24],q[29];
cp(-0.196349540849362) q[24],q[28];
cp(-0.392699081698724) q[24],q[27];
cp(-0.785398163397448) q[24],q[26];
cp(-1.570796326794897) q[24],q[25];
h q[24];
cp(-0.001533980787886) q[23],q[34];
cp(-0.003067961575771) q[23],q[33];
cp(-0.006135923151543) q[23],q[32];
cp(-0.012271846303085) q[23],q[31];
cp(-0.024543692606170) q[23],q[30];
cp(-0.049087385212341) q[23],q[29];
cp(-0.098174770424681) q[23],q[28];
cp(-0.196349540849362) q[23],q[27];
cp(-0.392699081698724) q[23],q[26];
cp(-0.785398163397448) q[23],q[25];
cp(-1.570796326794897) q[23],q[24];
h q[23];
cp(-0.000766990393943) q[22],q[34];
cp(-0.001533980787886) q[22],q[33];
cp(-0.003067961575771) q[22],q[32];
cp(-0.006135923151543) q[22],q[31];
cp(-0.012271846303085) q[22],q[30];
cp(-0.024543692606170) q[22],q[29];
cp(-0.049087385212341) q[22],q[28];
cp(-0.098174770424681) q[22],q[27];
cp(-0.196349540849362) q[22],q[26];
cp(-0.392699081698724) q[22],q[25];
cp(-0.785398163397448) q[22],q[24];
cp(-1.570796326794897) q[22],q[23];
h q[22];
cp(-0.000383495196971) q[21],q[34];
cp(-0.000766990393943) q[21],q[33];
cp(-0.001533980787886) q[21],q[32];
cp(-0.003067961575771) q[21],q[31];
cp(-0.006135923151543) q[21],q[30];
cp(-0.012271846303085) q[21],q[29];
cp(-0.024543692606170) q[21],q[28];
cp(-0.049087385212341) q[21],q[27];
cp(-0.098174770424681) q[21],q[26];
cp(-0.196349540849362) q[21],q[25];
cp(-0.392699081698724) q[21],q[24];
cp(-0.785398163397448) q[21],q[23];
cp(-1.570796326794897) q[21],q[22];
h q[21];
cp(-0.000191747598486) q[20],q[34];
cp(-0.000383495196971) q[20],q[33];
cp(-0.000766990393943) q[20],q[32];
cp(-0.001533980787886) q[20],q[31];
cp(-0.003067961575771) q[20],q[30];
cp(-0.006135923151543) q[20],q[29];
cp(-0.012271846303085) q[20],q[28];
cp(-0.024543692606170) q[20],q[27];
cp(-0.049087385212341) q[20],q[26];
cp(-0.098174770424681) q[20],q[25];
cp(-0.196349540849362) q[20],q[24];
cp(-0.392699081698724) q[20],q[23];
cp(-0.785398163397448) q[20],q[22];
cp(-1.570796326794897) q[20],q[21];
h q[20];
cp(-0.000095873799243) q[19],q[34];
cp(-0.000191747598486) q[19],q[33];
cp(-0.000383495196971) q[19],q[32];
cp(-0.000766990393943) q[19],q[31];
cp(-0.001533980787886) q[19],q[30];
cp(-0.003067961575771) q[19],q[29];
cp(-0.006135923151543) q[19],q[28];
cp(-0.012271846303085) q[19],q[27];
cp(-0.024543692606170) q[19],q[26];
cp(-0.049087385212341) q[19],q[25];
cp(-0.098174770424681) q[19],q[24];
cp(-0.196349540849362) q[19],q[23];
cp(-0.392699081698724) q[19],q[22];
cp(-0.785398163397448) q[19],q[21];
cp(-1.570796326794897) q[19],q[20];
h q[19];
cp(-0.000047936899621) q[18],q[34];
cp(-0.000095873799243) q[18],q[33];
cp(-0.000191747598486) q[18],q[32];
cp(-0.000383495196971) q[18],q[31];
cp(-0.000766990393943) q[18],q[30];
cp(-0.001533980787886) q[18],q[29];
cp(-0.003067961575771) q[18],q[28];
cp(-0.006135923151543) q[18],q[27];
cp(-0.012271846303085) q[18],q[26];
cp(-0.024543692606170) q[18],q[25];
cp(-0.049087385212341) q[18],q[24];
cp(-0.098174770424681) q[18],q[23];
cp(-0.196349540849362) q[18],q[22];
cp(-0.392699081698724) q[18],q[21];
cp(-0.785398163397448) q[18],q[20];
cp(-1.570796326794897) q[18],q[19];
h q[18];
cp(-0.000023968449811) q[17],q[34];
cp(-0.000047936899621) q[17],q[33];
cp(-0.000095873799243) q[17],q[32];
cp(-0.000191747598486) q[17],q[31];
cp(-0.000383495196971) q[17],q[30];
cp(-0.000766990393943) q[17],q[29];
cp(-0.001533980787886) q[17],q[28];
cp(-0.003067961575771) q[17],q[27];
cp(-0.006135923151543) q[17],q[26];
cp(-0.012271846303085) q[17],q[25];
cp(-0.024543692606170) q[17],q[24];
cp(-0.049087385212341) q[17],q[23];
cp(-0.098174770424681) q[17],q[22];
cp(-0.196349540849362) q[17],q[21];
cp(-0.392699081698724) q[17],q[20];
cp(-0.785398163397448) q[17],q[19];
cp(-1.570796326794897) q[17],q[18];
h q[17];
cp(-0.000011984224905) q[16],q[34];
cp(-0.000023968449811) q[16],q[33];
cp(-0.000047936899621) q[16],q[32];
cp(-0.000095873799243) q[16],q[31];
cp(-0.000191747598486) q[16],q[30];
cp(-0.000383495196971) q[16],q[29];
cp(-0.000766990393943) q[16],q[28];
cp(-0.001533980787886) q[16],q[27];
cp(-0.003067961575771) q[16],q[26];
cp(-0.006135923151543) q[16],q[25];
cp(-0.012271846303085) q[16],q[24];
cp(-0.024543692606170) q[16],q[23];
cp(-0.049087385212341) q[16],q[22];
cp(-0.098174770424681) q[16],q[21];
cp(-0.196349540849362) q[16],q[20];
cp(-0.392699081698724) q[16],q[19];
cp(-0.785398163397448) q[16],q[18];
cp(-1.570796326794897) q[16],q[17];
h q[16];
cp(-0.000005992112453) q[15],q[34];
cp(-0.000011984224905) q[15],q[33];
cp(-0.000023968449811) q[15],q[32];
cp(-0.000047936899621) q[15],q[31];
cp(-0.000095873799243) q[15],q[30];
cp(-0.000191747598486) q[15],q[29];
cp(-0.000383495196971) q[15],q[28];
cp(-0.000766990393943) q[15],q[27];
cp(-0.001533980787886) q[15],q[26];
cp(-0.003067961575771) q[15],q[25];
cp(-0.006135923151543) q[15],q[24];
cp(-0.012271846303085) q[15],q[23];
cp(-0.024543692606170) q[15],q[22];
cp(-0.049087385212341) q[15],q[21];
cp(-0.098174770424681) q[15],q[20];
cp(-0.196349540849362) q[15],q[19];
cp(-0.392699081698724) q[15],q[18];
cp(-0.785398163397448) q[15],q[17];
cp(-1.570796326794897) q[15],q[16];
h q[15];
cp(-0.000002996056226) q[14],q[34];
cp(-0.000005992112453) q[14],q[33];
cp(-0.000011984224905) q[14],q[32];
cp(-0.000023968449811) q[14],q[31];
cp(-0.000047936899621) q[14],q[30];
cp(-0.000095873799243) q[14],q[29];
cp(-0.000191747598486) q[14],q[28];
cp(-0.000383495196971) q[14],q[27];
cp(-0.000766990393943) q[14],q[26];
cp(-0.001533980787886) q[14],q[25];
cp(-0.003067961575771) q[14],q[24];
cp(-0.006135923151543) q[14],q[23];
cp(-0.012271846303085) q[14],q[22];
cp(-0.024543692606170) q[14],q[21];
cp(-0.049087385212341) q[14],q[20];
cp(-0.098174770424681) q[14],q[19];
cp(-0.196349540849362) q[14],q[18];
cp(-0.392699081698724) q[14],q[17];
cp(-0.785398163397448) q[14],q[16];
cp(-1.570796326794897) q[14],q[15];
h q[14];
cp(-0.000001498028113) q[13],q[34];
cp(-0.000002996056226) q[13],q[33];
cp(-0.000005992112453) q[13],q[32];
cp(-0.000011984224905) q[13],q[31];
cp(-0.000023968449811) q[13],q[30];
cp(-0.000047936899621) q[13],q[29];
cp(-0.000095873799243) q[13],q[28];
cp(-0.000191747598486) q[13],q[27];
cp(-0.000383495196971) q[13],q[26];
cp(-0.000766990393943) q[13],q[25];
cp(-0.001533980787886) q[13],q[24];
cp(-0.003067961575771) q[13],q[23];
cp(-0.006135923151543) q[13],q[22];
cp(-0.012271846303085) q[13],q[21];
cp(-0.024543692606170) q[13],q[20];
cp(-0.049087385212341) q[13],q[19];
cp(-0.098174770424681) q[13],q[18];
cp(-0.196349540849362) q[13],q[17];
cp(-0.392699081698724) q[13],q[16];
cp(-0.785398163397448) q[13],q[15];
cp(-1.570796326794897) q[13],q[14];
h q[13];
cp(-0.000000749014057) q[12],q[34];
cp(-0.000001498028113) q[12],q[33];
cp(-0.000002996056226) q[12],q[32];
cp(-0.000005992112453) q[12],q[31];
cp(-0.000011984224905) q[12],q[30];
cp(-0.000023968449811) q[12],q[29];
cp(-0.000047936899621) q[12],q[28];
cp(-0.000095873799243) q[12],q[27];
cp(-0.000191747598486) q[12],q[26];
cp(-0.000383495196971) q[12],q[25];
cp(-0.000766990393943) q[12],q[24];
cp(-0.001533980787886) q[12],q[23];
cp(-0.003067961575771) q[12],q[22];
cp(-0.006135923151543) q[12],q[21];
cp(-0.012271846303085) q[12],q[20];
cp(-0.024543692606170) q[12],q[19];
cp(-0.049087385212341) q[12],q[18];
cp(-0.098174770424681) q[12],q[17];
cp(-0.196349540849362) q[12],q[16];
cp(-0.392699081698724) q[12],q[15];
cp(-0.785398163397448) q[12],q[14];
cp(-1.570796326794897) q[12],q[13];
h q[12];
cp(-0.000000374507028) q[11],q[34];
cp(-0.000000749014057) q[11],q[33];
cp(-0.000001498028113) q[11],q[32];
cp(-0.000002996056226) q[11],q[31];
cp(-0.000005992112453) q[11],q[30];
cp(-0.000011984224905) q[11],q[29];
cp(-0.000023968449811) q[11],q[28];
cp(-0.000047936899621) q[11],q[27];
cp(-0.000095873799243) q[11],q[26];
cp(-0.000191747598486) q[11],q[25];
cp(-0.000383495196971) q[11],q[24];
cp(-0.000766990393943) q[11],q[23];
cp(-0.001533980787886) q[11],q[22];
cp(-0.003067961575771) q[11],q[21];
cp(-0.006135923151543) q[11],q[20];
cp(-0.012271846303085) q[11],q[19];
cp(-0.024543692606170) q[11],q[18];
cp(-0.049087385212341) q[11],q[17];
cp(-0.098174770424681) q[11],q[16];
cp(-0.196349540849362) q[11],q[15];
cp(-0.392699081698724) q[11],q[14];
cp(-0.785398163397448) q[11],q[13];
cp(-1.570796326794897) q[11],q[12];
h q[11];
cp(-0.000000187253514) q[10],q[34];
cp(-0.000000374507028) q[10],q[33];
cp(-0.000000749014057) q[10],q[32];
cp(-0.000001498028113) q[10],q[31];
cp(-0.000002996056226) q[10],q[30];
cp(-0.000005992112453) q[10],q[29];
cp(-0.000011984224905) q[10],q[28];
cp(-0.000023968449811) q[10],q[27];
cp(-0.000047936899621) q[10],q[26];
cp(-0.000095873799243) q[10],q[25];
cp(-0.000191747598486) q[10],q[24];
cp(-0.000383495196971) q[10],q[23];
cp(-0.000766990393943) q[10],q[22];
cp(-0.001533980787886) q[10],q[21];
cp(-0.003067961575771) q[10],q[20];
cp(-0.006135923151543) q[10],q[19];
cp(-0.012271846303085) q[10],q[18];
cp(-0.024543692606170) q[10],q[17];
cp(-0.049087385212341) q[10],q[16];
cp(-0.098174770424681) q[10],q[15];
cp(-0.196349540849362) q[10],q[14];
cp(-0.392699081698724) q[10],q[13];
cp(-0.785398163397448) q[10],q[12];
cp(-1.570796326794897) q[10],q[11];
h q[10];
cp(-0.000000093626757) q[9],q[34];
cp(-0.000000187253514) q[9],q[33];
cp(-0.000000374507028) q[9],q[32];
cp(-0.000000749014057) q[9],q[31];
cp(-0.000001498028113) q[9],q[30];
cp(-0.000002996056226) q[9],q[29];
cp(-0.000005992112453) q[9],q[28];
cp(-0.000011984224905) q[9],q[27];
cp(-0.000023968449811) q[9],q[26];
cp(-0.000047936899621) q[9],q[25];
cp(-0.000095873799243) q[9],q[24];
cp(-0.000191747598486) q[9],q[23];
cp(-0.000383495196971) q[9],q[22];
cp(-0.000766990393943) q[9],q[21];
cp(-0.001533980787886) q[9],q[20];
cp(-0.003067961575771) q[9],q[19];
cp(-0.006135923151543) q[9],q[18];
cp(-0.012271846303085) q[9],q[17];
cp(-0.024543692606170) q[9],q[16];
cp(-0.049087385212341) q[9],q[15];
cp(-0.098174770424681) q[9],q[14];
cp(-0.196349540849362) q[9],q[13];
cp(-0.392699081698724) q[9],q[12];
cp(-0.785398163397448) q[9],q[11];
cp(-1.570796326794897) q[9],q[10];
h q[9];
cp(-0.000000046813379) q[8],q[34];
cp(-0.000000093626757) q[8],q[33];
cp(-0.000000187253514) q[8],q[32];
cp(-0.000000374507028) q[8],q[31];
cp(-0.000000749014057) q[8],q[30];
cp(-0.000001498028113) q[8],q[29];
cp(-0.000002996056226) q[8],q[28];
cp(-0.000005992112453) q[8],q[27];
cp(-0.000011984224905) q[8],q[26];
cp(-0.000023968449811) q[8],q[25];
cp(-0.000047936899621) q[8],q[24];
cp(-0.000095873799243) q[8],q[23];
cp(-0.000191747598486) q[8],q[22];
cp(-0.000383495196971) q[8],q[21];
cp(-0.000766990393943) q[8],q[20];
cp(-0.001533980787886) q[8],q[19];
cp(-0.003067961575771) q[8],q[18];
cp(-0.006135923151543) q[8],q[17];
cp(-0.012271846303085) q[8],q[16];
cp(-0.024543692606170) q[8],q[15];
cp(-0.049087385212341) q[8],q[14];
cp(-0.098174770424681) q[8],q[13];
cp(-0.196349540849362) q[8],q[12];
cp(-0.392699081698724) q[8],q[11];
cp(-0.785398163397448) q[8],q[10];
cp(-1.570796326794897) q[8],q[9];
h q[8];
cp(-0.000000023406689) q[7],q[34];
cp(-0.000000046813379) q[7],q[33];
cp(-0.000000093626757) q[7],q[32];
cp(-0.000000187253514) q[7],q[31];
cp(-0.000000374507028) q[7],q[30];
cp(-0.000000749014057) q[7],q[29];
cp(-0.000001498028113) q[7],q[28];
cp(-0.000002996056226) q[7],q[27];
cp(-0.000005992112453) q[7],q[26];
cp(-0.000011984224905) q[7],q[25];
cp(-0.000023968449811) q[7],q[24];
cp(-0.000047936899621) q[7],q[23];
cp(-0.000095873799243) q[7],q[22];
cp(-0.000191747598486) q[7],q[21];
cp(-0.000383495196971) q[7],q[20];
cp(-0.000766990393943) q[7],q[19];
cp(-0.001533980787886) q[7],q[18];
cp(-0.003067961575771) q[7],q[17];
cp(-0.006135923151543) q[7],q[16];
cp(-0.012271846303085) q[7],q[15];
cp(-0.024543692606170) q[7],q[14];
cp(-0.049087385212341) q[7],q[13];
cp(-0.098174770424681) q[7],q[12];
cp(-0.196349540849362) q[7],q[11];
cp(-0.392699081698724) q[7],q[10];
cp(-0.785398163397448) q[7],q[9];
cp(-1.570796326794897) q[7],q[8];
h q[7];
cp(-0.000000011703345) q[6],q[34];
cp(-0.000000023406689) q[6],q[33];
cp(-0.000000046813379) q[6],q[32];
cp(-0.000000093626757) q[6],q[31];
cp(-0.000000187253514) q[6],q[30];
cp(-0.000000374507028) q[6],q[29];
cp(-0.000000749014057) q[6],q[28];
cp(-0.000001498028113) q[6],q[27];
cp(-0.000002996056226) q[6],q[26];
cp(-0.000005992112453) q[6],q[25];
cp(-0.000011984224905) q[6],q[24];
cp(-0.000023968449811) q[6],q[23];
cp(-0.000047936899621) q[6],q[22];
cp(-0.000095873799243) q[6],q[21];
cp(-0.000191747598486) q[6],q[20];
cp(-0.000383495196971) q[6],q[19];
cp(-0.000766990393943) q[6],q[18];
cp(-0.001533980787886) q[6],q[17];
cp(-0.003067961575771) q[6],q[16];
cp(-0.006135923151543) q[6],q[15];
cp(-0.012271846303085) q[6],q[14];
cp(-0.024543692606170) q[6],q[13];
cp(-0.049087385212341) q[6],q[12];
cp(-0.098174770424681) q[6],q[11];
cp(-0.196349540849362) q[6],q[10];
cp(-0.392699081698724) q[6],q[9];
cp(-0.785398163397448) q[6],q[8];
cp(-1.570796326794897) q[6],q[7];
h q[6];
cp(-0.000000005851672) q[5],q[34];
cp(-0.000000011703345) q[5],q[33];
cp(-0.000000023406689) q[5],q[32];
cp(-0.000000046813379) q[5],q[31];
cp(-0.000000093626757) q[5],q[30];
cp(-0.000000187253514) q[5],q[29];
cp(-0.000000374507028) q[5],q[28];
cp(-0.000000749014057) q[5],q[27];
cp(-0.000001498028113) q[5],q[26];
cp(-0.000002996056226) q[5],q[25];
cp(-0.000005992112453) q[5],q[24];
cp(-0.000011984224905) q[5],q[23];
cp(-0.000023968449811) q[5],q[22];
cp(-0.000047936899621) q[5],q[21];
cp(-0.000095873799243) q[5],q[20];
cp(-0.000191747598486) q[5],q[19];
cp(-0.000383495196971) q[5],q[18];
cp(-0.000766990393943) q[5],q[17];
cp(-0.001533980787886) q[5],q[16];
cp(-0.003067961575771) q[5],q[15];
cp(-0.006135923151543) q[5],q[14];
cp(-0.012271846303085) q[5],q[13];
cp(-0.024543692606170) q[5],q[12];
cp(-0.049087385212341) q[5],q[11];
cp(-0.098174770424681) q[5],q[10];
cp(-0.196349540849362) q[5],q[9];
cp(-0.392699081698724) q[5],q[8];
cp(-0.785398163397448) q[5],q[7];
cp(-1.570796326794897) q[5],q[6];
h q[5];
cp(-0.000000002925836) q[4],q[34];
cp(-0.000000005851672) q[4],q[33];
cp(-0.000000011703345) q[4],q[32];
cp(-0.000000023406689) q[4],q[31];
cp(-0.000000046813379) q[4],q[30];
cp(-0.000000093626757) q[4],q[29];
cp(-0.000000187253514) q[4],q[28];
cp(-0.000000374507028) q[4],q[27];
cp(-0.000000749014057) q[4],q[26];
cp(-0.000001498028113) q[4],q[25];
cp(-0.000002996056226) q[4],q[24];
cp(-0.000005992112453) q[4],q[23];
cp(-0.000011984224905) q[4],q[22];
cp(-0.000023968449811) q[4],q[21];
cp(-0.000047936899621) q[4],q[20];
cp(-0.000095873799243) q[4],q[19];
cp(-0.000191747598486) q[4],q[18];
cp(-0.000383495196971) q[4],q[17];
cp(-0.000766990393943) q[4],q[16];
cp(-0.001533980787886) q[4],q[15];
cp(-0.003067961575771) q[4],q[14];
cp(-0.006135923151543) q[4],q[13];
cp(-0.012271846303085) q[4],q[12];
cp(-0.024543692606170) q[4],q[11];
cp(-0.049087385212341) q[4],q[10];
cp(-0.098174770424681) q[4],q[9];
cp(-0.196349540849362) q[4],q[8];
cp(-0.392699081698724) q[4],q[7];
cp(-0.785398163397448) q[4],q[6];
cp(-1.570796326794897) q[4],q[5];
h q[4];
cp(-0.000000001462918) q[3],q[34];
cp(-0.000000002925836) q[3],q[33];
cp(-0.000000005851672) q[3],q[32];
cp(-0.000000011703345) q[3],q[31];
cp(-0.000000023406689) q[3],q[30];
cp(-0.000000046813379) q[3],q[29];
cp(-0.000000093626757) q[3],q[28];
cp(-0.000000187253514) q[3],q[27];
cp(-0.000000374507028) q[3],q[26];
cp(-0.000000749014057) q[3],q[25];
cp(-0.000001498028113) q[3],q[24];
cp(-0.000002996056226) q[3],q[23];
cp(-0.000005992112453) q[3],q[22];
cp(-0.000011984224905) q[3],q[21];
cp(-0.000023968449811) q[3],q[20];
cp(-0.000047936899621) q[3],q[19];
cp(-0.000095873799243) q[3],q[18];
cp(-0.000191747598486) q[3],q[17];
cp(-0.000383495196971) q[3],q[16];
cp(-0.000766990393943) q[3],q[15];
cp(-0.001533980787886) q[3],q[14];
cp(-0.003067961575771) q[3],q[13];
cp(-0.006135923151543) q[3],q[12];
cp(-0.012271846303085) q[3],q[11];
cp(-0.024543692606170) q[3],q[10];
cp(-0.049087385212341) q[3],q[9];
cp(-0.098174770424681) q[3],q[8];
cp(-0.196349540849362) q[3],q[7];
cp(-0.392699081698724) q[3],q[6];
cp(-0.785398163397448) q[3],q[5];
cp(-1.570796326794897) q[3],q[4];
h q[3];
cp(-0.000000000731459) q[2],q[34];
cp(-0.000000001462918) q[2],q[33];
cp(-0.000000002925836) q[2],q[32];
cp(-0.000000005851672) q[2],q[31];
cp(-0.000000011703345) q[2],q[30];
cp(-0.000000023406689) q[2],q[29];
cp(-0.000000046813379) q[2],q[28];
cp(-0.000000093626757) q[2],q[27];
cp(-0.000000187253514) q[2],q[26];
cp(-0.000000374507028) q[2],q[25];
cp(-0.000000749014057) q[2],q[24];
cp(-0.000001498028113) q[2],q[23];
cp(-0.000002996056226) q[2],q[22];
cp(-0.000005992112453) q[2],q[21];
cp(-0.000011984224905) q[2],q[20];
cp(-0.000023968449811) q[2],q[19];
cp(-0.000047936899621) q[2],q[18];
cp(-0.000095873799243) q[2],q[17];
cp(-0.000191747598486) q[2],q[16];
cp(-0.000383495196971) q[2],q[15];
cp(-0.000766990393943) q[2],q[14];
cp(-0.001533980787886) q[2],q[13];
cp(-0.003067961575771) q[2],q[12];
cp(-0.006135923151543) q[2],q[11];
cp(-0.012271846303085) q[2],q[10];
cp(-0.024543692606170) q[2],q[9];
cp(-0.049087385212341) q[2],q[8];
cp(-0.098174770424681) q[2],q[7];
cp(-0.196349540849362) q[2],q[6];
cp(-0.392699081698724) q[2],q[5];
cp(-0.785398163397448) q[2],q[4];
cp(-1.570796326794897) q[2],q[3];
h q[2];
cp(-0.000000000365730) q[1],q[34];
cp(-0.000000000731459) q[1],q[33];
cp(-0.000000001462918) q[1],q[32];
cp(-0.000000002925836) q[1],q[31];
cp(-0.000000005851672) q[1],q[30];
cp(-0.000000011703345) q[1],q[29];
cp(-0.000000023406689) q[1],q[28];
cp(-0.000000046813379) q[1],q[27];
cp(-0.000000093626757) q[1],q[26];
cp(-0.000000187253514) q[1],q[25];
cp(-0.000000374507028) q[1],q[24];
cp(-0.000000749014057) q[1],q[23];
cp(-0.000001498028113) q[1],q[22];
cp(-0.000002996056226) q[1],q[21];
cp(-0.000005992112453) q[1],q[20];
cp(-0.000011984224905) q[1],q[19];
cp(-0.000023968449811) q[1],q[18];
cp(-0.000047936899621) q[1],q[17];
cp(-0.000095873799243) q[1],q[16];
cp(-0.000191747598486) q[1],q[15];
cp(-0.000383495196971) q[1],q[14];
cp(-0.000766990393943) q[1],q[13];
cp(-0.001533980787886) q[1],q[12];
cp(-0.003067961575771) q[1],q[11];
cp(-0.006135923151543) q[1],q[10];
cp(-0.012271846303085) q[1],q[9];
cp(-0.024543692606170) q[1],q[8];
cp(-0.049087385212341) q[1],q[7];
cp(-0.098174770424681) q[1],q[6];
cp(-0.196349540849362) q[1],q[5];
cp(-0.392699081698724) q[1],q[4];
cp(-0.785398163397448) q[1],q[3];
cp(-1.570796326794897) q[1],q[2];
h q[1];
