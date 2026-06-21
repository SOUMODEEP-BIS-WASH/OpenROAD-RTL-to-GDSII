module LFSR (clk,
    rst,
    Q);
 input clk;
 input rst;
 output [3:0] Q;

 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire net1;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 INV_X2 _13_ (.A(net1),
    .ZN(_04_));
 AND2_X2 _14_ (.A1(_04_),
    .A2(net2),
    .ZN(_00_));
 AND2_X2 _15_ (.A1(_04_),
    .A2(net3),
    .ZN(_01_));
 INV_X1 _16_ (.A(net4),
    .ZN(_05_));
 NOR2_X1 _17_ (.A1(_05_),
    .A2(net1),
    .ZN(_02_));
 INV_X1 _18_ (.A(net5),
    .ZN(_06_));
 NAND2_X1 _19_ (.A1(_05_),
    .A2(_06_),
    .ZN(_07_));
 NAND2_X1 _20_ (.A1(net4),
    .A2(net5),
    .ZN(_08_));
 NAND3_X1 _21_ (.A1(_07_),
    .A2(_04_),
    .A3(_08_),
    .ZN(_03_));
 CLKBUF_X3 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 CLKBUF_X3 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_0__leaf_clk));
 CLKBUF_X3 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_1__leaf_clk));
 DFF_X1 \dff1.Q$_SDFF_PP1_  (.D(_03_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net2),
    .QN(_09_));
 DFF_X1 \dff2.Q$_SDFF_PP0_  (.D(_00_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net3),
    .QN(_12_));
 DFF_X1 \dff3.Q$_SDFF_PP0_  (.D(_01_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net4),
    .QN(_11_));
 DFF_X1 \dff4.Q$_SDFF_PP0_  (.D(_02_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net5),
    .QN(_10_));
 BUF_X1 input1 (.A(rst),
    .Z(net1));
 BUF_X1 output2 (.A(net2),
    .Z(Q[0]));
 BUF_X1 output3 (.A(net3),
    .Z(Q[1]));
 BUF_X1 output4 (.A(net4),
    .Z(Q[2]));
 BUF_X1 output5 (.A(net5),
    .Z(Q[3]));
endmodule
