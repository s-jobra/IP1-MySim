OPENQASM 2.0;
include "qelib1.inc";
qreg q[206];
creg c[206];
x q[13];
x q[15];
x q[16];
x q[19];
x q[20];
x q[23];
x q[24];
x q[26];
x q[27];
x q[28];
x q[32];
x q[33];
x q[37];
x q[39];
x q[41];
x q[42];
x q[44];
x q[45];
x q[46];
x q[49];
x q[51];
x q[52];
x q[54];
x q[55];
x q[58];
x q[59];
x q[60];
x q[67];
x q[69];
x q[71];
x q[72];
x q[73];
x q[81];
x q[88];
x q[89];
x q[90];
x q[92];
x q[93];
x q[94];
x q[95];
x q[103];
x q[104];
x q[107];
x q[108];
x q[113];
x q[118];
x q[119];
x q[121];
x q[128];
x q[130];
x q[133];
x q[142];
x q[145];
x q[147];
x q[153];
x q[160];
x q[161];
x q[164];
x q[167];
x q[168];
x q[172];
x q[174];
x q[178];
x q[179];
x q[180];
x q[183];
x q[184];
x q[188];
x q[189];
x q[190];
x q[191];
x q[192];
x q[193];
x q[195];
x q[196];
x q[199];
x q[201];
x q[202];
x q[203];
x q[204];
x q[205];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
cx q[6], q[8];
mcx q[4], q[6], q[8];
cx q[4], q[8];
cx q[5], q[9];
mcx q[5], q[8], q[9];
cx q[8], q[9];
cx q[7], q[10];
mcx q[6], q[7], q[10];
cx q[6], q[10];
cx q[5], q[11];
mcx q[5], q[10], q[11];
cx q[10], q[11];
cx q[7], q[12];
mcx q[7], q[8], q[12];
cx q[8], q[12];
mcx q[5], q[12], q[13];
cx q[5], q[13];
cx q[3], q[14];
mcx q[3], q[13], q[14];
cx q[13], q[14];
mcx q[3], q[13], q[15];
cx q[3], q[15];
mcx q[4], q[6], q[16];
cx q[6], q[16];
cx q[7], q[17];
mcx q[7], q[16], q[17];
cx q[16], q[17];
cx q[5], q[18];
mcx q[5], q[17], q[18];
cx q[17], q[18];
mcx q[3], q[18], q[19];
cx q[3], q[19];
mcx q[5], q[17], q[20];
cx q[5], q[20];
cx q[1], q[21];
mcx q[1], q[8], q[21];
cx q[8], q[21];
cx q[5], q[22];
mcx q[5], q[21], q[22];
cx q[21], q[22];
mcx q[3], q[22], q[23];
cx q[3], q[23];
mcx q[2], q[23], q[24];
cx q[2], q[24];
cx q[0], q[25];
mcx q[0], q[24], q[25];
cx q[24], q[25];
mcx q[7], q[16], q[26];
cx q[7], q[26];
mcx q[1], q[26], q[27];
cx q[1], q[27];
mcx q[5], q[27], q[28];
cx q[5], q[28];
cx q[3], q[29];
mcx q[3], q[28], q[29];
cx q[28], q[29];
cx q[2], q[30];
mcx q[2], q[29], q[30];
cx q[29], q[30];
cx q[0], q[31];
mcx q[0], q[30], q[31];
cx q[30], q[31];
mcx q[2], q[29], q[32];
cx q[2], q[32];
mcx q[0], q[32], q[33];
cx q[0], q[33];
cx q[1], q[34];
mcx q[1], q[26], q[34];
cx q[26], q[34];
cx q[5], q[35];
mcx q[5], q[34], q[35];
cx q[34], q[35];
cx q[3], q[36];
mcx q[3], q[35], q[36];
cx q[35], q[36];
mcx q[2], q[36], q[37];
cx q[2], q[37];
cx q[0], q[38];
mcx q[0], q[37], q[38];
cx q[37], q[38];
mcx q[2], q[28], q[39];
cx q[2], q[39];
cx q[0], q[40];
mcx q[0], q[39], q[40];
cx q[39], q[40];
mcx q[0], q[30], q[41];
cx q[0], q[41];
mcx q[5], q[34], q[42];
cx q[5], q[42];
cx q[3], q[43];
mcx q[3], q[42], q[43];
cx q[42], q[43];
mcx q[2], q[43], q[44];
cx q[2], q[44];
mcx q[0], q[44], q[45];
cx q[0], q[45];
mcx q[3], q[28], q[46];
cx q[3], q[46];
cx q[2], q[47];
mcx q[2], q[46], q[47];
cx q[46], q[47];
cx q[0], q[48];
mcx q[0], q[47], q[48];
cx q[47], q[48];
mcx q[3], q[42], q[49];
cx q[3], q[49];
cx q[2], q[50];
mcx q[2], q[49], q[50];
cx q[49], q[50];
mcx q[0], q[50], q[51];
cx q[0], q[51];
mcx q[2], q[46], q[52];
cx q[2], q[52];
cx q[0], q[53];
mcx q[0], q[52], q[53];
cx q[52], q[53];
mcx q[0], q[47], q[54];
cx q[0], q[54];
mcx q[1], q[4], q[55];
cx q[4], q[55];
cx q[5], q[56];
mcx q[5], q[55], q[56];
cx q[55], q[56];
cx q[2], q[57];
mcx q[2], q[56], q[57];
cx q[56], q[57];
mcx q[0], q[57], q[58];
cx q[0], q[58];
mcx q[3], q[56], q[59];
cx q[3], q[59];
mcx q[2], q[59], q[60];
cx q[2], q[60];
cx q[0], q[61];
mcx q[0], q[60], q[61];
cx q[60], q[61];
cx q[3], q[62];
mcx q[3], q[55], q[62];
cx q[55], q[62];
cx q[2], q[63];
mcx q[2], q[62], q[63];
cx q[62], q[63];
cx q[0], q[64];
mcx q[0], q[63], q[64];
cx q[63], q[64];
cx q[3], q[65];
mcx q[3], q[22], q[65];
cx q[22], q[65];
cx q[2], q[66];
mcx q[2], q[65], q[66];
cx q[65], q[66];
mcx q[0], q[66], q[67];
cx q[0], q[67];
cx q[2], q[68];
mcx q[2], q[23], q[68];
cx q[23], q[68];
mcx q[0], q[68], q[69];
cx q[0], q[69];
cx q[2], q[70];
mcx q[2], q[35], q[70];
cx q[35], q[70];
mcx q[0], q[70], q[71];
cx q[0], q[71];
mcx q[1], q[5], q[72];
cx q[5], q[72];
mcx q[3], q[72], q[73];
cx q[3], q[73];
cx q[2], q[74];
mcx q[2], q[73], q[74];
cx q[73], q[74];
cx q[0], q[75];
mcx q[0], q[74], q[75];
cx q[74], q[75];
cx q[1], q[76];
mcx q[1], q[17], q[76];
cx q[17], q[76];
cx q[5], q[77];
mcx q[5], q[76], q[77];
cx q[76], q[77];
cx q[3], q[78];
mcx q[3], q[77], q[78];
cx q[77], q[78];
cx q[2], q[79];
mcx q[2], q[78], q[79];
cx q[78], q[79];
cx q[0], q[80];
mcx q[0], q[79], q[80];
cx q[79], q[80];
mcx q[1], q[17], q[81];
cx q[1], q[81];
cx q[5], q[82];
mcx q[5], q[81], q[82];
cx q[81], q[82];
cx q[3], q[83];
mcx q[3], q[82], q[83];
cx q[82], q[83];
cx q[2], q[84];
mcx q[2], q[83], q[84];
cx q[83], q[84];
cx q[0], q[85];
mcx q[0], q[84], q[85];
cx q[84], q[85];
cx q[5], q[86];
mcx q[5], q[26], q[86];
cx q[26], q[86];
cx q[3], q[87];
mcx q[3], q[86], q[87];
cx q[86], q[87];
mcx q[2], q[87], q[88];
cx q[2], q[88];
mcx q[0], q[88], q[89];
cx q[0], q[89];
mcx q[2], q[83], q[90];
cx q[2], q[90];
cx q[0], q[91];
mcx q[0], q[90], q[91];
cx q[90], q[91];
mcx q[3], q[35], q[92];
cx q[3], q[92];
mcx q[2], q[92], q[93];
cx q[2], q[93];
mcx q[0], q[93], q[94];
cx q[0], q[94];
mcx q[7], q[8], q[95];
cx q[7], q[95];
cx q[1], q[96];
mcx q[1], q[95], q[96];
cx q[95], q[96];
cx q[5], q[97];
mcx q[5], q[96], q[97];
cx q[96], q[97];
cx q[3], q[98];
mcx q[3], q[97], q[98];
cx q[97], q[98];
cx q[2], q[99];
mcx q[2], q[98], q[99];
cx q[98], q[99];
cx q[0], q[100];
mcx q[0], q[99], q[100];
cx q[99], q[100];
cx q[5], q[101];
mcx q[5], q[27], q[101];
cx q[27], q[101];
cx q[3], q[102];
mcx q[3], q[101], q[102];
cx q[101], q[102];
mcx q[2], q[102], q[103];
cx q[2], q[103];
mcx q[0], q[103], q[104];
cx q[0], q[104];
cx q[21], q[105];
mcx q[5], q[55], q[105];
mcx q[5], q[21], q[105];
cx q[2], q[106];
mcx q[2], q[105], q[106];
cx q[105], q[106];
mcx q[5], q[55], q[107];
cx q[5], q[107];
mcx q[3], q[107], q[108];
cx q[3], q[108];
cx q[3], q[109];
mcx q[3], q[107], q[109];
cx q[107], q[109];
cx q[109], q[110];
mcx q[2], q[108], q[110];
mcx q[2], q[109], q[110];
cx q[110], q[106];
mcx q[0], q[106], q[110];
cx q[107], q[111];
mcx q[3], q[105], q[111];
mcx q[3], q[107], q[111];
cx q[2], q[112];
mcx q[2], q[111], q[112];
cx q[111], q[112];
mcx q[3], q[55], q[113];
cx q[3], q[113];
cx q[78], q[114];
mcx q[2], q[113], q[114];
mcx q[2], q[78], q[114];
cx q[114], q[115];
mcx q[0], q[112], q[115];
mcx q[0], q[114], q[115];
cx q[34], q[116];
mcx q[5], q[27], q[116];
mcx q[5], q[34], q[116];
cx q[26], q[117];
mcx q[5], q[27], q[117];
mcx q[5], q[26], q[117];
cx q[117], q[116];
mcx q[3], q[116], q[117];
mcx q[2], q[117], q[118];
cx q[2], q[118];
mcx q[0], q[118], q[119];
cx q[0], q[119];
cx q[4], q[120];
mcx q[7], q[8], q[120];
mcx q[4], q[7], q[120];
mcx q[1], q[120], q[121];
cx q[120], q[121];
cx q[121], q[122];
mcx q[5], q[12], q[122];
mcx q[5], q[121], q[122];
cx q[5], q[123];
mcx q[5], q[121], q[123];
cx q[121], q[123];
cx q[123], q[122];
mcx q[3], q[122], q[123];
cx q[123], q[124];
mcx q[2], q[15], q[124];
mcx q[2], q[123], q[124];
cx q[77], q[125];
mcx q[3], q[13], q[125];
mcx q[3], q[77], q[125];
cx q[15], q[126];
mcx q[2], q[125], q[126];
mcx q[2], q[15], q[126];
cx q[126], q[124];
mcx q[0], q[124], q[126];
cx q[2], q[127];
mcx q[2], q[107], q[127];
cx q[107], q[127];
cx q[62], q[108];
mcx q[2], q[108], q[62];
cx q[62], q[127];
mcx q[0], q[127], q[62];
mcx q[2], q[78], q[128];
cx q[2], q[128];
cx q[128], q[57];
mcx q[0], q[57], q[128];
cx q[17], q[129];
mcx q[1], q[5], q[129];
mcx q[5], q[17], q[129];
cx q[3], q[130];
cx q[1], q[130];
mcx q[3], q[129], q[130];
mcx q[1], q[3], q[130];
cx q[130], q[131];
mcx q[2], q[19], q[131];
mcx q[2], q[130], q[131];
cx q[19], q[132];
mcx q[0], q[131], q[132];
mcx q[0], q[19], q[132];
mcx q[1], q[16], q[133];
cx q[16], q[133];
cx q[133], q[134];
mcx q[5], q[55], q[134];
mcx q[5], q[133], q[134];
cx q[55], q[135];
mcx q[3], q[134], q[135];
mcx q[3], q[55], q[135];
cx q[2], q[136];
mcx q[2], q[135], q[136];
cx q[135], q[136];
cx q[114], q[136];
mcx q[0], q[136], q[114];
cx q[34], q[137];
mcx q[5], q[12], q[137];
mcx q[5], q[34], q[137];
cx q[35], q[138];
mcx q[3], q[137], q[138];
mcx q[3], q[35], q[138];
cx q[138], q[139];
mcx q[2], q[15], q[139];
mcx q[2], q[138], q[139];
cx q[15], q[140];
mcx q[0], q[139], q[140];
mcx q[0], q[15], q[140];
cx q[105], q[87];
mcx q[2], q[87], q[105];
cx q[8], q[141];
mcx q[4], q[7], q[141];
mcx q[7], q[8], q[141];
mcx q[1], q[141], q[142];
cx q[141], q[142];
cx q[142], q[143];
mcx q[5], q[55], q[143];
mcx q[5], q[142], q[143];
cx q[3], q[144];
mcx q[3], q[143], q[144];
cx q[143], q[144];
cx q[144], q[113];
mcx q[2], q[113], q[144];
cx q[144], q[105];
mcx q[0], q[105], q[144];
cx q[3], q[145];
cx q[1], q[145];
mcx q[3], q[72], q[145];
mcx q[1], q[3], q[145];
cx q[2], q[146];
mcx q[2], q[145], q[146];
cx q[145], q[146];
mcx q[0], q[146], q[147];
cx q[0], q[147];
cx q[13], q[148];
mcx q[3], q[137], q[148];
mcx q[3], q[13], q[148];
cx q[137], q[149];
mcx q[2], q[148], q[149];
mcx q[2], q[137], q[149];
cx q[13], q[150];
mcx q[0], q[149], q[150];
mcx q[0], q[13], q[150];
cx q[26], q[151];
mcx q[5], q[12], q[151];
mcx q[5], q[26], q[151];
cx q[151], q[137];
mcx q[3], q[137], q[151];
cx q[16], q[152];
mcx q[4], q[7], q[152];
mcx q[7], q[16], q[152];
x q[152];
mcx q[1], q[152], q[12];
mcx q[1], q[12], q[152];
mcx q[1], q[17], q[153];
cx q[17], q[153];
cx q[153], q[154];
mcx q[5], q[152], q[154];
mcx q[5], q[153], q[154];
cx q[154], q[151];
mcx q[2], q[151], q[154];
cx q[55], q[155];
mcx q[5], q[152], q[155];
mcx q[5], q[55], q[155];
cx q[13], q[156];
mcx q[3], q[155], q[156];
mcx q[3], q[13], q[156];
cx q[142], q[152];
mcx q[5], q[152], q[142];
cx q[142], q[13];
mcx q[3], q[13], q[142];
cx q[142], q[156];
mcx q[2], q[156], q[142];
cx q[142], q[154];
mcx q[0], q[154], q[142];
cx q[63], q[66];
mcx q[0], q[66], q[63];
mcx q[1], q[4], q[157];
mcx q[1], q[16], q[158];
cx q[158], q[159];
mcx q[5], q[157], q[159];
mcx q[5], q[158], q[159];
cx q[2], q[160];
cx q[35], q[160];
mcx q[2], q[159], q[160];
mcx q[2], q[35], q[160];
mcx q[0], q[160], q[161];
cx q[160], q[161];
mcx q[1], q[17], q[162];
cx q[162], q[163];
mcx q[5], q[157], q[163];
mcx q[5], q[162], q[163];
mcx q[3], q[163], q[164];
cx q[163], q[164];
cx q[2], q[165];
mcx q[2], q[164], q[165];
cx q[164], q[165];
cx q[0], q[166];
mcx q[0], q[165], q[166];
cx q[165], q[166];
cx q[0], q[167];
cx q[160], q[167];
mcx q[0], q[52], q[167];
mcx q[0], q[160], q[167];
cx q[133], q[121];
mcx q[5], q[121], q[133];
mcx q[3], q[133], q[168];
cx q[3], q[168];
cx q[2], q[169];
mcx q[2], q[168], q[169];
cx q[168], q[169];
cx q[0], q[170];
mcx q[0], q[169], q[170];
cx q[169], q[170];
cx q[134], q[171];
mcx q[3], q[22], q[171];
mcx q[3], q[134], q[171];
mcx q[2], q[171], q[172];
cx q[2], q[172];
cx q[0], q[173];
mcx q[0], q[172], q[173];
cx q[172], q[173];
mcx q[3], q[101], q[174];
cx q[3], q[174];
cx q[2], q[175];
mcx q[2], q[174], q[175];
cx q[174], q[175];
cx q[2], q[176];
mcx q[2], q[86], q[176];
cx q[86], q[176];
cx q[176], q[175];
mcx q[0], q[175], q[176];
mcx q[1], q[120], q[177];
cx q[158], q[177];
mcx q[5], q[177], q[158];
mcx q[3], q[158], q[178];
cx q[158], q[178];
cx q[2], q[179];
cx q[178], q[179];
mcx q[2], q[159], q[179];
mcx q[2], q[178], q[179];
mcx q[3], q[134], q[180];
cx q[3], q[180];
cx q[180], q[181];
mcx q[2], q[23], q[181];
mcx q[2], q[180], q[181];
x q[181];
mcx q[0], q[181], q[179];
mcx q[0], q[179], q[181];
cx q[16], q[182];
mcx q[4], q[5], q[182];
mcx q[5], q[16], q[182];
mcx q[3], q[182], q[183];
cx q[182], q[183];
mcx q[3], q[159], q[184];
cx q[159], q[184];
cx q[184], q[185];
mcx q[2], q[183], q[185];
mcx q[2], q[184], q[185];
cx q[180], q[186];
mcx q[2], q[171], q[186];
mcx q[2], q[180], q[186];
cx q[186], q[185];
mcx q[0], q[185], q[186];
mcx q[3], q[158], q[187];
cx q[3], q[188];
cx q[42], q[188];
mcx q[3], q[159], q[188];
mcx q[3], q[42], q[188];
cx q[188], q[187];
mcx q[2], q[187], q[188];
cx q[3], q[189];
cx q[159], q[189];
mcx q[3], q[42], q[189];
mcx q[3], q[159], q[189];
mcx q[5], q[26], q[190];
cx q[5], q[190];
cx q[3], q[191];
cx q[190], q[191];
mcx q[3], q[159], q[191];
mcx q[3], q[190], q[191];
x q[191];
mcx q[2], q[191], q[189];
mcx q[2], q[189], q[191];
x q[191];
mcx q[0], q[191], q[188];
mcx q[0], q[188], q[191];
cx q[3], q[192];
cx q[190], q[192];
mcx q[3], q[158], q[192];
mcx q[3], q[190], q[192];
cx q[3], q[193];
cx q[159], q[193];
mcx q[3], q[190], q[193];
mcx q[3], q[159], q[193];
x q[193];
mcx q[2], q[193], q[192];
mcx q[2], q[192], q[193];
x q[193];
mcx q[0], q[193], q[29];
mcx q[0], q[29], q[193];
mcx q[3], q[159], q[194];
cx q[2], q[195];
cx q[194], q[195];
mcx q[2], q[28], q[195];
mcx q[2], q[194], q[195];
cx q[0], q[196];
cx q[159], q[196];
mcx q[0], q[195], q[196];
mcx q[0], q[159], q[196];
cx q[190], q[197];
mcx q[3], q[28], q[197];
mcx q[3], q[190], q[197];
mcx q[3], q[163], q[198];
cx q[2], q[199];
cx q[198], q[199];
mcx q[2], q[197], q[199];
mcx q[2], q[198], q[199];
cx q[0], q[200];
mcx q[0], q[199], q[200];
cx q[199], q[200];
mcx q[2], q[198], q[201];
cx q[198], q[201];
cx q[28], q[190];
mcx q[3], q[190], q[28];
cx q[164], q[28];
mcx q[2], q[28], q[164];
cx q[164], q[201];
mcx q[0], q[201], q[164];
x q[92];
mcx q[2], q[92], q[194];
mcx q[2], q[194], q[92];
x q[92];
mcx q[0], q[92], q[52];
mcx q[0], q[52], q[92];
x q[159];
mcx q[3], q[159], q[134];
mcx q[3], q[134], q[159];
cx q[174], q[159];
mcx q[2], q[159], q[174];
cx q[86], q[36];
mcx q[2], q[36], q[86];
cx q[86], q[174];
mcx q[0], q[174], q[86];
mcx q[3], q[157], q[202];
cx q[157], q[202];
cx q[43], q[49];
mcx q[2], q[49], q[43];
cx q[43], q[202];
mcx q[0], q[202], q[43];
mcx q[2], q[180], q[203];
cx q[2], q[203];
mcx q[0], q[203], q[204];
cx q[0], q[204];
mcx q[0], q[184], q[205];
cx q[0], q[205];
x q[9];
x q[11];
x q[14];
x q[15];
x q[19];
x q[20];
x q[25];
x q[31];
x q[33];
x q[38];
x q[40];
x q[41];
x q[45];
x q[48];
x q[51];
x q[53];
x q[54];
x q[58];
x q[61];
x q[64];
x q[67];
x q[69];
x q[71];
x q[75];
x q[80];
x q[85];
x q[89];
x q[91];
x q[94];
x q[100];
x q[104];
x q[181];
x q[191];
