pragma circom 2.1.6;

include "./regex_helpers.circom";

template BodyHashRegex (msg_bytes) {
    signal input msg[msg_bytes];
    signal output out;

    var num_bytes = msg_bytes;
    signal in[num_bytes];
    for (var i = 0; i < msg_bytes; i++) {
        in[i] <== msg[i];
    }

    component eq[131][num_bytes];
    component lt[26][num_bytes];
    component and[45][num_bytes];
    component multi_or[9][num_bytes];
    signal states[num_bytes+1][29];

    for (var i = 0; i < num_bytes; i++) {
      states[i][0] <== 1;
    }
    for (var i = 1; i < 29; i++) {
      states[0][i] <== 0;
    }

    for (var i = 0; i < num_bytes; i++) {
      eq[0][i] = IsEqual();
      eq[0][i].in[0] <== in[i];
      eq[0][i].in[1] <== 110;
      eq[1][i] = IsEqual();
      eq[1][i].in[0] <== in[i];
      eq[1][i].in[1] <== 108;
      eq[2][i] = IsEqual();
      eq[2][i].in[0] <== in[i];
      eq[2][i].in[1] <== 103;
      eq[3][i] = IsEqual();
      eq[3][i].in[0] <== in[i];
      eq[3][i].in[1] <== 114;
      eq[4][i] = IsEqual();
      eq[4][i].in[0] <== in[i];
      eq[4][i].in[1] <== 115;
      eq[5][i] = IsEqual();
      eq[5][i].in[0] <== in[i];
      eq[5][i].in[1] <== 112;
      eq[6][i] = IsEqual();
      eq[6][i].in[0] <== in[i];
      eq[6][i].in[1] <== 101;
      eq[7][i] = IsEqual();
      eq[7][i].in[0] <== in[i];
      eq[7][i].in[1] <== 107;
      eq[8][i] = IsEqual();
      eq[8][i].in[0] <== in[i];
      eq[8][i].in[1] <== 99;
      eq[9][i] = IsEqual();
      eq[9][i].in[0] <== in[i];
      eq[9][i].in[1] <== 109;
      eq[10][i] = IsEqual();
      eq[10][i].in[0] <== in[i];
      eq[10][i].in[1] <== 118;
      eq[11][i] = IsEqual();
      eq[11][i].in[0] <== in[i];
      eq[11][i].in[1] <== 117;
      eq[12][i] = IsEqual();
      eq[12][i].in[0] <== in[i];
      eq[12][i].in[1] <== 105;
      eq[13][i] = IsEqual();
      eq[13][i].in[0] <== in[i];
      eq[13][i].in[1] <== 113;
      eq[14][i] = IsEqual();
      eq[14][i].in[0] <== in[i];
      eq[14][i].in[1] <== 122;
      eq[15][i] = IsEqual();
      eq[15][i].in[0] <== in[i];
      eq[15][i].in[1] <== 111;
      eq[16][i] = IsEqual();
      eq[16][i].in[0] <== in[i];
      eq[16][i].in[1] <== 104;
      eq[17][i] = IsEqual();
      eq[17][i].in[0] <== in[i];
      eq[17][i].in[1] <== 102;
      eq[18][i] = IsEqual();
      eq[18][i].in[0] <== in[i];
      eq[18][i].in[1] <== 97;
      eq[19][i] = IsEqual();
      eq[19][i].in[0] <== in[i];
      eq[19][i].in[1] <== 116;
      eq[20][i] = IsEqual();
      eq[20][i].in[0] <== in[i];
      eq[20][i].in[1] <== 121;
      eq[21][i] = IsEqual();
      eq[21][i].in[0] <== in[i];
      eq[21][i].in[1] <== 120;
      eq[22][i] = IsEqual();
      eq[22][i].in[0] <== in[i];
      eq[22][i].in[1] <== 106;
      eq[23][i] = IsEqual();
      eq[23][i].in[0] <== in[i];
      eq[23][i].in[1] <== 100;
      eq[24][i] = IsEqual();
      eq[24][i].in[0] <== in[i];
      eq[24][i].in[1] <== 119;
      and[0][i] = AND();
      and[0][i].a <== states[i][13];
      multi_or[0][i] = MultiOR(25);
      multi_or[0][i].in[0] <== eq[0][i].out;
      multi_or[0][i].in[1] <== eq[1][i].out;
      multi_or[0][i].in[2] <== eq[2][i].out;
      multi_or[0][i].in[3] <== eq[3][i].out;
      multi_or[0][i].in[4] <== eq[4][i].out;
      multi_or[0][i].in[5] <== eq[5][i].out;
      multi_or[0][i].in[6] <== eq[6][i].out;
      multi_or[0][i].in[7] <== eq[7][i].out;
      multi_or[0][i].in[8] <== eq[8][i].out;
      multi_or[0][i].in[9] <== eq[9][i].out;
      multi_or[0][i].in[10] <== eq[10][i].out;
      multi_or[0][i].in[11] <== eq[11][i].out;
      multi_or[0][i].in[12] <== eq[12][i].out;
      multi_or[0][i].in[13] <== eq[13][i].out;
      multi_or[0][i].in[14] <== eq[14][i].out;
      multi_or[0][i].in[15] <== eq[15][i].out;
      multi_or[0][i].in[16] <== eq[16][i].out;
      multi_or[0][i].in[17] <== eq[17][i].out;
      multi_or[0][i].in[18] <== eq[18][i].out;
      multi_or[0][i].in[19] <== eq[19][i].out;
      multi_or[0][i].in[20] <== eq[20][i].out;
      multi_or[0][i].in[21] <== eq[21][i].out;
      multi_or[0][i].in[22] <== eq[22][i].out;
      multi_or[0][i].in[23] <== eq[23][i].out;
      multi_or[0][i].in[24] <== eq[24][i].out;
      and[0][i].b <== multi_or[0][i].out;
      lt[0][i] = LessThan(8);
      lt[0][i].in[0] <== 96;
      lt[0][i].in[1] <== in[i];
      lt[1][i] = LessThan(8);
      lt[1][i].in[0] <== in[i];
      lt[1][i].in[1] <== 123;
      and[1][i] = AND();
      and[1][i].a <== lt[0][i].out;
      and[1][i].b <== lt[1][i].out;
      and[2][i] = AND();
      and[2][i].a <== states[i][25];
      and[2][i].b <== and[1][i].out;
      multi_or[1][i] = MultiOR(2);
      multi_or[1][i].in[0] <== and[0][i].out;
      multi_or[1][i].in[1] <== and[2][i].out;
      states[i+1][1] <== multi_or[1][i].out;
      eq[25][i] = IsEqual();
      eq[25][i].in[0] <== in[i];
      eq[25][i].in[1] <== 61;
      and[3][i] = AND();
      and[3][i].a <== states[i][1];
      and[3][i].b <== eq[25][i].out;
      eq[26][i] = IsEqual();
      eq[26][i].in[0] <== in[i];
      eq[26][i].in[1] <== 61;
      and[4][i] = AND();
      and[4][i].a <== states[i][14];
      and[4][i].b <== eq[26][i].out;
      multi_or[2][i] = MultiOR(2);
      multi_or[2][i].in[0] <== and[3][i].out;
      multi_or[2][i].in[1] <== and[4][i].out;
      states[i+1][2] <== multi_or[2][i].out;
      lt[2][i] = LessThan(8);
      lt[2][i].in[0] <== 64;
      lt[2][i].in[1] <== in[i];
      lt[3][i] = LessThan(8);
      lt[3][i].in[0] <== in[i];
      lt[3][i].in[1] <== 91;
      and[5][i] = AND();
      and[5][i].a <== lt[2][i].out;
      and[5][i].b <== lt[3][i].out;
      lt[4][i] = LessThan(8);
      lt[4][i].in[0] <== 96;
      lt[4][i].in[1] <== in[i];
      lt[5][i] = LessThan(8);
      lt[5][i].in[0] <== in[i];
      lt[5][i].in[1] <== 123;
      and[6][i] = AND();
      and[6][i].a <== lt[4][i].out;
      and[6][i].b <== lt[5][i].out;
      lt[6][i] = LessThan(8);
      lt[6][i].in[0] <== 47;
      lt[6][i].in[1] <== in[i];
      lt[7][i] = LessThan(8);
      lt[7][i].in[0] <== in[i];
      lt[7][i].in[1] <== 58;
      and[7][i] = AND();
      and[7][i].a <== lt[6][i].out;
      and[7][i].b <== lt[7][i].out;
      eq[27][i] = IsEqual();
      eq[27][i].in[0] <== in[i];
      eq[27][i].in[1] <== 126;
      eq[28][i] = IsEqual();
      eq[28][i].in[0] <== in[i];
      eq[28][i].in[1] <== 60;
      eq[29][i] = IsEqual();
      eq[29][i].in[0] <== in[i];
      eq[29][i].in[1] <== 37;
      eq[30][i] = IsEqual();
      eq[30][i].in[0] <== in[i];
      eq[30][i].in[1] <== 96;
      eq[31][i] = IsEqual();
      eq[31][i].in[0] <== in[i];
      eq[31][i].in[1] <== 11;
      eq[32][i] = IsEqual();
      eq[32][i].in[0] <== in[i];
      eq[32][i].in[1] <== 58;
      eq[33][i] = IsEqual();
      eq[33][i].in[0] <== in[i];
      eq[33][i].in[1] <== 10;
      eq[34][i] = IsEqual();
      eq[34][i].in[0] <== in[i];
      eq[34][i].in[1] <== 39;
      eq[35][i] = IsEqual();
      eq[35][i].in[0] <== in[i];
      eq[35][i].in[1] <== 41;
      eq[36][i] = IsEqual();
      eq[36][i].in[0] <== in[i];
      eq[36][i].in[1] <== 47;
      eq[37][i] = IsEqual();
      eq[37][i].in[0] <== in[i];
      eq[37][i].in[1] <== 93;
      eq[38][i] = IsEqual();
      eq[38][i].in[0] <== in[i];
      eq[38][i].in[1] <== 36;
      eq[39][i] = IsEqual();
      eq[39][i].in[0] <== in[i];
      eq[39][i].in[1] <== 64;
      eq[40][i] = IsEqual();
      eq[40][i].in[0] <== in[i];
      eq[40][i].in[1] <== 63;
      eq[41][i] = IsEqual();
      eq[41][i].in[0] <== in[i];
      eq[41][i].in[1] <== 12;
      eq[42][i] = IsEqual();
      eq[42][i].in[0] <== in[i];
      eq[42][i].in[1] <== 61;
      eq[43][i] = IsEqual();
      eq[43][i].in[0] <== in[i];
      eq[43][i].in[1] <== 95;
      eq[44][i] = IsEqual();
      eq[44][i].in[0] <== in[i];
      eq[44][i].in[1] <== 9;
      eq[45][i] = IsEqual();
      eq[45][i].in[0] <== in[i];
      eq[45][i].in[1] <== 43;
      eq[46][i] = IsEqual();
      eq[46][i].in[0] <== in[i];
      eq[46][i].in[1] <== 35;
      eq[47][i] = IsEqual();
      eq[47][i].in[0] <== in[i];
      eq[47][i].in[1] <== 94;
      eq[48][i] = IsEqual();
      eq[48][i].in[0] <== in[i];
      eq[48][i].in[1] <== 13;
      eq[49][i] = IsEqual();
      eq[49][i].in[0] <== in[i];
      eq[49][i].in[1] <== 46;
      eq[50][i] = IsEqual();
      eq[50][i].in[0] <== in[i];
      eq[50][i].in[1] <== 123;
      eq[51][i] = IsEqual();
      eq[51][i].in[0] <== in[i];
      eq[51][i].in[1] <== 92;
      eq[52][i] = IsEqual();
      eq[52][i].in[0] <== in[i];
      eq[52][i].in[1] <== 40;
      eq[53][i] = IsEqual();
      eq[53][i].in[0] <== in[i];
      eq[53][i].in[1] <== 44;
      eq[54][i] = IsEqual();
      eq[54][i].in[0] <== in[i];
      eq[54][i].in[1] <== 38;
      eq[55][i] = IsEqual();
      eq[55][i].in[0] <== in[i];
      eq[55][i].in[1] <== 45;
      eq[56][i] = IsEqual();
      eq[56][i].in[0] <== in[i];
      eq[56][i].in[1] <== 62;
      eq[57][i] = IsEqual();
      eq[57][i].in[0] <== in[i];
      eq[57][i].in[1] <== 32;
      eq[58][i] = IsEqual();
      eq[58][i].in[0] <== in[i];
      eq[58][i].in[1] <== 34;
      eq[59][i] = IsEqual();
      eq[59][i].in[0] <== in[i];
      eq[59][i].in[1] <== 91;
      eq[60][i] = IsEqual();
      eq[60][i].in[0] <== in[i];
      eq[60][i].in[1] <== 33;
      eq[61][i] = IsEqual();
      eq[61][i].in[0] <== in[i];
      eq[61][i].in[1] <== 42;
      eq[62][i] = IsEqual();
      eq[62][i].in[0] <== in[i];
      eq[62][i].in[1] <== 125;
      eq[63][i] = IsEqual();
      eq[63][i].in[0] <== in[i];
      eq[63][i].in[1] <== 124;
      and[8][i] = AND();
      and[8][i].a <== states[i][2];
      multi_or[3][i] = MultiOR(40);
      multi_or[3][i].in[0] <== and[5][i].out;
      multi_or[3][i].in[1] <== and[6][i].out;
      multi_or[3][i].in[2] <== and[7][i].out;
      multi_or[3][i].in[3] <== eq[27][i].out;
      multi_or[3][i].in[4] <== eq[28][i].out;
      multi_or[3][i].in[5] <== eq[29][i].out;
      multi_or[3][i].in[6] <== eq[30][i].out;
      multi_or[3][i].in[7] <== eq[31][i].out;
      multi_or[3][i].in[8] <== eq[32][i].out;
      multi_or[3][i].in[9] <== eq[33][i].out;
      multi_or[3][i].in[10] <== eq[34][i].out;
      multi_or[3][i].in[11] <== eq[35][i].out;
      multi_or[3][i].in[12] <== eq[36][i].out;
      multi_or[3][i].in[13] <== eq[37][i].out;
      multi_or[3][i].in[14] <== eq[38][i].out;
      multi_or[3][i].in[15] <== eq[39][i].out;
      multi_or[3][i].in[16] <== eq[40][i].out;
      multi_or[3][i].in[17] <== eq[41][i].out;
      multi_or[3][i].in[18] <== eq[42][i].out;
      multi_or[3][i].in[19] <== eq[43][i].out;
      multi_or[3][i].in[20] <== eq[44][i].out;
      multi_or[3][i].in[21] <== eq[45][i].out;
      multi_or[3][i].in[22] <== eq[46][i].out;
      multi_or[3][i].in[23] <== eq[47][i].out;
      multi_or[3][i].in[24] <== eq[48][i].out;
      multi_or[3][i].in[25] <== eq[49][i].out;
      multi_or[3][i].in[26] <== eq[50][i].out;
      multi_or[3][i].in[27] <== eq[51][i].out;
      multi_or[3][i].in[28] <== eq[52][i].out;
      multi_or[3][i].in[29] <== eq[53][i].out;
      multi_or[3][i].in[30] <== eq[54][i].out;
      multi_or[3][i].in[31] <== eq[55][i].out;
      multi_or[3][i].in[32] <== eq[56][i].out;
      multi_or[3][i].in[33] <== eq[57][i].out;
      multi_or[3][i].in[34] <== eq[58][i].out;
      multi_or[3][i].in[35] <== eq[59][i].out;
      multi_or[3][i].in[36] <== eq[60][i].out;
      multi_or[3][i].in[37] <== eq[61][i].out;
      multi_or[3][i].in[38] <== eq[62][i].out;
      multi_or[3][i].in[39] <== eq[63][i].out;
      and[8][i].b <== multi_or[3][i].out;
      lt[8][i] = LessThan(8);
      lt[8][i].in[0] <== 64;
      lt[8][i].in[1] <== in[i];
      lt[9][i] = LessThan(8);
      lt[9][i].in[0] <== in[i];
      lt[9][i].in[1] <== 91;
      and[9][i] = AND();
      and[9][i].a <== lt[8][i].out;
      and[9][i].b <== lt[9][i].out;
      lt[10][i] = LessThan(8);
      lt[10][i].in[0] <== 96;
      lt[10][i].in[1] <== in[i];
      lt[11][i] = LessThan(8);
      lt[11][i].in[0] <== in[i];
      lt[11][i].in[1] <== 123;
      and[10][i] = AND();
      and[10][i].a <== lt[10][i].out;
      and[10][i].b <== lt[11][i].out;
      lt[12][i] = LessThan(8);
      lt[12][i].in[0] <== 47;
      lt[12][i].in[1] <== in[i];
      lt[13][i] = LessThan(8);
      lt[13][i].in[0] <== in[i];
      lt[13][i].in[1] <== 58;
      and[11][i] = AND();
      and[11][i].a <== lt[12][i].out;
      and[11][i].b <== lt[13][i].out;
      eq[64][i] = IsEqual();
      eq[64][i].in[0] <== in[i];
      eq[64][i].in[1] <== 126;
      eq[65][i] = IsEqual();
      eq[65][i].in[0] <== in[i];
      eq[65][i].in[1] <== 60;
      eq[66][i] = IsEqual();
      eq[66][i].in[0] <== in[i];
      eq[66][i].in[1] <== 37;
      eq[67][i] = IsEqual();
      eq[67][i].in[0] <== in[i];
      eq[67][i].in[1] <== 96;
      eq[68][i] = IsEqual();
      eq[68][i].in[0] <== in[i];
      eq[68][i].in[1] <== 11;
      eq[69][i] = IsEqual();
      eq[69][i].in[0] <== in[i];
      eq[69][i].in[1] <== 58;
      eq[70][i] = IsEqual();
      eq[70][i].in[0] <== in[i];
      eq[70][i].in[1] <== 10;
      eq[71][i] = IsEqual();
      eq[71][i].in[0] <== in[i];
      eq[71][i].in[1] <== 39;
      eq[72][i] = IsEqual();
      eq[72][i].in[0] <== in[i];
      eq[72][i].in[1] <== 41;
      eq[73][i] = IsEqual();
      eq[73][i].in[0] <== in[i];
      eq[73][i].in[1] <== 47;
      eq[74][i] = IsEqual();
      eq[74][i].in[0] <== in[i];
      eq[74][i].in[1] <== 93;
      eq[75][i] = IsEqual();
      eq[75][i].in[0] <== in[i];
      eq[75][i].in[1] <== 36;
      eq[76][i] = IsEqual();
      eq[76][i].in[0] <== in[i];
      eq[76][i].in[1] <== 64;
      eq[77][i] = IsEqual();
      eq[77][i].in[0] <== in[i];
      eq[77][i].in[1] <== 63;
      eq[78][i] = IsEqual();
      eq[78][i].in[0] <== in[i];
      eq[78][i].in[1] <== 12;
      eq[79][i] = IsEqual();
      eq[79][i].in[0] <== in[i];
      eq[79][i].in[1] <== 61;
      eq[80][i] = IsEqual();
      eq[80][i].in[0] <== in[i];
      eq[80][i].in[1] <== 95;
      eq[81][i] = IsEqual();
      eq[81][i].in[0] <== in[i];
      eq[81][i].in[1] <== 9;
      eq[82][i] = IsEqual();
      eq[82][i].in[0] <== in[i];
      eq[82][i].in[1] <== 43;
      eq[83][i] = IsEqual();
      eq[83][i].in[0] <== in[i];
      eq[83][i].in[1] <== 35;
      eq[84][i] = IsEqual();
      eq[84][i].in[0] <== in[i];
      eq[84][i].in[1] <== 94;
      eq[85][i] = IsEqual();
      eq[85][i].in[0] <== in[i];
      eq[85][i].in[1] <== 13;
      eq[86][i] = IsEqual();
      eq[86][i].in[0] <== in[i];
      eq[86][i].in[1] <== 46;
      eq[87][i] = IsEqual();
      eq[87][i].in[0] <== in[i];
      eq[87][i].in[1] <== 123;
      eq[88][i] = IsEqual();
      eq[88][i].in[0] <== in[i];
      eq[88][i].in[1] <== 92;
      eq[89][i] = IsEqual();
      eq[89][i].in[0] <== in[i];
      eq[89][i].in[1] <== 40;
      eq[90][i] = IsEqual();
      eq[90][i].in[0] <== in[i];
      eq[90][i].in[1] <== 44;
      eq[91][i] = IsEqual();
      eq[91][i].in[0] <== in[i];
      eq[91][i].in[1] <== 38;
      eq[92][i] = IsEqual();
      eq[92][i].in[0] <== in[i];
      eq[92][i].in[1] <== 45;
      eq[93][i] = IsEqual();
      eq[93][i].in[0] <== in[i];
      eq[93][i].in[1] <== 62;
      eq[94][i] = IsEqual();
      eq[94][i].in[0] <== in[i];
      eq[94][i].in[1] <== 32;
      eq[95][i] = IsEqual();
      eq[95][i].in[0] <== in[i];
      eq[95][i].in[1] <== 34;
      eq[96][i] = IsEqual();
      eq[96][i].in[0] <== in[i];
      eq[96][i].in[1] <== 91;
      eq[97][i] = IsEqual();
      eq[97][i].in[0] <== in[i];
      eq[97][i].in[1] <== 33;
      eq[98][i] = IsEqual();
      eq[98][i].in[0] <== in[i];
      eq[98][i].in[1] <== 42;
      eq[99][i] = IsEqual();
      eq[99][i].in[0] <== in[i];
      eq[99][i].in[1] <== 125;
      eq[100][i] = IsEqual();
      eq[100][i].in[0] <== in[i];
      eq[100][i].in[1] <== 124;
      and[12][i] = AND();
      and[12][i].a <== states[i][3];
      multi_or[4][i] = MultiOR(40);
      multi_or[4][i].in[0] <== and[9][i].out;
      multi_or[4][i].in[1] <== and[10][i].out;
      multi_or[4][i].in[2] <== and[11][i].out;
      multi_or[4][i].in[3] <== eq[64][i].out;
      multi_or[4][i].in[4] <== eq[65][i].out;
      multi_or[4][i].in[5] <== eq[66][i].out;
      multi_or[4][i].in[6] <== eq[67][i].out;
      multi_or[4][i].in[7] <== eq[68][i].out;
      multi_or[4][i].in[8] <== eq[69][i].out;
      multi_or[4][i].in[9] <== eq[70][i].out;
      multi_or[4][i].in[10] <== eq[71][i].out;
      multi_or[4][i].in[11] <== eq[72][i].out;
      multi_or[4][i].in[12] <== eq[73][i].out;
      multi_or[4][i].in[13] <== eq[74][i].out;
      multi_or[4][i].in[14] <== eq[75][i].out;
      multi_or[4][i].in[15] <== eq[76][i].out;
      multi_or[4][i].in[16] <== eq[77][i].out;
      multi_or[4][i].in[17] <== eq[78][i].out;
      multi_or[4][i].in[18] <== eq[79][i].out;
      multi_or[4][i].in[19] <== eq[80][i].out;
      multi_or[4][i].in[20] <== eq[81][i].out;
      multi_or[4][i].in[21] <== eq[82][i].out;
      multi_or[4][i].in[22] <== eq[83][i].out;
      multi_or[4][i].in[23] <== eq[84][i].out;
      multi_or[4][i].in[24] <== eq[85][i].out;
      multi_or[4][i].in[25] <== eq[86][i].out;
      multi_or[4][i].in[26] <== eq[87][i].out;
      multi_or[4][i].in[27] <== eq[88][i].out;
      multi_or[4][i].in[28] <== eq[89][i].out;
      multi_or[4][i].in[29] <== eq[90][i].out;
      multi_or[4][i].in[30] <== eq[91][i].out;
      multi_or[4][i].in[31] <== eq[92][i].out;
      multi_or[4][i].in[32] <== eq[93][i].out;
      multi_or[4][i].in[33] <== eq[94][i].out;
      multi_or[4][i].in[34] <== eq[95][i].out;
      multi_or[4][i].in[35] <== eq[96][i].out;
      multi_or[4][i].in[36] <== eq[97][i].out;
      multi_or[4][i].in[37] <== eq[98][i].out;
      multi_or[4][i].in[38] <== eq[99][i].out;
      multi_or[4][i].in[39] <== eq[100][i].out;
      and[12][i].b <== multi_or[4][i].out;
      multi_or[5][i] = MultiOR(2);
      multi_or[5][i].in[0] <== and[8][i].out;
      multi_or[5][i].in[1] <== and[12][i].out;
      states[i+1][3] <== multi_or[5][i].out;
      eq[101][i] = IsEqual();
      eq[101][i].in[0] <== in[i];
      eq[101][i].in[1] <== 13;
      and[13][i] = AND();
      and[13][i].a <== states[i][0];
      and[13][i].b <== eq[101][i].out;
      states[i+1][4] <== and[13][i].out;
      eq[102][i] = IsEqual();
      eq[102][i].in[0] <== in[i];
      eq[102][i].in[1] <== 10;
      and[14][i] = AND();
      and[14][i].a <== states[i][4];
      and[14][i].b <== eq[102][i].out;
      states[i+1][5] <== and[14][i].out;
      eq[103][i] = IsEqual();
      eq[103][i].in[0] <== in[i];
      eq[103][i].in[1] <== 100;
      and[15][i] = AND();
      and[15][i].a <== states[i][5];
      and[15][i].b <== eq[103][i].out;
      states[i+1][6] <== and[15][i].out;
      eq[104][i] = IsEqual();
      eq[104][i].in[0] <== in[i];
      eq[104][i].in[1] <== 107;
      and[16][i] = AND();
      and[16][i].a <== states[i][6];
      and[16][i].b <== eq[104][i].out;
      states[i+1][7] <== and[16][i].out;
      eq[105][i] = IsEqual();
      eq[105][i].in[0] <== in[i];
      eq[105][i].in[1] <== 105;
      and[17][i] = AND();
      and[17][i].a <== states[i][7];
      and[17][i].b <== eq[105][i].out;
      states[i+1][8] <== and[17][i].out;
      eq[106][i] = IsEqual();
      eq[106][i].in[0] <== in[i];
      eq[106][i].in[1] <== 59;
      and[18][i] = AND();
      and[18][i].a <== states[i][3];
      and[18][i].b <== eq[106][i].out;
      states[i+1][9] <== and[18][i].out;
      eq[107][i] = IsEqual();
      eq[107][i].in[0] <== in[i];
      eq[107][i].in[1] <== 109;
      and[19][i] = AND();
      and[19][i].a <== states[i][8];
      and[19][i].b <== eq[107][i].out;
      states[i+1][10] <== and[19][i].out;
      eq[108][i] = IsEqual();
      eq[108][i].in[0] <== in[i];
      eq[108][i].in[1] <== 45;
      and[20][i] = AND();
      and[20][i].a <== states[i][10];
      and[20][i].b <== eq[108][i].out;
      states[i+1][11] <== and[20][i].out;
      eq[109][i] = IsEqual();
      eq[109][i].in[0] <== in[i];
      eq[109][i].in[1] <== 115;
      and[21][i] = AND();
      and[21][i].a <== states[i][11];
      and[21][i].b <== eq[109][i].out;
      states[i+1][12] <== and[21][i].out;
      eq[110][i] = IsEqual();
      eq[110][i].in[0] <== in[i];
      eq[110][i].in[1] <== 32;
      and[22][i] = AND();
      and[22][i].a <== states[i][9];
      and[22][i].b <== eq[110][i].out;
      states[i+1][13] <== and[22][i].out;
      eq[111][i] = IsEqual();
      eq[111][i].in[0] <== in[i];
      eq[111][i].in[1] <== 98;
      and[23][i] = AND();
      and[23][i].a <== states[i][13];
      and[23][i].b <== eq[111][i].out;
      states[i+1][14] <== and[23][i].out;
      eq[112][i] = IsEqual();
      eq[112][i].in[0] <== in[i];
      eq[112][i].in[1] <== 105;
      and[24][i] = AND();
      and[24][i].a <== states[i][12];
      and[24][i].b <== eq[112][i].out;
      states[i+1][15] <== and[24][i].out;
      eq[113][i] = IsEqual();
      eq[113][i].in[0] <== in[i];
      eq[113][i].in[1] <== 104;
      and[25][i] = AND();
      and[25][i].a <== states[i][14];
      and[25][i].b <== eq[113][i].out;
      states[i+1][16] <== and[25][i].out;
      eq[114][i] = IsEqual();
      eq[114][i].in[0] <== in[i];
      eq[114][i].in[1] <== 103;
      and[26][i] = AND();
      and[26][i].a <== states[i][15];
      and[26][i].b <== eq[114][i].out;
      states[i+1][17] <== and[26][i].out;
      eq[115][i] = IsEqual();
      eq[115][i].in[0] <== in[i];
      eq[115][i].in[1] <== 110;
      and[27][i] = AND();
      and[27][i].a <== states[i][17];
      and[27][i].b <== eq[115][i].out;
      states[i+1][18] <== and[27][i].out;
      eq[116][i] = IsEqual();
      eq[116][i].in[0] <== in[i];
      eq[116][i].in[1] <== 97;
      and[28][i] = AND();
      and[28][i].a <== states[i][18];
      and[28][i].b <== eq[116][i].out;
      states[i+1][19] <== and[28][i].out;
      eq[117][i] = IsEqual();
      eq[117][i].in[0] <== in[i];
      eq[117][i].in[1] <== 116;
      and[29][i] = AND();
      and[29][i].a <== states[i][19];
      and[29][i].b <== eq[117][i].out;
      states[i+1][20] <== and[29][i].out;
      eq[118][i] = IsEqual();
      eq[118][i].in[0] <== in[i];
      eq[118][i].in[1] <== 61;
      and[30][i] = AND();
      and[30][i].a <== states[i][16];
      and[30][i].b <== eq[118][i].out;
      states[i+1][21] <== and[30][i].out;
      eq[119][i] = IsEqual();
      eq[119][i].in[0] <== in[i];
      eq[119][i].in[1] <== 117;
      and[31][i] = AND();
      and[31][i].a <== states[i][20];
      and[31][i].b <== eq[119][i].out;
      states[i+1][22] <== and[31][i].out;
      eq[120][i] = IsEqual();
      eq[120][i].in[0] <== in[i];
      eq[120][i].in[1] <== 114;
      and[32][i] = AND();
      and[32][i].a <== states[i][22];
      and[32][i].b <== eq[120][i].out;
      states[i+1][23] <== and[32][i].out;
      eq[121][i] = IsEqual();
      eq[121][i].in[0] <== in[i];
      eq[121][i].in[1] <== 101;
      and[33][i] = AND();
      and[33][i].a <== states[i][23];
      and[33][i].b <== eq[121][i].out;
      states[i+1][24] <== and[33][i].out;
      eq[122][i] = IsEqual();
      eq[122][i].in[0] <== in[i];
      eq[122][i].in[1] <== 58;
      and[34][i] = AND();
      and[34][i].a <== states[i][24];
      and[34][i].b <== eq[122][i].out;
      states[i+1][25] <== and[34][i].out;
      lt[14][i] = LessThan(8);
      lt[14][i].in[0] <== 64;
      lt[14][i].in[1] <== in[i];
      lt[15][i] = LessThan(8);
      lt[15][i].in[0] <== in[i];
      lt[15][i].in[1] <== 91;
      and[35][i] = AND();
      and[35][i].a <== lt[14][i].out;
      and[35][i].b <== lt[15][i].out;
      lt[16][i] = LessThan(8);
      lt[16][i].in[0] <== 96;
      lt[16][i].in[1] <== in[i];
      lt[17][i] = LessThan(8);
      lt[17][i].in[0] <== in[i];
      lt[17][i].in[1] <== 123;
      and[36][i] = AND();
      and[36][i].a <== lt[16][i].out;
      and[36][i].b <== lt[17][i].out;
      lt[18][i] = LessThan(8);
      lt[18][i].in[0] <== 47;
      lt[18][i].in[1] <== in[i];
      lt[19][i] = LessThan(8);
      lt[19][i].in[0] <== in[i];
      lt[19][i].in[1] <== 58;
      and[37][i] = AND();
      and[37][i].a <== lt[18][i].out;
      and[37][i].b <== lt[19][i].out;
      eq[123][i] = IsEqual();
      eq[123][i].in[0] <== in[i];
      eq[123][i].in[1] <== 47;
      eq[124][i] = IsEqual();
      eq[124][i].in[0] <== in[i];
      eq[124][i].in[1] <== 43;
      eq[125][i] = IsEqual();
      eq[125][i].in[0] <== in[i];
      eq[125][i].in[1] <== 61;
      and[38][i] = AND();
      and[38][i].a <== states[i][21];
      multi_or[6][i] = MultiOR(6);
      multi_or[6][i].in[0] <== and[35][i].out;
      multi_or[6][i].in[1] <== and[36][i].out;
      multi_or[6][i].in[2] <== and[37][i].out;
      multi_or[6][i].in[3] <== eq[123][i].out;
      multi_or[6][i].in[4] <== eq[124][i].out;
      multi_or[6][i].in[5] <== eq[125][i].out;
      and[38][i].b <== multi_or[6][i].out;
      lt[20][i] = LessThan(8);
      lt[20][i].in[0] <== 64;
      lt[20][i].in[1] <== in[i];
      lt[21][i] = LessThan(8);
      lt[21][i].in[0] <== in[i];
      lt[21][i].in[1] <== 91;
      and[39][i] = AND();
      and[39][i].a <== lt[20][i].out;
      and[39][i].b <== lt[21][i].out;
      lt[22][i] = LessThan(8);
      lt[22][i].in[0] <== 96;
      lt[22][i].in[1] <== in[i];
      lt[23][i] = LessThan(8);
      lt[23][i].in[0] <== in[i];
      lt[23][i].in[1] <== 123;
      and[40][i] = AND();
      and[40][i].a <== lt[22][i].out;
      and[40][i].b <== lt[23][i].out;
      lt[24][i] = LessThan(8);
      lt[24][i].in[0] <== 47;
      lt[24][i].in[1] <== in[i];
      lt[25][i] = LessThan(8);
      lt[25][i].in[0] <== in[i];
      lt[25][i].in[1] <== 58;
      and[41][i] = AND();
      and[41][i].a <== lt[24][i].out;
      and[41][i].b <== lt[25][i].out;
      eq[126][i] = IsEqual();
      eq[126][i].in[0] <== in[i];
      eq[126][i].in[1] <== 47;
      eq[127][i] = IsEqual();
      eq[127][i].in[0] <== in[i];
      eq[127][i].in[1] <== 43;
      eq[128][i] = IsEqual();
      eq[128][i].in[0] <== in[i];
      eq[128][i].in[1] <== 61;
      and[42][i] = AND();
      and[42][i].a <== states[i][26];
      multi_or[7][i] = MultiOR(6);
      multi_or[7][i].in[0] <== and[39][i].out;
      multi_or[7][i].in[1] <== and[40][i].out;
      multi_or[7][i].in[2] <== and[41][i].out;
      multi_or[7][i].in[3] <== eq[126][i].out;
      multi_or[7][i].in[4] <== eq[127][i].out;
      multi_or[7][i].in[5] <== eq[128][i].out;
      and[42][i].b <== multi_or[7][i].out;
      multi_or[8][i] = MultiOR(2);
      multi_or[8][i].in[0] <== and[38][i].out;
      multi_or[8][i].in[1] <== and[42][i].out;
      states[i+1][26] <== multi_or[8][i].out;
      eq[129][i] = IsEqual();
      eq[129][i].in[0] <== in[i];
      eq[129][i].in[1] <== 59;
      and[43][i] = AND();
      and[43][i].a <== states[i][26];
      and[43][i].b <== eq[129][i].out;
      states[i+1][27] <== and[43][i].out;
      eq[130][i] = IsEqual();
      eq[130][i].in[0] <== in[i];
      eq[130][i].in[1] <== 32;
      and[44][i] = AND();
      and[44][i].a <== states[i][27];
      and[44][i].b <== eq[130][i].out;
      states[i+1][28] <== and[44][i].out;
    }

    signal final_state_sum[num_bytes+1];
    final_state_sum[0] <== states[0][28];
    for (var i = 1; i <= num_bytes; i++) {
      final_state_sum[i] <== final_state_sum[i-1] + states[i][28];
    }
    out <== final_state_sum[num_bytes];

    signal output reveal[num_bytes];
    for (var i = 0; i < num_bytes; i++) {
        reveal[i] <== in[i] * states[i+1][26];
    }
}
