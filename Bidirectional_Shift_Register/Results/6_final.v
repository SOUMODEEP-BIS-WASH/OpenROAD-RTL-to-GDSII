module bi_shift_reg (clk,
    ls_bit,
    rs_bit,
    rst,
    Din,
    Dout,
    S);
 input clk;
 input ls_bit;
 input rs_bit;
 input rst;
 input [3:0] Din;
 output [3:0] Dout;
 input [1:0] S;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net5;
 wire net6;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _06_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire net7;
 wire net8;
 wire net9;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net14;
 wire net15;
 wire net16;
 wire net17;

 INV_X8 _39_ (.A(net6),
    .ZN(_06_));
 INV_X8 _41_ (.A(net5),
    .ZN(_08_));
 OAI21_X1 _42_ (.A(_06_),
    .B1(_08_),
    .B2(net8),
    .ZN(_09_));
 NAND3_X1 _43_ (.A1(_08_),
    .A2(net11),
    .A3(net6),
    .ZN(_10_));
 NAND3_X1 _44_ (.A1(net1),
    .A2(net6),
    .A3(net5),
    .ZN(_11_));
 NAND3_X1 _45_ (.A1(_09_),
    .A2(_10_),
    .A3(_11_),
    .ZN(_12_));
 NAND2_X4 _46_ (.A1(_06_),
    .A2(_08_),
    .ZN(_13_));
 OR2_X2 _47_ (.A1(_13_),
    .A2(net10),
    .ZN(_14_));
 NAND2_X1 _48_ (.A1(_12_),
    .A2(_14_),
    .ZN(_15_));
 INV_X1 _49_ (.A(_15_),
    .ZN(_03_));
 NOR2_X1 _50_ (.A1(_13_),
    .A2(net13),
    .ZN(_16_));
 NAND3_X1 _51_ (.A1(net4),
    .A2(net6),
    .A3(net5),
    .ZN(_17_));
 NAND2_X1 _52_ (.A1(_06_),
    .A2(net12),
    .ZN(_18_));
 NAND2_X1 _53_ (.A1(_17_),
    .A2(_18_),
    .ZN(_19_));
 INV_X1 _54_ (.A(_19_),
    .ZN(_20_));
 OAI21_X1 _55_ (.A(_08_),
    .B1(_06_),
    .B2(net7),
    .ZN(_21_));
 AOI21_X2 _56_ (.A(_16_),
    .B1(_20_),
    .B2(_21_),
    .ZN(_02_));
 OAI21_X1 _57_ (.A(_06_),
    .B1(_08_),
    .B2(net11),
    .ZN(_22_));
 NAND3_X1 _58_ (.A1(_08_),
    .A2(net13),
    .A3(net6),
    .ZN(_23_));
 NAND3_X1 _59_ (.A1(net6),
    .A2(net5),
    .A3(net3),
    .ZN(_24_));
 NAND3_X1 _60_ (.A1(_22_),
    .A2(_23_),
    .A3(_24_),
    .ZN(_25_));
 OR2_X2 _61_ (.A1(_13_),
    .A2(net12),
    .ZN(_26_));
 NAND2_X1 _62_ (.A1(_25_),
    .A2(_26_),
    .ZN(_27_));
 INV_X1 _63_ (.A(_27_),
    .ZN(_01_));
 INV_X1 _64_ (.A(net15),
    .ZN(_00_));
 OAI21_X1 _65_ (.A(_06_),
    .B1(_08_),
    .B2(net10),
    .ZN(_28_));
 NAND3_X1 _66_ (.A1(_08_),
    .A2(net12),
    .A3(net6),
    .ZN(_29_));
 NAND3_X1 _67_ (.A1(net6),
    .A2(net5),
    .A3(net2),
    .ZN(_30_));
 NAND3_X1 _68_ (.A1(_28_),
    .A2(_29_),
    .A3(_30_),
    .ZN(_31_));
 OR2_X2 _69_ (.A1(_13_),
    .A2(net11),
    .ZN(_32_));
 NAND2_X2 _70_ (.A1(_31_),
    .A2(_32_),
    .ZN(_33_));
 INV_X2 _71_ (.A(_33_),
    .ZN(_04_));
 CLKBUF_X3 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 CLKBUF_X3 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_0__leaf_clk));
 CLKBUF_X3 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_1__leaf_clk));
 DFFR_X1 \dff0.Q$_DFFE_PP0N_  (.D(_03_),
    .RN(net16),
    .CK(clknet_1_0__leaf_clk),
    .Q(net10),
    .QN(_35_));
 DFFR_X1 \dff1.Q$_DFFE_PP0N_  (.D(_04_),
    .RN(net16),
    .CK(clknet_1_0__leaf_clk),
    .Q(net11),
    .QN(_34_));
 DFFR_X1 \dff2.Q$_DFFE_PP0N_  (.D(_01_),
    .RN(net16),
    .CK(clknet_1_1__leaf_clk),
    .Q(net12),
    .QN(_37_));
 DFFR_X1 \dff3.Q$_DFFE_PP0N_  (.D(_02_),
    .RN(net16),
    .CK(clknet_1_1__leaf_clk),
    .Q(net13),
    .QN(_36_));
 CLKBUF_X1 hold14 (.A(net17),
    .Z(net14));
 CLKBUF_X1 hold15 (.A(net9),
    .Z(net15));
 CLKBUF_X1 hold16 (.A(_00_),
    .Z(net16));
 CLKBUF_X1 hold17 (.A(rst),
    .Z(net17));
 BUF_X1 input1 (.A(Din[0]),
    .Z(net1));
 BUF_X1 input2 (.A(Din[1]),
    .Z(net2));
 BUF_X1 input3 (.A(Din[2]),
    .Z(net3));
 BUF_X1 input4 (.A(Din[3]),
    .Z(net4));
 BUF_X1 input5 (.A(S[0]),
    .Z(net5));
 BUF_X1 input6 (.A(S[1]),
    .Z(net6));
 BUF_X1 input7 (.A(ls_bit),
    .Z(net7));
 BUF_X1 input8 (.A(rs_bit),
    .Z(net8));
 BUF_X1 input9 (.A(net14),
    .Z(net9));
 BUF_X1 output10 (.A(net10),
    .Z(Dout[0]));
 BUF_X1 output11 (.A(net11),
    .Z(Dout[1]));
 BUF_X1 output12 (.A(net12),
    .Z(Dout[2]));
 BUF_X1 output13 (.A(net13),
    .Z(Dout[3]));
endmodule
