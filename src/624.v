// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Nov 27 10:49:00 2023
// Host        : HongH22Y7000P running 64-bit major release  (build 9200)
// Command     : write_verilog D:/ECE524/fa22-e524-lab8-hongshen978/hardware/src/624.v
// Design      : MainDemo
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Font_Rom
   (\h_cntr_reg_reg[0] ,
    DI,
    \h_cntr_reg_reg[6] ,
    \h_cntr_reg_reg[0]_0 ,
    S,
    clk_out1,
    ADDRARDADDR,
    pixel_reg,
    O,
    pixel_reg_0,
    out,
    fontAddress_carry__1_i_2__0_0,
    CO);
  output \h_cntr_reg_reg[0] ;
  output [0:0]DI;
  output \h_cntr_reg_reg[6] ;
  output \h_cntr_reg_reg[0]_0 ;
  output [1:0]S;
  input clk_out1;
  input [10:0]ADDRARDADDR;
  input [0:0]pixel_reg;
  input [3:0]O;
  input pixel_reg_0;
  input [2:0]out;
  input [1:0]fontAddress_carry__1_i_2__0_0;
  input [0:0]CO;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]O;
  wire [1:0]S;
  wire [7:1]charBitInRow;
  wire clk_out1;
  wire [1:0]fontAddress_carry__1_i_2__0_0;
  wire fontAddress_carry__1_i_4__0_n_0;
  wire fontAddress_carry__1_i_5__0_n_0;
  wire fontRow_reg_n_15;
  wire \h_cntr_reg_reg[0] ;
  wire \h_cntr_reg_reg[0]_0 ;
  wire \h_cntr_reg_reg[6] ;
  wire [2:0]out;
  wire pixel_i_2__1_n_0;
  wire pixel_i_4__0_n_0;
  wire [0:0]pixel_reg;
  wire pixel_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000242400222400)) 
    fontAddress_carry__0_i_10__1
       (.I0(fontAddress_carry__1_i_2__0_0[0]),
        .I1(fontAddress_carry__1_i_2__0_0[1]),
        .I2(O[3]),
        .I3(\h_cntr_reg_reg[0]_0 ),
        .I4(O[2]),
        .I5(CO),
        .O(\h_cntr_reg_reg[6] ));
  LUT3 #(
    .INIT(8'h01)) 
    fontAddress_carry__0_i_9__1
       (.I0(O[1]),
        .I1(O[0]),
        .I2(pixel_reg),
        .O(\h_cntr_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    fontAddress_carry__1_i_1__1
       (.I0(out[0]),
        .I1(\h_cntr_reg_reg[6] ),
        .O(DI));
  LUT4 #(
    .INIT(16'h2DD2)) 
    fontAddress_carry__1_i_2__0
       (.I0(out[1]),
        .I1(fontAddress_carry__1_i_4__0_n_0),
        .I2(fontAddress_carry__1_i_5__0_n_0),
        .I3(out[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    fontAddress_carry__1_i_3__0
       (.I0(\h_cntr_reg_reg[6] ),
        .I1(out[0]),
        .I2(fontAddress_carry__1_i_4__0_n_0),
        .I3(out[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFEEEF44401114)) 
    fontAddress_carry__1_i_4__0
       (.I0(O[3]),
        .I1(fontAddress_carry__1_i_2__0_0[0]),
        .I2(CO),
        .I3(\h_cntr_reg_reg[0]_0 ),
        .I4(O[2]),
        .I5(fontAddress_carry__1_i_2__0_0[1]),
        .O(fontAddress_carry__1_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFCD00320400)) 
    fontAddress_carry__1_i_5__0
       (.I0(CO),
        .I1(O[2]),
        .I2(\h_cntr_reg_reg[0]_0 ),
        .I3(O[3]),
        .I4(fontAddress_carry__1_i_2__0_0[0]),
        .I5(fontAddress_carry__1_i_2__0_0[1]),
        .O(fontAddress_carry__1_i_5__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "Text_line3/FontRom/fontRow_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007E818199BD8181A5817E000000000000000000000000000000000000),
    .INIT_01(256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFE7C3FFFFDBFF7E0000),
    .INIT_02(256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000),
    .INIT_03(256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000),
    .INIT_04(256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF),
    .INIT_05(256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF),
    .INIT_06(256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000),
    .INIT_07(256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000),
    .INIT_08(256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000),
    .INIT_09(256'h000000006666006666666666666600000000000000183C7E1818187E3C180000),
    .INIT_0A(256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000),
    .INIT_0B(256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000),
    .INIT_0C(256'h00000000183C7E18181818181818000000000000181818181818187E3C180000),
    .INIT_0D(256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000),
    .INIT_0E(256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000),
    .INIT_0F(256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000),
    .INIT_10(256'h000000001818001818183C3C3C18000000000000000000000000000000000000),
    .INIT_11(256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600),
    .INIT_12(256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818),
    .INIT_13(256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000),
    .INIT_14(256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000),
    .INIT_15(256'h00000000000018187E18180000000000000000000000663CFF3C660000000000),
    .INIT_16(256'h00000000000000007E0000000000000000000030181818000000000000000000),
    .INIT_17(256'h0000000080C06030180C06020000000000000000181800000000000000000000),
    .INIT_18(256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000),
    .INIT_19(256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000),
    .INIT_1A(256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000),
    .INIT_1B(256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000),
    .INIT_1C(256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000),
    .INIT_1D(256'h0000000030181800000018180000000000000000001818000000181800000000),
    .INIT_1E(256'h000000000000007E00007E000000000000000000060C18306030180C06000000),
    .INIT_1F(256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000),
    .INIT_20(256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000),
    .INIT_21(256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000),
    .INIT_22(256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000),
    .INIT_23(256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000),
    .INIT_24(256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000),
    .INIT_25(256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000),
    .INIT_26(256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000),
    .INIT_27(256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000),
    .INIT_28(256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000),
    .INIT_29(256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000),
    .INIT_2A(256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000),
    .INIT_2B(256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000),
    .INIT_2C(256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000),
    .INIT_2D(256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000),
    .INIT_2E(256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000),
    .INIT_2F(256'h0000FF00000000000000000000000000000000000000000000000000C66C3810),
    .INIT_30(256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030),
    .INIT_31(256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000),
    .INIT_32(256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000),
    .INIT_33(256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000),
    .INIT_34(256'h000000003C181818181838001818000000000000E666666666766C6060E00000),
    .INIT_35(256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000),
    .INIT_36(256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000),
    .INIT_37(256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000),
    .INIT_38(256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000),
    .INIT_39(256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000),
    .INIT_3A(256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000),
    .INIT_3B(256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000),
    .INIT_3C(256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000),
    .INIT_3D(256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000),
    .INIT_3E(256'h0000000070181818180E18181870000000000000181818181800181818180000),
    .INIT_3F(256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    fontRow_reg
       (.ADDRARDADDR({ADDRARDADDR,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({charBitInRow,fontRow_reg_n_15}),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT6 #(
    .INIT(64'h000000000000FEA8)) 
    pixel_i_1__1
       (.I0(pixel_i_2__1_n_0),
        .I1(pixel_reg),
        .I2(O[0]),
        .I3(O[1]),
        .I4(pixel_reg_0),
        .I5(pixel_i_4__0_n_0),
        .O(\h_cntr_reg_reg[0] ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    pixel_i_2__1
       (.I0(charBitInRow[7]),
        .I1(charBitInRow[6]),
        .I2(pixel_reg),
        .I3(O[0]),
        .I4(charBitInRow[5]),
        .I5(charBitInRow[4]),
        .O(pixel_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h440044CC0C000C00)) 
    pixel_i_4__0
       (.I0(charBitInRow[1]),
        .I1(O[1]),
        .I2(charBitInRow[3]),
        .I3(pixel_reg),
        .I4(charBitInRow[2]),
        .I5(O[0]),
        .O(pixel_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "Font_Rom" *) 
module Font_Rom_0
   (pixel,
    \h_cntr_reg_reg[0] ,
    \h_cntr_reg_reg[2] ,
    DI,
    \h_cntr_reg_reg[6] ,
    fontRow_reg_0,
    S,
    clk_out1,
    ADDRARDADDR,
    ADDRBWRADDR,
    pixel_reg,
    pixel_reg_0,
    O,
    CO,
    out,
    pixel_reg_1,
    pixel_reg_2);
  output pixel;
  output \h_cntr_reg_reg[0] ;
  output \h_cntr_reg_reg[2] ;
  output [0:0]DI;
  output \h_cntr_reg_reg[6] ;
  output fontRow_reg_0;
  output [1:0]S;
  input clk_out1;
  input [10:0]ADDRARDADDR;
  input [10:0]ADDRBWRADDR;
  input [2:0]pixel_reg;
  input pixel_reg_0;
  input [3:0]O;
  input [0:0]CO;
  input [2:0]out;
  input [0:0]pixel_reg_1;
  input pixel_reg_2;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]ADDRARDADDR;
  wire [10:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]O;
  wire [1:0]S;
  wire [7:1]\Text_line_score/charBitInRow ;
  wire [7:1]charBitInRow;
  wire clk_out1;
  wire fontAddress_carry__1_i_4_n_0;
  wire fontAddress_carry__1_i_5_n_0;
  wire fontAddress_carry__1_i_6__0_n_0;
  wire fontRow_reg_0;
  wire fontRow_reg_n_15;
  wire \h_cntr_reg_reg[0] ;
  wire \h_cntr_reg_reg[2] ;
  wire \h_cntr_reg_reg[6] ;
  wire [2:0]out;
  wire pixel;
  wire pixel_i_2__0_n_0;
  wire pixel_i_2_n_0;
  wire pixel_i_4_n_0;
  wire pixel_i_5_n_0;
  wire [2:0]pixel_reg;
  wire pixel_reg_0;
  wire [0:0]pixel_reg_1;
  wire pixel_reg_2;
  wire [15:0]NLW_fontRow_reg_DOBDO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hFE)) 
    fontAddress_carry__0_i_11
       (.I0(pixel_reg[2]),
        .I1(pixel_reg[1]),
        .I2(pixel_reg[0]),
        .O(\h_cntr_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h1144811400114001)) 
    fontAddress_carry__0_i_12__0
       (.I0(O[3]),
        .I1(O[2]),
        .I2(\h_cntr_reg_reg[2] ),
        .I3(O[0]),
        .I4(CO),
        .I5(O[1]),
        .O(\h_cntr_reg_reg[6] ));
  LUT2 #(
    .INIT(4'hE)) 
    fontAddress_carry__1_i_1
       (.I0(out[0]),
        .I1(\h_cntr_reg_reg[6] ),
        .O(DI));
  LUT5 #(
    .INIT(32'hEE1E11E1)) 
    fontAddress_carry__1_i_2
       (.I0(fontAddress_carry__1_i_4_n_0),
        .I1(out[1]),
        .I2(fontAddress_carry__1_i_5_n_0),
        .I3(fontAddress_carry__1_i_6__0_n_0),
        .I4(out[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    fontAddress_carry__1_i_3
       (.I0(\h_cntr_reg_reg[6] ),
        .I1(out[0]),
        .I2(fontAddress_carry__1_i_4_n_0),
        .I3(out[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h00000000FF7FEEFE)) 
    fontAddress_carry__1_i_4
       (.I0(O[1]),
        .I1(O[0]),
        .I2(\h_cntr_reg_reg[2] ),
        .I3(CO),
        .I4(O[2]),
        .I5(O[3]),
        .O(fontAddress_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9999191111115155)) 
    fontAddress_carry__1_i_5
       (.I0(O[3]),
        .I1(O[2]),
        .I2(CO),
        .I3(\h_cntr_reg_reg[2] ),
        .I4(O[0]),
        .I5(O[1]),
        .O(fontAddress_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h828282A000000000)) 
    fontAddress_carry__1_i_6__0
       (.I0(O[1]),
        .I1(CO),
        .I2(O[0]),
        .I3(pixel_reg[2]),
        .I4(\h_cntr_reg_reg[0] ),
        .I5(O[2]),
        .O(fontAddress_carry__1_i_6__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "Text_line1/FontRom/fontRow_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007E818199BD8181A5817E000000000000000000000000000000000000),
    .INIT_01(256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFE7C3FFFFDBFF7E0000),
    .INIT_02(256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000),
    .INIT_03(256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000),
    .INIT_04(256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF),
    .INIT_05(256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF),
    .INIT_06(256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000),
    .INIT_07(256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000),
    .INIT_08(256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000),
    .INIT_09(256'h000000006666006666666666666600000000000000183C7E1818187E3C180000),
    .INIT_0A(256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000),
    .INIT_0B(256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000),
    .INIT_0C(256'h00000000183C7E18181818181818000000000000181818181818187E3C180000),
    .INIT_0D(256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000),
    .INIT_0E(256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000),
    .INIT_0F(256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000),
    .INIT_10(256'h000000001818001818183C3C3C18000000000000000000000000000000000000),
    .INIT_11(256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600),
    .INIT_12(256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818),
    .INIT_13(256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000),
    .INIT_14(256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000),
    .INIT_15(256'h00000000000018187E18180000000000000000000000663CFF3C660000000000),
    .INIT_16(256'h00000000000000007E0000000000000000000030181818000000000000000000),
    .INIT_17(256'h0000000080C06030180C06020000000000000000181800000000000000000000),
    .INIT_18(256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000),
    .INIT_19(256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000),
    .INIT_1A(256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000),
    .INIT_1B(256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000),
    .INIT_1C(256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000),
    .INIT_1D(256'h0000000030181800000018180000000000000000001818000000181800000000),
    .INIT_1E(256'h000000000000007E00007E000000000000000000060C18306030180C06000000),
    .INIT_1F(256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000),
    .INIT_20(256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000),
    .INIT_21(256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000),
    .INIT_22(256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000),
    .INIT_23(256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000),
    .INIT_24(256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000),
    .INIT_25(256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000),
    .INIT_26(256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000),
    .INIT_27(256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000),
    .INIT_28(256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000),
    .INIT_29(256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000),
    .INIT_2A(256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000),
    .INIT_2B(256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000),
    .INIT_2C(256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000),
    .INIT_2D(256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000),
    .INIT_2E(256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000),
    .INIT_2F(256'h0000FF00000000000000000000000000000000000000000000000000C66C3810),
    .INIT_30(256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030),
    .INIT_31(256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000),
    .INIT_32(256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000),
    .INIT_33(256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000),
    .INIT_34(256'h000000003C181818181838001818000000000000E666666666766C6060E00000),
    .INIT_35(256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000),
    .INIT_36(256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000),
    .INIT_37(256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000),
    .INIT_38(256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000),
    .INIT_39(256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000),
    .INIT_3A(256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000),
    .INIT_3B(256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000),
    .INIT_3C(256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000),
    .INIT_3D(256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000),
    .INIT_3E(256'h0000000070181818180E18181870000000000000181818181800181818180000),
    .INIT_3F(256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    fontRow_reg
       (.ADDRARDADDR({ADDRARDADDR,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({ADDRBWRADDR,\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({charBitInRow,fontRow_reg_n_15}),
        .DOBDO({\Text_line_score/charBitInRow ,NLW_fontRow_reg_DOBDO_UNCONNECTED[0]}),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT6 #(
    .INIT(64'h00000000FEA00000)) 
    pixel_i_1
       (.I0(pixel_i_2__0_n_0),
        .I1(charBitInRow[4]),
        .I2(\h_cntr_reg_reg[0] ),
        .I3(pixel_reg[2]),
        .I4(pixel_reg_0),
        .I5(pixel_i_4_n_0),
        .O(pixel));
  LUT6 #(
    .INIT(64'h00000000FEA00000)) 
    pixel_i_1__0
       (.I0(pixel_i_2_n_0),
        .I1(\Text_line_score/charBitInRow [4]),
        .I2(\h_cntr_reg_reg[0] ),
        .I3(pixel_reg_1),
        .I4(pixel_reg_2),
        .I5(pixel_i_5_n_0),
        .O(fontRow_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    pixel_i_2
       (.I0(\Text_line_score/charBitInRow [7]),
        .I1(\Text_line_score/charBitInRow [6]),
        .I2(pixel_reg[0]),
        .I3(pixel_reg[1]),
        .I4(\Text_line_score/charBitInRow [5]),
        .O(pixel_i_2_n_0));
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    pixel_i_2__0
       (.I0(charBitInRow[7]),
        .I1(charBitInRow[6]),
        .I2(pixel_reg[0]),
        .I3(pixel_reg[1]),
        .I4(charBitInRow[5]),
        .O(pixel_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_3
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .O(\h_cntr_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0C4400000C44CC00)) 
    pixel_i_4
       (.I0(charBitInRow[3]),
        .I1(pixel_reg[2]),
        .I2(charBitInRow[1]),
        .I3(pixel_reg[1]),
        .I4(pixel_reg[0]),
        .I5(charBitInRow[2]),
        .O(pixel_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F55330000000000)) 
    pixel_i_5
       (.I0(\Text_line_score/charBitInRow [3]),
        .I1(\Text_line_score/charBitInRow [2]),
        .I2(\Text_line_score/charBitInRow [1]),
        .I3(pixel_reg[1]),
        .I4(pixel_reg[0]),
        .I5(pixel_reg_1),
        .O(pixel_i_5_n_0));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module MainDemo
   (CLK_I,
    VGA_HS_O,
    VGA_VS_O,
    VGA_R,
    VGA_B,
    VGA_G,
    sw,
    led,
    btn);
  input CLK_I;
  output VGA_HS_O;
  output VGA_VS_O;
  output [3:0]VGA_R;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  input [3:0]sw;
  output [3:0]led;
  input [3:0]btn;

  wire \<const0> ;
  wire \<const1> ;
  wire [30:0]A;
  wire CLK_I;
  wire CLK_I_IBUF;
  wire DBB_n_0;
  wire DBB_n_1;
  wire DBB_n_10;
  wire DBB_n_11;
  wire DBB_n_12;
  wire DBB_n_13;
  wire DBB_n_14;
  wire DBB_n_15;
  wire DBB_n_16;
  wire DBB_n_17;
  wire DBB_n_18;
  wire DBB_n_19;
  wire DBB_n_2;
  wire DBB_n_20;
  wire DBB_n_21;
  wire DBB_n_22;
  wire DBB_n_23;
  wire DBB_n_24;
  wire DBB_n_25;
  wire DBB_n_26;
  wire DBB_n_3;
  wire DBB_n_4;
  wire DBB_n_5;
  wire DBB_n_6;
  wire DBB_n_7;
  wire DBB_n_8;
  wire DBB_n_9;
  wire Text_line1_n_0;
  wire Text_line1_n_1;
  wire Text_line1_n_10;
  wire Text_line1_n_11;
  wire Text_line1_n_12;
  wire Text_line1_n_13;
  wire Text_line1_n_14;
  wire Text_line1_n_15;
  wire Text_line1_n_2;
  wire Text_line1_n_21;
  wire Text_line1_n_22;
  wire Text_line1_n_3;
  wire Text_line1_n_4;
  wire Text_line1_n_5;
  wire Text_line1_n_6;
  wire Text_line1_n_7;
  wire Text_line1_n_8;
  wire Text_line1_n_9;
  wire Text_line3_n_0;
  wire Text_line_score_n_0;
  wire Text_line_score_n_1;
  wire Text_line_score_n_10;
  wire Text_line_score_n_11;
  wire Text_line_score_n_12;
  wire Text_line_score_n_13;
  wire Text_line_score_n_2;
  wire Text_line_score_n_3;
  wire Text_line_score_n_4;
  wire Text_line_score_n_5;
  wire Text_line_score_n_6;
  wire Text_line_score_n_7;
  wire Text_line_score_n_8;
  wire Text_line_score_n_9;
  wire VCC_2;
  wire [3:0]VGA_B;
  wire [0:0]VGA_B_OBUF;
  wire [3:0]VGA_G;
  wire [0:0]VGA_G_OBUF;
  wire VGA_HS_O;
  wire VGA_HS_O_OBUF;
  wire [3:0]VGA_R;
  wire [0:0]VGA_R_OBUF;
  wire VGA_VS_O;
  wire VGA_VS_O_OBUF;
  wire [3:0]btn;
  wire [3:0]btn_IBUF;
  wire clear;
  wire clk_1hz;
  wire clk_1hz_i_1_n_0;
  wire clk_1hz_reg_n_0;
  wire clk_2hz;
  wire clk_2hz_i_1_n_0;
  wire clk_2hz_reg_n_0;
  wire clk_4hz;
  wire clk_4hz_i_1_n_0;
  wire clk_4hz_reg_n_0;
  wire clk_8hz;
  wire clk_8hz_i_1_n_0;
  wire clk_8hz_reg_n_0;
  wire [0:0]clk_cnt_1hz;
  wire \clk_cnt_1hz[0]_i_2_n_0 ;
  wire \clk_cnt_1hz[0]_i_3_n_0 ;
  wire \clk_cnt_1hz[0]_i_4_n_0 ;
  wire \clk_cnt_1hz[0]_i_5_n_0 ;
  wire \clk_cnt_1hz[0]_i_6_n_0 ;
  wire \clk_cnt_1hz[0]_i_7_n_0 ;
  wire \clk_cnt_1hz[0]_i_8_n_0 ;
  wire \clk_cnt_1hz_reg[12]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[12]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[12]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[12]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[16]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[16]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[16]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[16]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[20]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[20]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[20]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[20]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[24]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[24]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[24]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[24]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[28]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[28]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[28]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[28]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[30]_i_2_n_3 ;
  wire \clk_cnt_1hz_reg[4]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[4]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[4]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[4]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg[8]_i_1_n_0 ;
  wire \clk_cnt_1hz_reg[8]_i_1_n_1 ;
  wire \clk_cnt_1hz_reg[8]_i_1_n_2 ;
  wire \clk_cnt_1hz_reg[8]_i_1_n_3 ;
  wire \clk_cnt_1hz_reg_n_0_[0] ;
  wire \clk_cnt_1hz_reg_n_0_[10] ;
  wire \clk_cnt_1hz_reg_n_0_[11] ;
  wire \clk_cnt_1hz_reg_n_0_[12] ;
  wire \clk_cnt_1hz_reg_n_0_[13] ;
  wire \clk_cnt_1hz_reg_n_0_[14] ;
  wire \clk_cnt_1hz_reg_n_0_[15] ;
  wire \clk_cnt_1hz_reg_n_0_[16] ;
  wire \clk_cnt_1hz_reg_n_0_[17] ;
  wire \clk_cnt_1hz_reg_n_0_[18] ;
  wire \clk_cnt_1hz_reg_n_0_[19] ;
  wire \clk_cnt_1hz_reg_n_0_[1] ;
  wire \clk_cnt_1hz_reg_n_0_[20] ;
  wire \clk_cnt_1hz_reg_n_0_[21] ;
  wire \clk_cnt_1hz_reg_n_0_[22] ;
  wire \clk_cnt_1hz_reg_n_0_[23] ;
  wire \clk_cnt_1hz_reg_n_0_[24] ;
  wire \clk_cnt_1hz_reg_n_0_[25] ;
  wire \clk_cnt_1hz_reg_n_0_[26] ;
  wire \clk_cnt_1hz_reg_n_0_[27] ;
  wire \clk_cnt_1hz_reg_n_0_[28] ;
  wire \clk_cnt_1hz_reg_n_0_[29] ;
  wire \clk_cnt_1hz_reg_n_0_[2] ;
  wire \clk_cnt_1hz_reg_n_0_[30] ;
  wire \clk_cnt_1hz_reg_n_0_[3] ;
  wire \clk_cnt_1hz_reg_n_0_[4] ;
  wire \clk_cnt_1hz_reg_n_0_[5] ;
  wire \clk_cnt_1hz_reg_n_0_[6] ;
  wire \clk_cnt_1hz_reg_n_0_[7] ;
  wire \clk_cnt_1hz_reg_n_0_[8] ;
  wire \clk_cnt_1hz_reg_n_0_[9] ;
  wire [0:0]clk_cnt_2hz;
  wire \clk_cnt_2hz[0]_i_2_n_0 ;
  wire \clk_cnt_2hz[0]_i_3_n_0 ;
  wire \clk_cnt_2hz[0]_i_4_n_0 ;
  wire \clk_cnt_2hz[0]_i_5_n_0 ;
  wire \clk_cnt_2hz[0]_i_6_n_0 ;
  wire \clk_cnt_2hz[0]_i_7_n_0 ;
  wire \clk_cnt_2hz[0]_i_8_n_0 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[12]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[16]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[20]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[24]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[28]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[30]_i_2_n_3 ;
  wire \clk_cnt_2hz_reg[30]_i_2_n_6 ;
  wire \clk_cnt_2hz_reg[30]_i_2_n_7 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[4]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_0 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_1 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_2 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_3 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_4 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_5 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_6 ;
  wire \clk_cnt_2hz_reg[8]_i_1_n_7 ;
  wire \clk_cnt_2hz_reg_n_0_[0] ;
  wire \clk_cnt_2hz_reg_n_0_[10] ;
  wire \clk_cnt_2hz_reg_n_0_[11] ;
  wire \clk_cnt_2hz_reg_n_0_[12] ;
  wire \clk_cnt_2hz_reg_n_0_[13] ;
  wire \clk_cnt_2hz_reg_n_0_[14] ;
  wire \clk_cnt_2hz_reg_n_0_[15] ;
  wire \clk_cnt_2hz_reg_n_0_[16] ;
  wire \clk_cnt_2hz_reg_n_0_[17] ;
  wire \clk_cnt_2hz_reg_n_0_[18] ;
  wire \clk_cnt_2hz_reg_n_0_[19] ;
  wire \clk_cnt_2hz_reg_n_0_[1] ;
  wire \clk_cnt_2hz_reg_n_0_[20] ;
  wire \clk_cnt_2hz_reg_n_0_[21] ;
  wire \clk_cnt_2hz_reg_n_0_[22] ;
  wire \clk_cnt_2hz_reg_n_0_[23] ;
  wire \clk_cnt_2hz_reg_n_0_[24] ;
  wire \clk_cnt_2hz_reg_n_0_[25] ;
  wire \clk_cnt_2hz_reg_n_0_[26] ;
  wire \clk_cnt_2hz_reg_n_0_[27] ;
  wire \clk_cnt_2hz_reg_n_0_[28] ;
  wire \clk_cnt_2hz_reg_n_0_[29] ;
  wire \clk_cnt_2hz_reg_n_0_[2] ;
  wire \clk_cnt_2hz_reg_n_0_[30] ;
  wire \clk_cnt_2hz_reg_n_0_[3] ;
  wire \clk_cnt_2hz_reg_n_0_[4] ;
  wire \clk_cnt_2hz_reg_n_0_[5] ;
  wire \clk_cnt_2hz_reg_n_0_[6] ;
  wire \clk_cnt_2hz_reg_n_0_[7] ;
  wire \clk_cnt_2hz_reg_n_0_[8] ;
  wire \clk_cnt_2hz_reg_n_0_[9] ;
  wire [0:0]clk_cnt_4hz;
  wire \clk_cnt_4hz[0]_i_2_n_0 ;
  wire \clk_cnt_4hz[0]_i_3_n_0 ;
  wire \clk_cnt_4hz[0]_i_4_n_0 ;
  wire \clk_cnt_4hz[0]_i_5_n_0 ;
  wire \clk_cnt_4hz[0]_i_6_n_0 ;
  wire \clk_cnt_4hz[0]_i_7_n_0 ;
  wire \clk_cnt_4hz[0]_i_8_n_0 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[12]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[16]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[20]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[24]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[28]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[30]_i_2_n_3 ;
  wire \clk_cnt_4hz_reg[30]_i_2_n_6 ;
  wire \clk_cnt_4hz_reg[30]_i_2_n_7 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[4]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_0 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_1 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_2 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_3 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_4 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_5 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_6 ;
  wire \clk_cnt_4hz_reg[8]_i_1_n_7 ;
  wire \clk_cnt_4hz_reg_n_0_[0] ;
  wire \clk_cnt_4hz_reg_n_0_[10] ;
  wire \clk_cnt_4hz_reg_n_0_[11] ;
  wire \clk_cnt_4hz_reg_n_0_[12] ;
  wire \clk_cnt_4hz_reg_n_0_[13] ;
  wire \clk_cnt_4hz_reg_n_0_[14] ;
  wire \clk_cnt_4hz_reg_n_0_[15] ;
  wire \clk_cnt_4hz_reg_n_0_[16] ;
  wire \clk_cnt_4hz_reg_n_0_[17] ;
  wire \clk_cnt_4hz_reg_n_0_[18] ;
  wire \clk_cnt_4hz_reg_n_0_[19] ;
  wire \clk_cnt_4hz_reg_n_0_[1] ;
  wire \clk_cnt_4hz_reg_n_0_[20] ;
  wire \clk_cnt_4hz_reg_n_0_[21] ;
  wire \clk_cnt_4hz_reg_n_0_[22] ;
  wire \clk_cnt_4hz_reg_n_0_[23] ;
  wire \clk_cnt_4hz_reg_n_0_[24] ;
  wire \clk_cnt_4hz_reg_n_0_[25] ;
  wire \clk_cnt_4hz_reg_n_0_[26] ;
  wire \clk_cnt_4hz_reg_n_0_[27] ;
  wire \clk_cnt_4hz_reg_n_0_[28] ;
  wire \clk_cnt_4hz_reg_n_0_[29] ;
  wire \clk_cnt_4hz_reg_n_0_[2] ;
  wire \clk_cnt_4hz_reg_n_0_[30] ;
  wire \clk_cnt_4hz_reg_n_0_[3] ;
  wire \clk_cnt_4hz_reg_n_0_[4] ;
  wire \clk_cnt_4hz_reg_n_0_[5] ;
  wire \clk_cnt_4hz_reg_n_0_[6] ;
  wire \clk_cnt_4hz_reg_n_0_[7] ;
  wire \clk_cnt_4hz_reg_n_0_[8] ;
  wire \clk_cnt_4hz_reg_n_0_[9] ;
  wire [0:0]clk_cnt_8hz;
  wire \clk_cnt_8hz[0]_i_2_n_0 ;
  wire \clk_cnt_8hz[0]_i_3_n_0 ;
  wire \clk_cnt_8hz[0]_i_4_n_0 ;
  wire \clk_cnt_8hz[0]_i_5_n_0 ;
  wire \clk_cnt_8hz[0]_i_6_n_0 ;
  wire \clk_cnt_8hz[0]_i_7_n_0 ;
  wire \clk_cnt_8hz[0]_i_8_n_0 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[12]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[16]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[20]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[24]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[28]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[30]_i_2_n_3 ;
  wire \clk_cnt_8hz_reg[30]_i_2_n_6 ;
  wire \clk_cnt_8hz_reg[30]_i_2_n_7 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[4]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_0 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_1 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_2 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_3 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_4 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_5 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_6 ;
  wire \clk_cnt_8hz_reg[8]_i_1_n_7 ;
  wire \clk_cnt_8hz_reg_n_0_[0] ;
  wire \clk_cnt_8hz_reg_n_0_[10] ;
  wire \clk_cnt_8hz_reg_n_0_[11] ;
  wire \clk_cnt_8hz_reg_n_0_[12] ;
  wire \clk_cnt_8hz_reg_n_0_[13] ;
  wire \clk_cnt_8hz_reg_n_0_[14] ;
  wire \clk_cnt_8hz_reg_n_0_[15] ;
  wire \clk_cnt_8hz_reg_n_0_[16] ;
  wire \clk_cnt_8hz_reg_n_0_[17] ;
  wire \clk_cnt_8hz_reg_n_0_[18] ;
  wire \clk_cnt_8hz_reg_n_0_[19] ;
  wire \clk_cnt_8hz_reg_n_0_[1] ;
  wire \clk_cnt_8hz_reg_n_0_[20] ;
  wire \clk_cnt_8hz_reg_n_0_[21] ;
  wire \clk_cnt_8hz_reg_n_0_[22] ;
  wire \clk_cnt_8hz_reg_n_0_[23] ;
  wire \clk_cnt_8hz_reg_n_0_[24] ;
  wire \clk_cnt_8hz_reg_n_0_[25] ;
  wire \clk_cnt_8hz_reg_n_0_[26] ;
  wire \clk_cnt_8hz_reg_n_0_[27] ;
  wire \clk_cnt_8hz_reg_n_0_[28] ;
  wire \clk_cnt_8hz_reg_n_0_[29] ;
  wire \clk_cnt_8hz_reg_n_0_[2] ;
  wire \clk_cnt_8hz_reg_n_0_[30] ;
  wire \clk_cnt_8hz_reg_n_0_[3] ;
  wire \clk_cnt_8hz_reg_n_0_[4] ;
  wire \clk_cnt_8hz_reg_n_0_[5] ;
  wire \clk_cnt_8hz_reg_n_0_[6] ;
  wire \clk_cnt_8hz_reg_n_0_[7] ;
  wire \clk_cnt_8hz_reg_n_0_[8] ;
  wire \clk_cnt_8hz_reg_n_0_[9] ;
  wire [30:1]data0;
  wire [1:0]direction;
  wire \direction[1]_i_2_n_0 ;
  wire food_x1;
  wire food_x13_out;
  wire \food_x[0]_C_i_1_n_0 ;
  wire \food_x[1]_C_i_1_n_0 ;
  wire \food_x[1]_P_i_1_n_0 ;
  wire \food_x[2]_C_i_1_n_0 ;
  wire \food_x[3]_C_i_1_n_0 ;
  wire \food_x[4]_C_i_1_n_0 ;
  wire \food_x[4]_P_i_100_n_0 ;
  wire \food_x[4]_P_i_101_n_0 ;
  wire \food_x[4]_P_i_102_n_0 ;
  wire \food_x[4]_P_i_103_n_0 ;
  wire \food_x[4]_P_i_104_n_0 ;
  wire \food_x[4]_P_i_106_n_0 ;
  wire \food_x[4]_P_i_107_n_0 ;
  wire \food_x[4]_P_i_108_n_0 ;
  wire \food_x[4]_P_i_109_n_0 ;
  wire \food_x[4]_P_i_10_n_0 ;
  wire \food_x[4]_P_i_110_n_0 ;
  wire \food_x[4]_P_i_112_n_0 ;
  wire \food_x[4]_P_i_113_n_0 ;
  wire \food_x[4]_P_i_114_n_0 ;
  wire \food_x[4]_P_i_115_n_0 ;
  wire \food_x[4]_P_i_116_n_0 ;
  wire \food_x[4]_P_i_117_n_0 ;
  wire \food_x[4]_P_i_118_n_0 ;
  wire \food_x[4]_P_i_119_n_0 ;
  wire \food_x[4]_P_i_11_n_0 ;
  wire \food_x[4]_P_i_120_n_0 ;
  wire \food_x[4]_P_i_122_n_0 ;
  wire \food_x[4]_P_i_124_n_0 ;
  wire \food_x[4]_P_i_126_n_0 ;
  wire \food_x[4]_P_i_128_n_0 ;
  wire \food_x[4]_P_i_129_n_0 ;
  wire \food_x[4]_P_i_12_n_0 ;
  wire \food_x[4]_P_i_130_n_0 ;
  wire \food_x[4]_P_i_131_n_0 ;
  wire \food_x[4]_P_i_132_n_0 ;
  wire \food_x[4]_P_i_133_n_0 ;
  wire \food_x[4]_P_i_134_n_0 ;
  wire \food_x[4]_P_i_135_n_0 ;
  wire \food_x[4]_P_i_136_n_0 ;
  wire \food_x[4]_P_i_137_n_0 ;
  wire \food_x[4]_P_i_138_n_0 ;
  wire \food_x[4]_P_i_139_n_0 ;
  wire \food_x[4]_P_i_13_n_0 ;
  wire \food_x[4]_P_i_140_n_0 ;
  wire \food_x[4]_P_i_141_n_0 ;
  wire \food_x[4]_P_i_142_n_0 ;
  wire \food_x[4]_P_i_143_n_0 ;
  wire \food_x[4]_P_i_144_n_0 ;
  wire \food_x[4]_P_i_145_n_0 ;
  wire \food_x[4]_P_i_146_n_0 ;
  wire \food_x[4]_P_i_147_n_0 ;
  wire \food_x[4]_P_i_148_n_0 ;
  wire \food_x[4]_P_i_149_n_0 ;
  wire \food_x[4]_P_i_14_n_0 ;
  wire \food_x[4]_P_i_150_n_0 ;
  wire \food_x[4]_P_i_151_n_0 ;
  wire \food_x[4]_P_i_152_n_0 ;
  wire \food_x[4]_P_i_153_n_0 ;
  wire \food_x[4]_P_i_154_n_0 ;
  wire \food_x[4]_P_i_155_n_0 ;
  wire \food_x[4]_P_i_156_n_0 ;
  wire \food_x[4]_P_i_157_n_0 ;
  wire \food_x[4]_P_i_158_n_0 ;
  wire \food_x[4]_P_i_15_n_0 ;
  wire \food_x[4]_P_i_160_n_0 ;
  wire \food_x[4]_P_i_161_n_0 ;
  wire \food_x[4]_P_i_162_n_0 ;
  wire \food_x[4]_P_i_163_n_0 ;
  wire \food_x[4]_P_i_164_n_0 ;
  wire \food_x[4]_P_i_165_n_0 ;
  wire \food_x[4]_P_i_166_n_0 ;
  wire \food_x[4]_P_i_167_n_0 ;
  wire \food_x[4]_P_i_168_n_0 ;
  wire \food_x[4]_P_i_169_n_0 ;
  wire \food_x[4]_P_i_16_n_0 ;
  wire \food_x[4]_P_i_171_n_0 ;
  wire \food_x[4]_P_i_175_n_0 ;
  wire \food_x[4]_P_i_176_n_0 ;
  wire \food_x[4]_P_i_177_n_0 ;
  wire \food_x[4]_P_i_178_n_0 ;
  wire \food_x[4]_P_i_179_n_0 ;
  wire \food_x[4]_P_i_17_n_0 ;
  wire \food_x[4]_P_i_180_n_0 ;
  wire \food_x[4]_P_i_181_n_0 ;
  wire \food_x[4]_P_i_182_n_0 ;
  wire \food_x[4]_P_i_183_n_0 ;
  wire \food_x[4]_P_i_184_n_0 ;
  wire \food_x[4]_P_i_185_n_0 ;
  wire \food_x[4]_P_i_186_n_0 ;
  wire \food_x[4]_P_i_187_n_0 ;
  wire \food_x[4]_P_i_188_n_0 ;
  wire \food_x[4]_P_i_189_n_0 ;
  wire \food_x[4]_P_i_190_n_0 ;
  wire \food_x[4]_P_i_191_n_0 ;
  wire \food_x[4]_P_i_192_n_0 ;
  wire \food_x[4]_P_i_193_n_0 ;
  wire \food_x[4]_P_i_194_n_0 ;
  wire \food_x[4]_P_i_195_n_0 ;
  wire \food_x[4]_P_i_196_n_0 ;
  wire \food_x[4]_P_i_197_n_0 ;
  wire \food_x[4]_P_i_198_n_0 ;
  wire \food_x[4]_P_i_199_n_0 ;
  wire \food_x[4]_P_i_19_n_0 ;
  wire \food_x[4]_P_i_200_n_0 ;
  wire \food_x[4]_P_i_201_n_0 ;
  wire \food_x[4]_P_i_202_n_0 ;
  wire \food_x[4]_P_i_203_n_0 ;
  wire \food_x[4]_P_i_204_n_0 ;
  wire \food_x[4]_P_i_205_n_0 ;
  wire \food_x[4]_P_i_207_n_0 ;
  wire \food_x[4]_P_i_208_n_0 ;
  wire \food_x[4]_P_i_209_n_0 ;
  wire \food_x[4]_P_i_20_n_0 ;
  wire \food_x[4]_P_i_210_n_0 ;
  wire \food_x[4]_P_i_211_n_0 ;
  wire \food_x[4]_P_i_212_n_0 ;
  wire \food_x[4]_P_i_213_n_0 ;
  wire \food_x[4]_P_i_215_n_0 ;
  wire \food_x[4]_P_i_216_n_0 ;
  wire \food_x[4]_P_i_217_n_0 ;
  wire \food_x[4]_P_i_218_n_0 ;
  wire \food_x[4]_P_i_219_n_0 ;
  wire \food_x[4]_P_i_21_n_0 ;
  wire \food_x[4]_P_i_220_n_0 ;
  wire \food_x[4]_P_i_221_n_0 ;
  wire \food_x[4]_P_i_222_n_0 ;
  wire \food_x[4]_P_i_223_n_0 ;
  wire \food_x[4]_P_i_224_n_0 ;
  wire \food_x[4]_P_i_225_n_0 ;
  wire \food_x[4]_P_i_226_n_0 ;
  wire \food_x[4]_P_i_227_n_0 ;
  wire \food_x[4]_P_i_228_n_0 ;
  wire \food_x[4]_P_i_229_n_0 ;
  wire \food_x[4]_P_i_22_n_0 ;
  wire \food_x[4]_P_i_230_n_0 ;
  wire \food_x[4]_P_i_232_n_0 ;
  wire \food_x[4]_P_i_233_n_0 ;
  wire \food_x[4]_P_i_234_n_0 ;
  wire \food_x[4]_P_i_235_n_0 ;
  wire \food_x[4]_P_i_236_n_0 ;
  wire \food_x[4]_P_i_237_n_0 ;
  wire \food_x[4]_P_i_238_n_0 ;
  wire \food_x[4]_P_i_239_n_0 ;
  wire \food_x[4]_P_i_23_n_0 ;
  wire \food_x[4]_P_i_240_n_0 ;
  wire \food_x[4]_P_i_241_n_0 ;
  wire \food_x[4]_P_i_242_n_0 ;
  wire \food_x[4]_P_i_243_n_0 ;
  wire \food_x[4]_P_i_244_n_0 ;
  wire \food_x[4]_P_i_245_n_0 ;
  wire \food_x[4]_P_i_246_n_0 ;
  wire \food_x[4]_P_i_247_n_0 ;
  wire \food_x[4]_P_i_248_n_0 ;
  wire \food_x[4]_P_i_24_n_0 ;
  wire \food_x[4]_P_i_25_n_0 ;
  wire \food_x[4]_P_i_26_n_0 ;
  wire \food_x[4]_P_i_28_n_0 ;
  wire \food_x[4]_P_i_32_n_0 ;
  wire \food_x[4]_P_i_34_n_0 ;
  wire \food_x[4]_P_i_36_n_0 ;
  wire \food_x[4]_P_i_38_n_0 ;
  wire \food_x[4]_P_i_3_n_0 ;
  wire \food_x[4]_P_i_41_n_0 ;
  wire \food_x[4]_P_i_42_n_0 ;
  wire \food_x[4]_P_i_43_n_0 ;
  wire \food_x[4]_P_i_44_n_0 ;
  wire \food_x[4]_P_i_45_n_0 ;
  wire \food_x[4]_P_i_46_n_0 ;
  wire \food_x[4]_P_i_47_n_0 ;
  wire \food_x[4]_P_i_48_n_0 ;
  wire \food_x[4]_P_i_4_n_0 ;
  wire \food_x[4]_P_i_50_n_0 ;
  wire \food_x[4]_P_i_51_n_0 ;
  wire \food_x[4]_P_i_52_n_0 ;
  wire \food_x[4]_P_i_55_n_0 ;
  wire \food_x[4]_P_i_57_n_0 ;
  wire \food_x[4]_P_i_58_n_0 ;
  wire \food_x[4]_P_i_59_n_0 ;
  wire \food_x[4]_P_i_5_n_0 ;
  wire \food_x[4]_P_i_60_n_0 ;
  wire \food_x[4]_P_i_61_n_0 ;
  wire \food_x[4]_P_i_62_n_0 ;
  wire \food_x[4]_P_i_63_n_0 ;
  wire \food_x[4]_P_i_64_n_0 ;
  wire \food_x[4]_P_i_65_n_0 ;
  wire \food_x[4]_P_i_66_n_0 ;
  wire \food_x[4]_P_i_67_n_0 ;
  wire \food_x[4]_P_i_68_n_0 ;
  wire \food_x[4]_P_i_69_n_0 ;
  wire \food_x[4]_P_i_6_n_0 ;
  wire \food_x[4]_P_i_70_n_0 ;
  wire \food_x[4]_P_i_71_n_0 ;
  wire \food_x[4]_P_i_72_n_0 ;
  wire \food_x[4]_P_i_73_n_0 ;
  wire \food_x[4]_P_i_74_n_0 ;
  wire \food_x[4]_P_i_75_n_0 ;
  wire \food_x[4]_P_i_76_n_0 ;
  wire \food_x[4]_P_i_77_n_0 ;
  wire \food_x[4]_P_i_78_n_0 ;
  wire \food_x[4]_P_i_79_n_0 ;
  wire \food_x[4]_P_i_7_n_0 ;
  wire \food_x[4]_P_i_80_n_0 ;
  wire \food_x[4]_P_i_81_n_0 ;
  wire \food_x[4]_P_i_82_n_0 ;
  wire \food_x[4]_P_i_83_n_0 ;
  wire \food_x[4]_P_i_84_n_0 ;
  wire \food_x[4]_P_i_85_n_0 ;
  wire \food_x[4]_P_i_86_n_0 ;
  wire \food_x[4]_P_i_87_n_0 ;
  wire \food_x[4]_P_i_88_n_0 ;
  wire \food_x[4]_P_i_89_n_0 ;
  wire \food_x[4]_P_i_90_n_0 ;
  wire \food_x[4]_P_i_91_n_0 ;
  wire \food_x[4]_P_i_92_n_0 ;
  wire \food_x[4]_P_i_93_n_0 ;
  wire \food_x[4]_P_i_94_n_0 ;
  wire \food_x[4]_P_i_95_n_0 ;
  wire \food_x[4]_P_i_96_n_0 ;
  wire \food_x[4]_P_i_97_n_0 ;
  wire \food_x[4]_P_i_98_n_0 ;
  wire \food_x[4]_P_i_99_n_0 ;
  wire \food_x[5]_C_i_1_n_0 ;
  wire \food_x[5]_P_i_10_n_0 ;
  wire \food_x[5]_P_i_11_n_0 ;
  wire \food_x[5]_P_i_12_n_0 ;
  wire \food_x[5]_P_i_14_n_0 ;
  wire \food_x[5]_P_i_15_n_0 ;
  wire \food_x[5]_P_i_16_n_0 ;
  wire \food_x[5]_P_i_19_n_0 ;
  wire \food_x[5]_P_i_20_n_0 ;
  wire \food_x[5]_P_i_2_n_0 ;
  wire \food_x[5]_P_i_3_n_0 ;
  wire \food_x[5]_P_i_5_n_0 ;
  wire \food_x[5]_P_i_6_n_0 ;
  wire \food_x[5]_P_i_7_n_0 ;
  wire \food_x[5]_P_i_9_n_0 ;
  wire \food_x_reg[0]_C_n_0 ;
  wire \food_x_reg[0]_LDC_n_0 ;
  wire \food_x_reg[0]_P_n_0 ;
  wire \food_x_reg[1]_C_n_0 ;
  wire \food_x_reg[1]_LDC_n_0 ;
  wire \food_x_reg[1]_P_n_0 ;
  wire \food_x_reg[2]_C_n_0 ;
  wire \food_x_reg[2]_LDC_n_0 ;
  wire \food_x_reg[2]_P_n_0 ;
  wire \food_x_reg[3]_C_n_0 ;
  wire \food_x_reg[3]_LDC_n_0 ;
  wire \food_x_reg[3]_P_n_0 ;
  wire \food_x_reg[4]_C_n_0 ;
  wire \food_x_reg[4]_LDC_n_0 ;
  wire \food_x_reg[4]_P_i_105_n_3 ;
  wire \food_x_reg[4]_P_i_105_n_6 ;
  wire \food_x_reg[4]_P_i_105_n_7 ;
  wire \food_x_reg[4]_P_i_111_n_0 ;
  wire \food_x_reg[4]_P_i_111_n_1 ;
  wire \food_x_reg[4]_P_i_111_n_2 ;
  wire \food_x_reg[4]_P_i_111_n_3 ;
  wire \food_x_reg[4]_P_i_121_n_0 ;
  wire \food_x_reg[4]_P_i_121_n_1 ;
  wire \food_x_reg[4]_P_i_121_n_2 ;
  wire \food_x_reg[4]_P_i_121_n_3 ;
  wire \food_x_reg[4]_P_i_121_n_4 ;
  wire \food_x_reg[4]_P_i_121_n_5 ;
  wire \food_x_reg[4]_P_i_121_n_6 ;
  wire \food_x_reg[4]_P_i_121_n_7 ;
  wire \food_x_reg[4]_P_i_123_n_0 ;
  wire \food_x_reg[4]_P_i_123_n_1 ;
  wire \food_x_reg[4]_P_i_123_n_2 ;
  wire \food_x_reg[4]_P_i_123_n_3 ;
  wire \food_x_reg[4]_P_i_123_n_4 ;
  wire \food_x_reg[4]_P_i_123_n_5 ;
  wire \food_x_reg[4]_P_i_123_n_6 ;
  wire \food_x_reg[4]_P_i_123_n_7 ;
  wire \food_x_reg[4]_P_i_125_n_0 ;
  wire \food_x_reg[4]_P_i_125_n_1 ;
  wire \food_x_reg[4]_P_i_125_n_2 ;
  wire \food_x_reg[4]_P_i_125_n_3 ;
  wire \food_x_reg[4]_P_i_125_n_4 ;
  wire \food_x_reg[4]_P_i_125_n_5 ;
  wire \food_x_reg[4]_P_i_125_n_6 ;
  wire \food_x_reg[4]_P_i_125_n_7 ;
  wire \food_x_reg[4]_P_i_127_n_0 ;
  wire \food_x_reg[4]_P_i_127_n_1 ;
  wire \food_x_reg[4]_P_i_127_n_2 ;
  wire \food_x_reg[4]_P_i_127_n_3 ;
  wire \food_x_reg[4]_P_i_127_n_4 ;
  wire \food_x_reg[4]_P_i_127_n_5 ;
  wire \food_x_reg[4]_P_i_127_n_6 ;
  wire \food_x_reg[4]_P_i_127_n_7 ;
  wire \food_x_reg[4]_P_i_159_n_0 ;
  wire \food_x_reg[4]_P_i_159_n_1 ;
  wire \food_x_reg[4]_P_i_159_n_2 ;
  wire \food_x_reg[4]_P_i_159_n_3 ;
  wire \food_x_reg[4]_P_i_170_n_0 ;
  wire \food_x_reg[4]_P_i_170_n_1 ;
  wire \food_x_reg[4]_P_i_170_n_2 ;
  wire \food_x_reg[4]_P_i_170_n_3 ;
  wire \food_x_reg[4]_P_i_170_n_7 ;
  wire \food_x_reg[4]_P_i_172_n_0 ;
  wire \food_x_reg[4]_P_i_172_n_1 ;
  wire \food_x_reg[4]_P_i_172_n_2 ;
  wire \food_x_reg[4]_P_i_172_n_3 ;
  wire \food_x_reg[4]_P_i_172_n_4 ;
  wire \food_x_reg[4]_P_i_172_n_5 ;
  wire \food_x_reg[4]_P_i_172_n_6 ;
  wire \food_x_reg[4]_P_i_173_n_0 ;
  wire \food_x_reg[4]_P_i_173_n_1 ;
  wire \food_x_reg[4]_P_i_173_n_2 ;
  wire \food_x_reg[4]_P_i_173_n_3 ;
  wire \food_x_reg[4]_P_i_173_n_4 ;
  wire \food_x_reg[4]_P_i_173_n_5 ;
  wire \food_x_reg[4]_P_i_173_n_6 ;
  wire \food_x_reg[4]_P_i_173_n_7 ;
  wire \food_x_reg[4]_P_i_174_n_0 ;
  wire \food_x_reg[4]_P_i_174_n_1 ;
  wire \food_x_reg[4]_P_i_174_n_2 ;
  wire \food_x_reg[4]_P_i_174_n_3 ;
  wire \food_x_reg[4]_P_i_174_n_4 ;
  wire \food_x_reg[4]_P_i_174_n_5 ;
  wire \food_x_reg[4]_P_i_174_n_6 ;
  wire \food_x_reg[4]_P_i_174_n_7 ;
  wire \food_x_reg[4]_P_i_18_n_0 ;
  wire \food_x_reg[4]_P_i_18_n_1 ;
  wire \food_x_reg[4]_P_i_18_n_2 ;
  wire \food_x_reg[4]_P_i_18_n_3 ;
  wire \food_x_reg[4]_P_i_206_n_0 ;
  wire \food_x_reg[4]_P_i_206_n_1 ;
  wire \food_x_reg[4]_P_i_206_n_2 ;
  wire \food_x_reg[4]_P_i_206_n_3 ;
  wire \food_x_reg[4]_P_i_206_n_4 ;
  wire \food_x_reg[4]_P_i_206_n_5 ;
  wire \food_x_reg[4]_P_i_206_n_6 ;
  wire \food_x_reg[4]_P_i_206_n_7 ;
  wire \food_x_reg[4]_P_i_214_n_0 ;
  wire \food_x_reg[4]_P_i_214_n_1 ;
  wire \food_x_reg[4]_P_i_214_n_2 ;
  wire \food_x_reg[4]_P_i_214_n_3 ;
  wire \food_x_reg[4]_P_i_214_n_4 ;
  wire \food_x_reg[4]_P_i_214_n_5 ;
  wire \food_x_reg[4]_P_i_214_n_6 ;
  wire \food_x_reg[4]_P_i_231_n_0 ;
  wire \food_x_reg[4]_P_i_231_n_1 ;
  wire \food_x_reg[4]_P_i_231_n_2 ;
  wire \food_x_reg[4]_P_i_231_n_3 ;
  wire \food_x_reg[4]_P_i_231_n_4 ;
  wire \food_x_reg[4]_P_i_27_n_0 ;
  wire \food_x_reg[4]_P_i_27_n_1 ;
  wire \food_x_reg[4]_P_i_27_n_2 ;
  wire \food_x_reg[4]_P_i_27_n_3 ;
  wire \food_x_reg[4]_P_i_27_n_4 ;
  wire \food_x_reg[4]_P_i_27_n_5 ;
  wire \food_x_reg[4]_P_i_27_n_6 ;
  wire \food_x_reg[4]_P_i_27_n_7 ;
  wire \food_x_reg[4]_P_i_29_n_0 ;
  wire \food_x_reg[4]_P_i_29_n_1 ;
  wire \food_x_reg[4]_P_i_29_n_2 ;
  wire \food_x_reg[4]_P_i_29_n_3 ;
  wire \food_x_reg[4]_P_i_29_n_4 ;
  wire \food_x_reg[4]_P_i_29_n_5 ;
  wire \food_x_reg[4]_P_i_29_n_6 ;
  wire \food_x_reg[4]_P_i_29_n_7 ;
  wire \food_x_reg[4]_P_i_2_n_0 ;
  wire \food_x_reg[4]_P_i_2_n_1 ;
  wire \food_x_reg[4]_P_i_2_n_2 ;
  wire \food_x_reg[4]_P_i_2_n_3 ;
  wire \food_x_reg[4]_P_i_2_n_4 ;
  wire \food_x_reg[4]_P_i_2_n_5 ;
  wire \food_x_reg[4]_P_i_2_n_6 ;
  wire \food_x_reg[4]_P_i_2_n_7 ;
  wire \food_x_reg[4]_P_i_30_n_0 ;
  wire \food_x_reg[4]_P_i_30_n_1 ;
  wire \food_x_reg[4]_P_i_30_n_2 ;
  wire \food_x_reg[4]_P_i_30_n_3 ;
  wire \food_x_reg[4]_P_i_30_n_4 ;
  wire \food_x_reg[4]_P_i_30_n_5 ;
  wire \food_x_reg[4]_P_i_30_n_6 ;
  wire \food_x_reg[4]_P_i_30_n_7 ;
  wire \food_x_reg[4]_P_i_31_n_0 ;
  wire \food_x_reg[4]_P_i_31_n_1 ;
  wire \food_x_reg[4]_P_i_31_n_2 ;
  wire \food_x_reg[4]_P_i_31_n_3 ;
  wire \food_x_reg[4]_P_i_31_n_4 ;
  wire \food_x_reg[4]_P_i_31_n_5 ;
  wire \food_x_reg[4]_P_i_31_n_6 ;
  wire \food_x_reg[4]_P_i_31_n_7 ;
  wire \food_x_reg[4]_P_i_33_n_0 ;
  wire \food_x_reg[4]_P_i_33_n_1 ;
  wire \food_x_reg[4]_P_i_33_n_2 ;
  wire \food_x_reg[4]_P_i_33_n_3 ;
  wire \food_x_reg[4]_P_i_33_n_4 ;
  wire \food_x_reg[4]_P_i_33_n_5 ;
  wire \food_x_reg[4]_P_i_33_n_6 ;
  wire \food_x_reg[4]_P_i_33_n_7 ;
  wire \food_x_reg[4]_P_i_35_n_0 ;
  wire \food_x_reg[4]_P_i_35_n_1 ;
  wire \food_x_reg[4]_P_i_35_n_2 ;
  wire \food_x_reg[4]_P_i_35_n_3 ;
  wire \food_x_reg[4]_P_i_35_n_4 ;
  wire \food_x_reg[4]_P_i_35_n_5 ;
  wire \food_x_reg[4]_P_i_35_n_6 ;
  wire \food_x_reg[4]_P_i_35_n_7 ;
  wire \food_x_reg[4]_P_i_37_n_0 ;
  wire \food_x_reg[4]_P_i_37_n_1 ;
  wire \food_x_reg[4]_P_i_37_n_2 ;
  wire \food_x_reg[4]_P_i_37_n_3 ;
  wire \food_x_reg[4]_P_i_37_n_4 ;
  wire \food_x_reg[4]_P_i_37_n_5 ;
  wire \food_x_reg[4]_P_i_37_n_6 ;
  wire \food_x_reg[4]_P_i_37_n_7 ;
  wire \food_x_reg[4]_P_i_39_n_2 ;
  wire \food_x_reg[4]_P_i_39_n_3 ;
  wire \food_x_reg[4]_P_i_39_n_5 ;
  wire \food_x_reg[4]_P_i_39_n_6 ;
  wire \food_x_reg[4]_P_i_39_n_7 ;
  wire \food_x_reg[4]_P_i_40_n_0 ;
  wire \food_x_reg[4]_P_i_40_n_1 ;
  wire \food_x_reg[4]_P_i_40_n_2 ;
  wire \food_x_reg[4]_P_i_40_n_3 ;
  wire \food_x_reg[4]_P_i_49_n_0 ;
  wire \food_x_reg[4]_P_i_49_n_1 ;
  wire \food_x_reg[4]_P_i_49_n_2 ;
  wire \food_x_reg[4]_P_i_49_n_3 ;
  wire \food_x_reg[4]_P_i_49_n_4 ;
  wire \food_x_reg[4]_P_i_49_n_5 ;
  wire \food_x_reg[4]_P_i_49_n_6 ;
  wire \food_x_reg[4]_P_i_49_n_7 ;
  wire \food_x_reg[4]_P_i_53_n_0 ;
  wire \food_x_reg[4]_P_i_53_n_1 ;
  wire \food_x_reg[4]_P_i_53_n_2 ;
  wire \food_x_reg[4]_P_i_53_n_3 ;
  wire \food_x_reg[4]_P_i_53_n_4 ;
  wire \food_x_reg[4]_P_i_53_n_5 ;
  wire \food_x_reg[4]_P_i_53_n_6 ;
  wire \food_x_reg[4]_P_i_53_n_7 ;
  wire \food_x_reg[4]_P_i_54_n_0 ;
  wire \food_x_reg[4]_P_i_54_n_1 ;
  wire \food_x_reg[4]_P_i_54_n_2 ;
  wire \food_x_reg[4]_P_i_54_n_3 ;
  wire \food_x_reg[4]_P_i_54_n_4 ;
  wire \food_x_reg[4]_P_i_54_n_5 ;
  wire \food_x_reg[4]_P_i_54_n_6 ;
  wire \food_x_reg[4]_P_i_54_n_7 ;
  wire \food_x_reg[4]_P_i_56_n_0 ;
  wire \food_x_reg[4]_P_i_56_n_1 ;
  wire \food_x_reg[4]_P_i_56_n_2 ;
  wire \food_x_reg[4]_P_i_56_n_3 ;
  wire \food_x_reg[4]_P_i_56_n_4 ;
  wire \food_x_reg[4]_P_i_56_n_5 ;
  wire \food_x_reg[4]_P_i_56_n_6 ;
  wire \food_x_reg[4]_P_i_56_n_7 ;
  wire \food_x_reg[4]_P_i_8_n_0 ;
  wire \food_x_reg[4]_P_i_8_n_1 ;
  wire \food_x_reg[4]_P_i_8_n_2 ;
  wire \food_x_reg[4]_P_i_8_n_3 ;
  wire \food_x_reg[4]_P_i_8_n_4 ;
  wire \food_x_reg[4]_P_i_8_n_5 ;
  wire \food_x_reg[4]_P_i_8_n_6 ;
  wire \food_x_reg[4]_P_i_8_n_7 ;
  wire \food_x_reg[4]_P_i_9_n_0 ;
  wire \food_x_reg[4]_P_i_9_n_1 ;
  wire \food_x_reg[4]_P_i_9_n_2 ;
  wire \food_x_reg[4]_P_i_9_n_3 ;
  wire \food_x_reg[4]_P_i_9_n_4 ;
  wire \food_x_reg[4]_P_n_0 ;
  wire \food_x_reg[5]_C_n_0 ;
  wire \food_x_reg[5]_LDC_n_0 ;
  wire \food_x_reg[5]_P_i_13_n_7 ;
  wire \food_x_reg[5]_P_i_17_n_7 ;
  wire \food_x_reg[5]_P_i_18_n_7 ;
  wire \food_x_reg[5]_P_i_4_n_2 ;
  wire \food_x_reg[5]_P_i_4_n_3 ;
  wire \food_x_reg[5]_P_i_4_n_5 ;
  wire \food_x_reg[5]_P_i_4_n_6 ;
  wire \food_x_reg[5]_P_i_4_n_7 ;
  wire \food_x_reg[5]_P_i_8_n_2 ;
  wire \food_x_reg[5]_P_i_8_n_3 ;
  wire \food_x_reg[5]_P_i_8_n_5 ;
  wire \food_x_reg[5]_P_i_8_n_6 ;
  wire \food_x_reg[5]_P_i_8_n_7 ;
  wire \food_x_reg[5]_P_n_0 ;
  wire \food_y[0]_C_i_1_n_0 ;
  wire \food_y[0]_P_i_1_n_0 ;
  wire \food_y[1]_C_i_1_n_0 ;
  wire \food_y[1]_P_i_1_n_0 ;
  wire \food_y[2]_C_i_1_n_0 ;
  wire \food_y[2]_P_i_1_n_0 ;
  wire \food_y[3]_C_i_1_n_0 ;
  wire \food_y[3]_P_i_1_n_0 ;
  wire \food_y[4]_C_i_1_n_0 ;
  wire \food_y[4]_P_i_1_n_0 ;
  wire \food_y[5]_C_i_1_n_0 ;
  wire \food_y[5]_P_i_10_n_0 ;
  wire \food_y[5]_P_i_11_n_0 ;
  wire \food_y[5]_P_i_12_n_0 ;
  wire \food_y[5]_P_i_14_n_0 ;
  wire \food_y[5]_P_i_15_n_0 ;
  wire \food_y[5]_P_i_16_n_0 ;
  wire \food_y[5]_P_i_17_n_0 ;
  wire \food_y[5]_P_i_19_n_0 ;
  wire \food_y[5]_P_i_1_n_0 ;
  wire \food_y[5]_P_i_20_n_0 ;
  wire \food_y[5]_P_i_21_n_0 ;
  wire \food_y[5]_P_i_22_n_0 ;
  wire \food_y[5]_P_i_23_n_0 ;
  wire \food_y[5]_P_i_24_n_0 ;
  wire \food_y[5]_P_i_25_n_0 ;
  wire \food_y[5]_P_i_26_n_0 ;
  wire \food_y[5]_P_i_27_n_0 ;
  wire \food_y[5]_P_i_28_n_0 ;
  wire \food_y[5]_P_i_29_n_0 ;
  wire \food_y[5]_P_i_2_n_0 ;
  wire \food_y[5]_P_i_30_n_0 ;
  wire \food_y[5]_P_i_31_n_0 ;
  wire \food_y[5]_P_i_32_n_0 ;
  wire \food_y[5]_P_i_6_n_0 ;
  wire \food_y[5]_P_i_7_n_0 ;
  wire \food_y[5]_P_i_8_n_0 ;
  wire \food_y_reg[0]_C_n_0 ;
  wire \food_y_reg[0]_LDC_n_0 ;
  wire \food_y_reg[0]_P_n_0 ;
  wire \food_y_reg[1]_C_n_0 ;
  wire \food_y_reg[1]_LDC_n_0 ;
  wire \food_y_reg[1]_P_n_0 ;
  wire \food_y_reg[2]_C_n_0 ;
  wire \food_y_reg[2]_LDC_n_0 ;
  wire \food_y_reg[2]_P_n_0 ;
  wire \food_y_reg[3]_C_n_0 ;
  wire \food_y_reg[3]_LDC_n_0 ;
  wire \food_y_reg[3]_P_n_0 ;
  wire \food_y_reg[4]_C_n_0 ;
  wire \food_y_reg[4]_LDC_n_0 ;
  wire \food_y_reg[4]_P_n_0 ;
  wire \food_y_reg[5]_C_n_0 ;
  wire \food_y_reg[5]_LDC_n_0 ;
  wire \food_y_reg[5]_P_i_13_n_0 ;
  wire \food_y_reg[5]_P_i_13_n_1 ;
  wire \food_y_reg[5]_P_i_13_n_2 ;
  wire \food_y_reg[5]_P_i_13_n_3 ;
  wire \food_y_reg[5]_P_i_18_n_0 ;
  wire \food_y_reg[5]_P_i_18_n_1 ;
  wire \food_y_reg[5]_P_i_18_n_2 ;
  wire \food_y_reg[5]_P_i_18_n_3 ;
  wire \food_y_reg[5]_P_i_3_n_2 ;
  wire \food_y_reg[5]_P_i_3_n_3 ;
  wire \food_y_reg[5]_P_i_4_n_2 ;
  wire \food_y_reg[5]_P_i_4_n_3 ;
  wire \food_y_reg[5]_P_i_5_n_0 ;
  wire \food_y_reg[5]_P_i_5_n_1 ;
  wire \food_y_reg[5]_P_i_5_n_2 ;
  wire \food_y_reg[5]_P_i_5_n_3 ;
  wire \food_y_reg[5]_P_i_9_n_0 ;
  wire \food_y_reg[5]_P_i_9_n_1 ;
  wire \food_y_reg[5]_P_i_9_n_2 ;
  wire \food_y_reg[5]_P_i_9_n_3 ;
  wire \food_y_reg[5]_P_n_0 ;
  wire game_active;
  wire game_active_i_10_n_0;
  wire game_active_i_11_n_0;
  wire game_active_i_12_n_0;
  wire game_active_i_13_n_0;
  wire game_active_i_16_n_0;
  wire game_active_i_19_n_0;
  wire game_active_i_1_n_0;
  wire game_active_i_22_n_0;
  wire game_active_i_23_n_0;
  wire game_active_i_24_n_0;
  wire game_active_i_25_n_0;
  wire game_active_i_26_n_0;
  wire game_active_i_27_n_0;
  wire game_active_i_28_n_0;
  wire game_active_i_29_n_0;
  wire game_active_i_30_n_0;
  wire game_active_i_31_n_0;
  wire game_active_i_32_n_0;
  wire game_active_i_34_n_0;
  wire game_active_i_35_n_0;
  wire game_active_i_36_n_0;
  wire game_active_i_37_n_0;
  wire game_active_i_38_n_0;
  wire game_active_i_39_n_0;
  wire game_active_i_3_n_0;
  wire game_active_i_40_n_0;
  wire game_active_i_41_n_0;
  wire game_active_i_42_n_0;
  wire game_active_i_44_n_0;
  wire game_active_i_45_n_0;
  wire game_active_i_46_n_0;
  wire game_active_i_47_n_0;
  wire game_active_i_48_n_0;
  wire game_active_i_49_n_0;
  wire game_active_i_4_n_0;
  wire game_active_i_50_n_0;
  wire game_active_i_51_n_0;
  wire game_active_i_52_n_0;
  wire game_active_i_53_n_0;
  wire game_active_i_54_n_0;
  wire game_active_i_55_n_0;
  wire game_active_i_56_n_0;
  wire game_active_i_57_n_0;
  wire game_active_i_58_n_0;
  wire game_active_i_59_n_0;
  wire game_active_i_5_n_0;
  wire game_active_i_60_n_0;
  wire game_active_i_61_n_0;
  wire game_active_i_62_n_0;
  wire game_active_i_63_n_0;
  wire game_active_i_64_n_0;
  wire game_active_i_65_n_0;
  wire game_active_i_66_n_0;
  wire game_active_i_67_n_0;
  wire game_active_i_6_n_0;
  wire game_active_i_7_n_0;
  wire game_active_i_8_n_0;
  wire game_active_i_9_n_0;
  wire game_active_reg_i_14_n_0;
  wire game_active_reg_i_14_n_1;
  wire game_active_reg_i_14_n_2;
  wire game_active_reg_i_14_n_3;
  wire game_active_reg_i_14_n_4;
  wire game_active_reg_i_14_n_5;
  wire game_active_reg_i_14_n_6;
  wire game_active_reg_i_14_n_7;
  wire game_active_reg_i_15_n_0;
  wire game_active_reg_i_15_n_1;
  wire game_active_reg_i_15_n_2;
  wire game_active_reg_i_15_n_3;
  wire game_active_reg_i_15_n_4;
  wire game_active_reg_i_15_n_5;
  wire game_active_reg_i_15_n_6;
  wire game_active_reg_i_17_n_0;
  wire game_active_reg_i_17_n_1;
  wire game_active_reg_i_17_n_2;
  wire game_active_reg_i_17_n_3;
  wire game_active_reg_i_17_n_4;
  wire game_active_reg_i_17_n_5;
  wire game_active_reg_i_17_n_6;
  wire game_active_reg_i_17_n_7;
  wire game_active_reg_i_18_n_2;
  wire game_active_reg_i_18_n_3;
  wire game_active_reg_i_18_n_5;
  wire game_active_reg_i_18_n_6;
  wire game_active_reg_i_18_n_7;
  wire game_active_reg_i_20_n_0;
  wire game_active_reg_i_20_n_1;
  wire game_active_reg_i_20_n_2;
  wire game_active_reg_i_20_n_3;
  wire game_active_reg_i_20_n_4;
  wire game_active_reg_i_20_n_5;
  wire game_active_reg_i_20_n_6;
  wire game_active_reg_i_20_n_7;
  wire game_active_reg_i_21_n_0;
  wire game_active_reg_i_21_n_1;
  wire game_active_reg_i_21_n_2;
  wire game_active_reg_i_21_n_3;
  wire game_active_reg_i_21_n_4;
  wire game_active_reg_i_21_n_5;
  wire game_active_reg_i_21_n_6;
  wire game_active_reg_i_21_n_7;
  wire game_active_reg_i_33_n_0;
  wire game_active_reg_i_33_n_1;
  wire game_active_reg_i_33_n_2;
  wire game_active_reg_i_33_n_3;
  wire game_active_reg_i_33_n_4;
  wire game_active_reg_i_33_n_5;
  wire game_active_reg_i_33_n_6;
  wire game_active_reg_i_33_n_7;
  wire game_active_reg_i_43_n_0;
  wire game_active_reg_i_43_n_1;
  wire game_active_reg_i_43_n_2;
  wire game_active_reg_i_43_n_3;
  wire game_active_reg_i_43_n_4;
  wire game_active_reg_i_43_n_5;
  wire game_active_reg_i_43_n_6;
  wire game_active_reg_i_43_n_7;
  wire \game_score[0]_i_2_n_0 ;
  wire [31:0]game_score_reg;
  wire \game_score_reg[0]_i_1_n_0 ;
  wire \game_score_reg[0]_i_1_n_1 ;
  wire \game_score_reg[0]_i_1_n_2 ;
  wire \game_score_reg[0]_i_1_n_3 ;
  wire \game_score_reg[0]_i_1_n_4 ;
  wire \game_score_reg[0]_i_1_n_5 ;
  wire \game_score_reg[0]_i_1_n_6 ;
  wire \game_score_reg[0]_i_1_n_7 ;
  wire \game_score_reg[12]_i_1_n_0 ;
  wire \game_score_reg[12]_i_1_n_1 ;
  wire \game_score_reg[12]_i_1_n_2 ;
  wire \game_score_reg[12]_i_1_n_3 ;
  wire \game_score_reg[12]_i_1_n_4 ;
  wire \game_score_reg[12]_i_1_n_5 ;
  wire \game_score_reg[12]_i_1_n_6 ;
  wire \game_score_reg[12]_i_1_n_7 ;
  wire \game_score_reg[16]_i_1_n_0 ;
  wire \game_score_reg[16]_i_1_n_1 ;
  wire \game_score_reg[16]_i_1_n_2 ;
  wire \game_score_reg[16]_i_1_n_3 ;
  wire \game_score_reg[16]_i_1_n_4 ;
  wire \game_score_reg[16]_i_1_n_5 ;
  wire \game_score_reg[16]_i_1_n_6 ;
  wire \game_score_reg[16]_i_1_n_7 ;
  wire \game_score_reg[20]_i_1_n_0 ;
  wire \game_score_reg[20]_i_1_n_1 ;
  wire \game_score_reg[20]_i_1_n_2 ;
  wire \game_score_reg[20]_i_1_n_3 ;
  wire \game_score_reg[20]_i_1_n_4 ;
  wire \game_score_reg[20]_i_1_n_5 ;
  wire \game_score_reg[20]_i_1_n_6 ;
  wire \game_score_reg[20]_i_1_n_7 ;
  wire \game_score_reg[24]_i_1_n_0 ;
  wire \game_score_reg[24]_i_1_n_1 ;
  wire \game_score_reg[24]_i_1_n_2 ;
  wire \game_score_reg[24]_i_1_n_3 ;
  wire \game_score_reg[24]_i_1_n_4 ;
  wire \game_score_reg[24]_i_1_n_5 ;
  wire \game_score_reg[24]_i_1_n_6 ;
  wire \game_score_reg[24]_i_1_n_7 ;
  wire \game_score_reg[28]_i_1_n_1 ;
  wire \game_score_reg[28]_i_1_n_2 ;
  wire \game_score_reg[28]_i_1_n_3 ;
  wire \game_score_reg[28]_i_1_n_4 ;
  wire \game_score_reg[28]_i_1_n_5 ;
  wire \game_score_reg[28]_i_1_n_6 ;
  wire \game_score_reg[28]_i_1_n_7 ;
  wire \game_score_reg[4]_i_1_n_0 ;
  wire \game_score_reg[4]_i_1_n_1 ;
  wire \game_score_reg[4]_i_1_n_2 ;
  wire \game_score_reg[4]_i_1_n_3 ;
  wire \game_score_reg[4]_i_1_n_4 ;
  wire \game_score_reg[4]_i_1_n_5 ;
  wire \game_score_reg[4]_i_1_n_6 ;
  wire \game_score_reg[4]_i_1_n_7 ;
  wire \game_score_reg[8]_i_1_n_0 ;
  wire \game_score_reg[8]_i_1_n_1 ;
  wire \game_score_reg[8]_i_1_n_2 ;
  wire \game_score_reg[8]_i_1_n_3 ;
  wire \game_score_reg[8]_i_1_n_4 ;
  wire \game_score_reg[8]_i_1_n_5 ;
  wire \game_score_reg[8]_i_1_n_6 ;
  wire \game_score_reg[8]_i_1_n_7 ;
  wire geqOp;
  wire geqOp12_in;
  wire geqOp18_in;
  wire geqOp21_in;
  wire geqOp31_in;
  wire geqOp33_in;
  wire geqOp3_in;
  wire geqOp6_in;
  wire geqOp9_in;
  wire \h_cntr_reg[0]_i_3_n_0 ;
  wire \h_cntr_reg[0]_i_4_n_0 ;
  wire \h_cntr_reg[0]_i_5_n_0 ;
  wire \h_cntr_reg[0]_i_6_n_0 ;
  wire [11:0]h_cntr_reg_reg;
  wire \h_cntr_reg_reg[0]_i_2_n_0 ;
  wire \h_cntr_reg_reg[0]_i_2_n_1 ;
  wire \h_cntr_reg_reg[0]_i_2_n_2 ;
  wire \h_cntr_reg_reg[0]_i_2_n_3 ;
  wire \h_cntr_reg_reg[0]_i_2_n_4 ;
  wire \h_cntr_reg_reg[0]_i_2_n_5 ;
  wire \h_cntr_reg_reg[0]_i_2_n_6 ;
  wire \h_cntr_reg_reg[0]_i_2_n_7 ;
  wire \h_cntr_reg_reg[4]_i_1_n_0 ;
  wire \h_cntr_reg_reg[4]_i_1_n_1 ;
  wire \h_cntr_reg_reg[4]_i_1_n_2 ;
  wire \h_cntr_reg_reg[4]_i_1_n_3 ;
  wire \h_cntr_reg_reg[4]_i_1_n_4 ;
  wire \h_cntr_reg_reg[4]_i_1_n_5 ;
  wire \h_cntr_reg_reg[4]_i_1_n_6 ;
  wire \h_cntr_reg_reg[4]_i_1_n_7 ;
  wire \h_cntr_reg_reg[8]_i_1_n_1 ;
  wire \h_cntr_reg_reg[8]_i_1_n_2 ;
  wire \h_cntr_reg_reg[8]_i_1_n_3 ;
  wire \h_cntr_reg_reg[8]_i_1_n_4 ;
  wire \h_cntr_reg_reg[8]_i_1_n_5 ;
  wire \h_cntr_reg_reg[8]_i_1_n_6 ;
  wire \h_cntr_reg_reg[8]_i_1_n_7 ;
  wire h_sync_reg;
  wire h_sync_reg0;
  wire h_sync_reg_i_10_n_0;
  wire h_sync_reg_i_11_n_0;
  wire h_sync_reg_i_12_n_0;
  wire h_sync_reg_i_13_n_0;
  wire h_sync_reg_i_14_n_0;
  wire h_sync_reg_i_15_n_0;
  wire h_sync_reg_i_16_n_0;
  wire h_sync_reg_i_17_n_0;
  wire h_sync_reg_i_18_n_0;
  wire h_sync_reg_i_5_n_0;
  wire h_sync_reg_i_7_n_0;
  wire h_sync_reg_i_8_n_0;
  wire h_sync_reg_i_9_n_0;
  wire h_sync_reg_reg_i_3_n_3;
  wire h_sync_reg_reg_i_4_n_0;
  wire h_sync_reg_reg_i_4_n_1;
  wire h_sync_reg_reg_i_4_n_2;
  wire h_sync_reg_reg_i_4_n_3;
  wire h_sync_reg_reg_i_6_n_0;
  wire h_sync_reg_reg_i_6_n_1;
  wire h_sync_reg_reg_i_6_n_2;
  wire h_sync_reg_reg_i_6_n_3;
  wire \head_x[0]_i_1_n_0 ;
  wire \head_x[12]_i_2_n_0 ;
  wire \head_x[12]_i_3_n_0 ;
  wire \head_x[12]_i_4_n_0 ;
  wire \head_x[12]_i_5_n_0 ;
  wire \head_x[12]_i_6_n_0 ;
  wire \head_x[12]_i_7_n_0 ;
  wire \head_x[12]_i_8_n_0 ;
  wire \head_x[12]_i_9_n_0 ;
  wire \head_x[16]_i_2_n_0 ;
  wire \head_x[16]_i_3_n_0 ;
  wire \head_x[16]_i_4_n_0 ;
  wire \head_x[16]_i_5_n_0 ;
  wire \head_x[16]_i_6_n_0 ;
  wire \head_x[16]_i_7_n_0 ;
  wire \head_x[16]_i_8_n_0 ;
  wire \head_x[16]_i_9_n_0 ;
  wire \head_x[1]_i_2_n_0 ;
  wire \head_x[1]_i_3_n_0 ;
  wire \head_x[1]_i_4_n_0 ;
  wire \head_x[1]_i_5_n_0 ;
  wire \head_x[1]_i_6_n_0 ;
  wire \head_x[1]_i_7_n_0 ;
  wire \head_x[1]_i_8_n_0 ;
  wire \head_x[20]_i_2_n_0 ;
  wire \head_x[20]_i_3_n_0 ;
  wire \head_x[20]_i_4_n_0 ;
  wire \head_x[20]_i_5_n_0 ;
  wire \head_x[20]_i_6_n_0 ;
  wire \head_x[20]_i_7_n_0 ;
  wire \head_x[20]_i_8_n_0 ;
  wire \head_x[20]_i_9_n_0 ;
  wire \head_x[24]_i_2_n_0 ;
  wire \head_x[24]_i_3_n_0 ;
  wire \head_x[24]_i_4_n_0 ;
  wire \head_x[24]_i_5_n_0 ;
  wire \head_x[24]_i_6_n_0 ;
  wire \head_x[24]_i_7_n_0 ;
  wire \head_x[24]_i_8_n_0 ;
  wire \head_x[24]_i_9_n_0 ;
  wire \head_x[28]_i_2_n_0 ;
  wire \head_x[28]_i_3_n_0 ;
  wire \head_x[28]_i_4_n_0 ;
  wire \head_x[28]_i_5_n_0 ;
  wire \head_x[28]_i_6_n_0 ;
  wire \head_x[4]_i_2_n_0 ;
  wire \head_x[4]_i_3_n_0 ;
  wire \head_x[4]_i_4_n_0 ;
  wire \head_x[4]_i_5_n_0 ;
  wire \head_x[4]_i_6_n_0 ;
  wire \head_x[4]_i_7_n_0 ;
  wire \head_x[4]_i_8_n_0 ;
  wire \head_x[4]_i_9_n_0 ;
  wire \head_x[8]_i_2_n_0 ;
  wire \head_x[8]_i_3_n_0 ;
  wire \head_x[8]_i_4_n_0 ;
  wire \head_x[8]_i_5_n_0 ;
  wire \head_x[8]_i_6_n_0 ;
  wire \head_x[8]_i_7_n_0 ;
  wire \head_x[8]_i_8_n_0 ;
  wire \head_x[8]_i_9_n_0 ;
  wire [30:0]head_x_reg;
  wire \head_x_reg[12]_i_1_n_0 ;
  wire \head_x_reg[12]_i_1_n_1 ;
  wire \head_x_reg[12]_i_1_n_2 ;
  wire \head_x_reg[12]_i_1_n_3 ;
  wire \head_x_reg[12]_i_1_n_4 ;
  wire \head_x_reg[12]_i_1_n_5 ;
  wire \head_x_reg[12]_i_1_n_6 ;
  wire \head_x_reg[12]_i_1_n_7 ;
  wire \head_x_reg[16]_i_1_n_0 ;
  wire \head_x_reg[16]_i_1_n_1 ;
  wire \head_x_reg[16]_i_1_n_2 ;
  wire \head_x_reg[16]_i_1_n_3 ;
  wire \head_x_reg[16]_i_1_n_4 ;
  wire \head_x_reg[16]_i_1_n_5 ;
  wire \head_x_reg[16]_i_1_n_6 ;
  wire \head_x_reg[16]_i_1_n_7 ;
  wire \head_x_reg[1]_i_1_n_0 ;
  wire \head_x_reg[1]_i_1_n_1 ;
  wire \head_x_reg[1]_i_1_n_2 ;
  wire \head_x_reg[1]_i_1_n_3 ;
  wire \head_x_reg[1]_i_1_n_4 ;
  wire \head_x_reg[1]_i_1_n_5 ;
  wire \head_x_reg[1]_i_1_n_6 ;
  wire \head_x_reg[1]_i_1_n_7 ;
  wire \head_x_reg[20]_i_1_n_0 ;
  wire \head_x_reg[20]_i_1_n_1 ;
  wire \head_x_reg[20]_i_1_n_2 ;
  wire \head_x_reg[20]_i_1_n_3 ;
  wire \head_x_reg[20]_i_1_n_4 ;
  wire \head_x_reg[20]_i_1_n_5 ;
  wire \head_x_reg[20]_i_1_n_6 ;
  wire \head_x_reg[20]_i_1_n_7 ;
  wire \head_x_reg[24]_i_1_n_0 ;
  wire \head_x_reg[24]_i_1_n_1 ;
  wire \head_x_reg[24]_i_1_n_2 ;
  wire \head_x_reg[24]_i_1_n_3 ;
  wire \head_x_reg[24]_i_1_n_4 ;
  wire \head_x_reg[24]_i_1_n_5 ;
  wire \head_x_reg[24]_i_1_n_6 ;
  wire \head_x_reg[24]_i_1_n_7 ;
  wire \head_x_reg[28]_i_1_n_2 ;
  wire \head_x_reg[28]_i_1_n_3 ;
  wire \head_x_reg[28]_i_1_n_5 ;
  wire \head_x_reg[28]_i_1_n_6 ;
  wire \head_x_reg[28]_i_1_n_7 ;
  wire \head_x_reg[4]_i_1_n_0 ;
  wire \head_x_reg[4]_i_1_n_1 ;
  wire \head_x_reg[4]_i_1_n_2 ;
  wire \head_x_reg[4]_i_1_n_3 ;
  wire \head_x_reg[4]_i_1_n_4 ;
  wire \head_x_reg[4]_i_1_n_5 ;
  wire \head_x_reg[4]_i_1_n_6 ;
  wire \head_x_reg[4]_i_1_n_7 ;
  wire \head_x_reg[8]_i_1_n_0 ;
  wire \head_x_reg[8]_i_1_n_1 ;
  wire \head_x_reg[8]_i_1_n_2 ;
  wire \head_x_reg[8]_i_1_n_3 ;
  wire \head_x_reg[8]_i_1_n_4 ;
  wire \head_x_reg[8]_i_1_n_5 ;
  wire \head_x_reg[8]_i_1_n_6 ;
  wire \head_x_reg[8]_i_1_n_7 ;
  wire [30:0]head_y;
  wire head_y0;
  wire head_y0_BUFG;
  wire head_y0_BUFG_inst_i_2_n_0;
  wire \head_y[12]_i_3_n_0 ;
  wire \head_y[12]_i_4_n_0 ;
  wire \head_y[12]_i_5_n_0 ;
  wire \head_y[12]_i_6_n_0 ;
  wire \head_y[16]_i_3_n_0 ;
  wire \head_y[16]_i_4_n_0 ;
  wire \head_y[16]_i_5_n_0 ;
  wire \head_y[16]_i_6_n_0 ;
  wire \head_y[20]_i_3_n_0 ;
  wire \head_y[20]_i_4_n_0 ;
  wire \head_y[20]_i_5_n_0 ;
  wire \head_y[20]_i_6_n_0 ;
  wire \head_y[24]_i_3_n_0 ;
  wire \head_y[24]_i_4_n_0 ;
  wire \head_y[24]_i_5_n_0 ;
  wire \head_y[24]_i_6_n_0 ;
  wire \head_y[28]_i_3_n_0 ;
  wire \head_y[28]_i_4_n_0 ;
  wire \head_y[28]_i_5_n_0 ;
  wire \head_y[28]_i_6_n_0 ;
  wire \head_y[30]_i_3_n_0 ;
  wire \head_y[30]_i_4_n_0 ;
  wire \head_y[4]_i_3_n_0 ;
  wire \head_y[4]_i_4_n_0 ;
  wire \head_y[4]_i_5_n_0 ;
  wire \head_y[4]_i_6_n_0 ;
  wire \head_y[8]_i_3_n_0 ;
  wire \head_y[8]_i_4_n_0 ;
  wire \head_y[8]_i_5_n_0 ;
  wire \head_y[8]_i_6_n_0 ;
  wire \head_y_reg[12]_i_2_n_0 ;
  wire \head_y_reg[12]_i_2_n_1 ;
  wire \head_y_reg[12]_i_2_n_2 ;
  wire \head_y_reg[12]_i_2_n_3 ;
  wire \head_y_reg[12]_i_2_n_4 ;
  wire \head_y_reg[12]_i_2_n_5 ;
  wire \head_y_reg[12]_i_2_n_6 ;
  wire \head_y_reg[12]_i_2_n_7 ;
  wire \head_y_reg[16]_i_2_n_0 ;
  wire \head_y_reg[16]_i_2_n_1 ;
  wire \head_y_reg[16]_i_2_n_2 ;
  wire \head_y_reg[16]_i_2_n_3 ;
  wire \head_y_reg[16]_i_2_n_4 ;
  wire \head_y_reg[16]_i_2_n_5 ;
  wire \head_y_reg[16]_i_2_n_6 ;
  wire \head_y_reg[16]_i_2_n_7 ;
  wire \head_y_reg[20]_i_2_n_0 ;
  wire \head_y_reg[20]_i_2_n_1 ;
  wire \head_y_reg[20]_i_2_n_2 ;
  wire \head_y_reg[20]_i_2_n_3 ;
  wire \head_y_reg[20]_i_2_n_4 ;
  wire \head_y_reg[20]_i_2_n_5 ;
  wire \head_y_reg[20]_i_2_n_6 ;
  wire \head_y_reg[20]_i_2_n_7 ;
  wire \head_y_reg[24]_i_2_n_0 ;
  wire \head_y_reg[24]_i_2_n_1 ;
  wire \head_y_reg[24]_i_2_n_2 ;
  wire \head_y_reg[24]_i_2_n_3 ;
  wire \head_y_reg[24]_i_2_n_4 ;
  wire \head_y_reg[24]_i_2_n_5 ;
  wire \head_y_reg[24]_i_2_n_6 ;
  wire \head_y_reg[24]_i_2_n_7 ;
  wire \head_y_reg[28]_i_2_n_0 ;
  wire \head_y_reg[28]_i_2_n_1 ;
  wire \head_y_reg[28]_i_2_n_2 ;
  wire \head_y_reg[28]_i_2_n_3 ;
  wire \head_y_reg[28]_i_2_n_4 ;
  wire \head_y_reg[28]_i_2_n_5 ;
  wire \head_y_reg[28]_i_2_n_6 ;
  wire \head_y_reg[28]_i_2_n_7 ;
  wire \head_y_reg[30]_i_2_n_3 ;
  wire \head_y_reg[30]_i_2_n_6 ;
  wire \head_y_reg[30]_i_2_n_7 ;
  wire \head_y_reg[4]_i_2_n_0 ;
  wire \head_y_reg[4]_i_2_n_1 ;
  wire \head_y_reg[4]_i_2_n_2 ;
  wire \head_y_reg[4]_i_2_n_3 ;
  wire \head_y_reg[4]_i_2_n_4 ;
  wire \head_y_reg[4]_i_2_n_5 ;
  wire \head_y_reg[4]_i_2_n_6 ;
  wire \head_y_reg[4]_i_2_n_7 ;
  wire \head_y_reg[8]_i_2_n_0 ;
  wire \head_y_reg[8]_i_2_n_1 ;
  wire \head_y_reg[8]_i_2_n_2 ;
  wire \head_y_reg[8]_i_2_n_3 ;
  wire \head_y_reg[8]_i_2_n_4 ;
  wire \head_y_reg[8]_i_2_n_5 ;
  wire \head_y_reg[8]_i_2_n_6 ;
  wire \head_y_reg[8]_i_2_n_7 ;
  wire [3:0]led;
  wire [3:2]led_OBUF;
  wire \led_OBUF[3]_inst_i_2_n_0 ;
  wire \led_OBUF[3]_inst_i_3_n_0 ;
  wire \led_OBUF[3]_inst_i_4_n_0 ;
  wire \led_OBUF[3]_inst_i_5_n_0 ;
  wire \led_OBUF[3]_inst_i_6_n_0 ;
  wire \led_OBUF[3]_inst_i_7_n_0 ;
  wire \led_OBUF[3]_inst_i_8_n_0 ;
  wire \led_OBUF[3]_inst_i_9_n_0 ;
  wire leqOp;
  wire leqOp11_in;
  wire leqOp17_in;
  wire leqOp20_in;
  wire leqOp5_in;
  wire ltOp;
  wire ltOp14_in;
  wire ltOp22_in;
  wire ltOp27_in;
  wire ltOp28_in;
  wire ltOp30_in;
  wire ltOp32_in;
  wire ltOp8_in;
  wire [30:0]new_head_y1_in;
  wire [5:0]p_2_in;
  wire pixel31_in;
  wire pixel32_in;
  wire pixel_i_10__0_n_0;
  wire pixel_i_10__1_n_0;
  wire pixel_i_11__0_n_0;
  wire pixel_i_11__1_n_0;
  wire pixel_i_12__0_n_0;
  wire pixel_i_13__0_n_0;
  wire pixel_i_13_n_0;
  wire pixel_i_14__0_n_0;
  wire pixel_i_14__1_n_0;
  wire pixel_i_15__0_n_0;
  wire pixel_i_15__1_n_0;
  wire pixel_i_16__1_n_0;
  wire pixel_i_16_n_0;
  wire pixel_i_17__0_n_0;
  wire pixel_i_18_n_0;
  wire pixel_i_19_n_0;
  wire pixel_i_20_n_0;
  wire pixel_i_21_n_0;
  wire pixel_i_22_n_0;
  wire pixel_i_23_n_0;
  wire pixel_i_24_n_0;
  wire pixel_i_25_n_0;
  wire pixel_i_26_n_0;
  wire pixel_i_27_n_0;
  wire pixel_i_28_n_0;
  wire pixel_i_7_n_0;
  wire pixel_i_8__0_n_0;
  wire pixel_i_8_n_0;
  wire pixel_i_9__0_n_0;
  wire pixel_i_9_n_0;
  wire pixel_reg_i_12_n_0;
  wire pixel_reg_i_12_n_1;
  wire pixel_reg_i_12_n_2;
  wire pixel_reg_i_12_n_3;
  wire pixel_reg_i_5__0_n_3;
  wire pixel_reg_i_5_n_2;
  wire pixel_reg_i_5_n_3;
  wire pixel_reg_i_6__1_n_3;
  wire pixel_reg_i_6_n_0;
  wire pixel_reg_i_6_n_1;
  wire pixel_reg_i_6_n_2;
  wire pixel_reg_i_6_n_3;
  wire pixel_reg_i_7__0_n_0;
  wire pixel_reg_i_7__0_n_1;
  wire pixel_reg_i_7__0_n_2;
  wire pixel_reg_i_7__0_n_3;
  wire pxl_clk;
  wire [30:0]random_x;
  wire random_x0;
  wire [31:0]random_x3;
  wire [30:1]random_x4;
  wire [30:1]random_x5;
  wire \random_x[0]_i_1_n_0 ;
  wire \random_x[10]_i_1_n_0 ;
  wire \random_x[11]_i_10_n_0 ;
  wire \random_x[11]_i_11_n_0 ;
  wire \random_x[11]_i_14_n_0 ;
  wire \random_x[11]_i_15_n_0 ;
  wire \random_x[11]_i_16_n_0 ;
  wire \random_x[11]_i_17_n_0 ;
  wire \random_x[11]_i_18_n_0 ;
  wire \random_x[11]_i_19_n_0 ;
  wire \random_x[11]_i_1_n_0 ;
  wire \random_x[11]_i_20_n_0 ;
  wire \random_x[11]_i_21_n_0 ;
  wire \random_x[11]_i_22_n_0 ;
  wire \random_x[11]_i_23_n_0 ;
  wire \random_x[11]_i_24_n_0 ;
  wire \random_x[11]_i_25_n_0 ;
  wire \random_x[11]_i_8_n_0 ;
  wire \random_x[11]_i_9_n_0 ;
  wire \random_x[12]_i_1_n_0 ;
  wire \random_x[13]_i_1_n_0 ;
  wire \random_x[14]_i_1_n_0 ;
  wire \random_x[15]_i_10_n_0 ;
  wire \random_x[15]_i_11_n_0 ;
  wire \random_x[15]_i_14_n_0 ;
  wire \random_x[15]_i_15_n_0 ;
  wire \random_x[15]_i_16_n_0 ;
  wire \random_x[15]_i_17_n_0 ;
  wire \random_x[15]_i_18_n_0 ;
  wire \random_x[15]_i_19_n_0 ;
  wire \random_x[15]_i_1_n_0 ;
  wire \random_x[15]_i_20_n_0 ;
  wire \random_x[15]_i_21_n_0 ;
  wire \random_x[15]_i_22_n_0 ;
  wire \random_x[15]_i_23_n_0 ;
  wire \random_x[15]_i_24_n_0 ;
  wire \random_x[15]_i_25_n_0 ;
  wire \random_x[15]_i_28_n_0 ;
  wire \random_x[15]_i_29_n_0 ;
  wire \random_x[15]_i_30_n_0 ;
  wire \random_x[15]_i_31_n_0 ;
  wire \random_x[15]_i_32_n_0 ;
  wire \random_x[15]_i_33_n_0 ;
  wire \random_x[15]_i_34_n_0 ;
  wire \random_x[15]_i_35_n_0 ;
  wire \random_x[15]_i_37_n_0 ;
  wire \random_x[15]_i_38_n_0 ;
  wire \random_x[15]_i_39_n_0 ;
  wire \random_x[15]_i_8_n_0 ;
  wire \random_x[15]_i_9_n_0 ;
  wire \random_x[16]_i_1_n_0 ;
  wire \random_x[17]_i_1_n_0 ;
  wire \random_x[18]_i_1_n_0 ;
  wire \random_x[19]_i_10_n_0 ;
  wire \random_x[19]_i_11_n_0 ;
  wire \random_x[19]_i_14_n_0 ;
  wire \random_x[19]_i_15_n_0 ;
  wire \random_x[19]_i_16_n_0 ;
  wire \random_x[19]_i_17_n_0 ;
  wire \random_x[19]_i_18_n_0 ;
  wire \random_x[19]_i_19_n_0 ;
  wire \random_x[19]_i_1_n_0 ;
  wire \random_x[19]_i_20_n_0 ;
  wire \random_x[19]_i_21_n_0 ;
  wire \random_x[19]_i_22_n_0 ;
  wire \random_x[19]_i_23_n_0 ;
  wire \random_x[19]_i_24_n_0 ;
  wire \random_x[19]_i_25_n_0 ;
  wire \random_x[19]_i_28_n_0 ;
  wire \random_x[19]_i_29_n_0 ;
  wire \random_x[19]_i_30_n_0 ;
  wire \random_x[19]_i_31_n_0 ;
  wire \random_x[19]_i_32_n_0 ;
  wire \random_x[19]_i_33_n_0 ;
  wire \random_x[19]_i_34_n_0 ;
  wire \random_x[19]_i_35_n_0 ;
  wire \random_x[19]_i_37_n_0 ;
  wire \random_x[19]_i_38_n_0 ;
  wire \random_x[19]_i_39_n_0 ;
  wire \random_x[19]_i_40_n_0 ;
  wire \random_x[19]_i_8_n_0 ;
  wire \random_x[19]_i_9_n_0 ;
  wire \random_x[1]_i_1_n_0 ;
  wire \random_x[20]_i_1_n_0 ;
  wire \random_x[21]_i_1_n_0 ;
  wire \random_x[22]_i_1_n_0 ;
  wire \random_x[23]_i_10_n_0 ;
  wire \random_x[23]_i_11_n_0 ;
  wire \random_x[23]_i_14_n_0 ;
  wire \random_x[23]_i_15_n_0 ;
  wire \random_x[23]_i_16_n_0 ;
  wire \random_x[23]_i_17_n_0 ;
  wire \random_x[23]_i_18_n_0 ;
  wire \random_x[23]_i_19_n_0 ;
  wire \random_x[23]_i_1_n_0 ;
  wire \random_x[23]_i_20_n_0 ;
  wire \random_x[23]_i_21_n_0 ;
  wire \random_x[23]_i_22_n_0 ;
  wire \random_x[23]_i_23_n_0 ;
  wire \random_x[23]_i_24_n_0 ;
  wire \random_x[23]_i_25_n_0 ;
  wire \random_x[23]_i_28_n_0 ;
  wire \random_x[23]_i_29_n_0 ;
  wire \random_x[23]_i_30_n_0 ;
  wire \random_x[23]_i_31_n_0 ;
  wire \random_x[23]_i_32_n_0 ;
  wire \random_x[23]_i_33_n_0 ;
  wire \random_x[23]_i_34_n_0 ;
  wire \random_x[23]_i_35_n_0 ;
  wire \random_x[23]_i_37_n_0 ;
  wire \random_x[23]_i_38_n_0 ;
  wire \random_x[23]_i_39_n_0 ;
  wire \random_x[23]_i_40_n_0 ;
  wire \random_x[23]_i_8_n_0 ;
  wire \random_x[23]_i_9_n_0 ;
  wire \random_x[24]_i_1_n_0 ;
  wire \random_x[25]_i_1_n_0 ;
  wire \random_x[26]_i_1_n_0 ;
  wire \random_x[27]_i_10_n_0 ;
  wire \random_x[27]_i_11_n_0 ;
  wire \random_x[27]_i_13_n_0 ;
  wire \random_x[27]_i_14_n_0 ;
  wire \random_x[27]_i_15_n_0 ;
  wire \random_x[27]_i_16_n_0 ;
  wire \random_x[27]_i_1_n_0 ;
  wire \random_x[27]_i_8_n_0 ;
  wire \random_x[27]_i_9_n_0 ;
  wire \random_x[28]_i_1_n_0 ;
  wire \random_x[29]_i_1_n_0 ;
  wire \random_x[2]_i_1_n_0 ;
  wire \random_x[30]_i_100_n_0 ;
  wire \random_x[30]_i_101_n_0 ;
  wire \random_x[30]_i_102_n_0 ;
  wire \random_x[30]_i_103_n_0 ;
  wire \random_x[30]_i_104_n_0 ;
  wire \random_x[30]_i_105_n_0 ;
  wire \random_x[30]_i_11_n_0 ;
  wire \random_x[30]_i_12_n_0 ;
  wire \random_x[30]_i_13_n_0 ;
  wire \random_x[30]_i_14_n_0 ;
  wire \random_x[30]_i_15_n_0 ;
  wire \random_x[30]_i_16_n_0 ;
  wire \random_x[30]_i_17_n_0 ;
  wire \random_x[30]_i_18_n_0 ;
  wire \random_x[30]_i_19_n_0 ;
  wire \random_x[30]_i_21_n_0 ;
  wire \random_x[30]_i_22_n_0 ;
  wire \random_x[30]_i_23_n_0 ;
  wire \random_x[30]_i_27_n_0 ;
  wire \random_x[30]_i_28_n_0 ;
  wire \random_x[30]_i_29_n_0 ;
  wire \random_x[30]_i_2_n_0 ;
  wire \random_x[30]_i_30_n_0 ;
  wire \random_x[30]_i_31_n_0 ;
  wire \random_x[30]_i_32_n_0 ;
  wire \random_x[30]_i_34_n_0 ;
  wire \random_x[30]_i_35_n_0 ;
  wire \random_x[30]_i_36_n_0 ;
  wire \random_x[30]_i_37_n_0 ;
  wire \random_x[30]_i_38_n_0 ;
  wire \random_x[30]_i_39_n_0 ;
  wire \random_x[30]_i_3_n_0 ;
  wire \random_x[30]_i_40_n_0 ;
  wire \random_x[30]_i_41_n_0 ;
  wire \random_x[30]_i_47_n_0 ;
  wire \random_x[30]_i_48_n_0 ;
  wire \random_x[30]_i_49_n_0 ;
  wire \random_x[30]_i_4_n_0 ;
  wire \random_x[30]_i_50_n_0 ;
  wire \random_x[30]_i_51_n_0 ;
  wire \random_x[30]_i_52_n_0 ;
  wire \random_x[30]_i_53_n_0 ;
  wire \random_x[30]_i_54_n_0 ;
  wire \random_x[30]_i_57_n_0 ;
  wire \random_x[30]_i_58_n_0 ;
  wire \random_x[30]_i_59_n_0 ;
  wire \random_x[30]_i_5_n_0 ;
  wire \random_x[30]_i_60_n_0 ;
  wire \random_x[30]_i_61_n_0 ;
  wire \random_x[30]_i_62_n_0 ;
  wire \random_x[30]_i_63_n_0 ;
  wire \random_x[30]_i_64_n_0 ;
  wire \random_x[30]_i_65_n_0 ;
  wire \random_x[30]_i_66_n_0 ;
  wire \random_x[30]_i_67_n_0 ;
  wire \random_x[30]_i_68_n_0 ;
  wire \random_x[30]_i_69_n_0 ;
  wire \random_x[30]_i_6_n_0 ;
  wire \random_x[30]_i_70_n_0 ;
  wire \random_x[30]_i_73_n_0 ;
  wire \random_x[30]_i_74_n_0 ;
  wire \random_x[30]_i_75_n_0 ;
  wire \random_x[30]_i_76_n_0 ;
  wire \random_x[30]_i_77_n_0 ;
  wire \random_x[30]_i_78_n_0 ;
  wire \random_x[30]_i_79_n_0 ;
  wire \random_x[30]_i_7_n_0 ;
  wire \random_x[30]_i_80_n_0 ;
  wire \random_x[30]_i_83_n_0 ;
  wire \random_x[30]_i_84_n_0 ;
  wire \random_x[30]_i_85_n_0 ;
  wire \random_x[30]_i_86_n_0 ;
  wire \random_x[30]_i_87_n_0 ;
  wire \random_x[30]_i_88_n_0 ;
  wire \random_x[30]_i_89_n_0 ;
  wire \random_x[30]_i_90_n_0 ;
  wire \random_x[30]_i_92_n_0 ;
  wire \random_x[30]_i_93_n_0 ;
  wire \random_x[30]_i_94_n_0 ;
  wire \random_x[30]_i_95_n_0 ;
  wire \random_x[30]_i_96_n_0 ;
  wire \random_x[30]_i_98_n_0 ;
  wire \random_x[30]_i_99_n_0 ;
  wire \random_x[3]_i_10_n_0 ;
  wire \random_x[3]_i_11_n_0 ;
  wire \random_x[3]_i_12_n_0 ;
  wire \random_x[3]_i_13_n_0 ;
  wire \random_x[3]_i_14_n_0 ;
  wire \random_x[3]_i_1_n_0 ;
  wire \random_x[3]_i_8_n_0 ;
  wire \random_x[3]_i_9_n_0 ;
  wire \random_x[4]_i_1_n_0 ;
  wire \random_x[5]_i_1_n_0 ;
  wire \random_x[6]_i_1_n_0 ;
  wire \random_x[7]_i_10_n_0 ;
  wire \random_x[7]_i_11_n_0 ;
  wire \random_x[7]_i_14_n_0 ;
  wire \random_x[7]_i_15_n_0 ;
  wire \random_x[7]_i_16_n_0 ;
  wire \random_x[7]_i_17_n_0 ;
  wire \random_x[7]_i_18_n_0 ;
  wire \random_x[7]_i_19_n_0 ;
  wire \random_x[7]_i_1_n_0 ;
  wire \random_x[7]_i_20_n_0 ;
  wire \random_x[7]_i_21_n_0 ;
  wire \random_x[7]_i_22_n_0 ;
  wire \random_x[7]_i_8_n_0 ;
  wire \random_x[7]_i_9_n_0 ;
  wire \random_x[8]_i_1_n_0 ;
  wire \random_x[9]_i_1_n_0 ;
  wire \random_x_reg[11]_i_12_n_0 ;
  wire \random_x_reg[11]_i_12_n_1 ;
  wire \random_x_reg[11]_i_12_n_2 ;
  wire \random_x_reg[11]_i_12_n_3 ;
  wire \random_x_reg[11]_i_13_n_0 ;
  wire \random_x_reg[11]_i_13_n_1 ;
  wire \random_x_reg[11]_i_13_n_2 ;
  wire \random_x_reg[11]_i_13_n_3 ;
  wire \random_x_reg[11]_i_2_n_0 ;
  wire \random_x_reg[11]_i_2_n_1 ;
  wire \random_x_reg[11]_i_2_n_2 ;
  wire \random_x_reg[11]_i_2_n_3 ;
  wire \random_x_reg[11]_i_2_n_4 ;
  wire \random_x_reg[11]_i_2_n_5 ;
  wire \random_x_reg[11]_i_2_n_6 ;
  wire \random_x_reg[11]_i_2_n_7 ;
  wire \random_x_reg[11]_i_3_n_0 ;
  wire \random_x_reg[11]_i_3_n_1 ;
  wire \random_x_reg[11]_i_3_n_2 ;
  wire \random_x_reg[11]_i_3_n_3 ;
  wire \random_x_reg[11]_i_3_n_4 ;
  wire \random_x_reg[11]_i_3_n_5 ;
  wire \random_x_reg[11]_i_3_n_6 ;
  wire \random_x_reg[11]_i_3_n_7 ;
  wire \random_x_reg[15]_i_12_n_0 ;
  wire \random_x_reg[15]_i_12_n_1 ;
  wire \random_x_reg[15]_i_12_n_2 ;
  wire \random_x_reg[15]_i_12_n_3 ;
  wire \random_x_reg[15]_i_13_n_0 ;
  wire \random_x_reg[15]_i_13_n_1 ;
  wire \random_x_reg[15]_i_13_n_2 ;
  wire \random_x_reg[15]_i_13_n_3 ;
  wire \random_x_reg[15]_i_26_n_0 ;
  wire \random_x_reg[15]_i_26_n_1 ;
  wire \random_x_reg[15]_i_26_n_2 ;
  wire \random_x_reg[15]_i_26_n_3 ;
  wire \random_x_reg[15]_i_26_n_4 ;
  wire \random_x_reg[15]_i_26_n_5 ;
  wire \random_x_reg[15]_i_26_n_6 ;
  wire \random_x_reg[15]_i_26_n_7 ;
  wire \random_x_reg[15]_i_27_n_0 ;
  wire \random_x_reg[15]_i_27_n_1 ;
  wire \random_x_reg[15]_i_27_n_2 ;
  wire \random_x_reg[15]_i_27_n_3 ;
  wire \random_x_reg[15]_i_27_n_4 ;
  wire \random_x_reg[15]_i_27_n_5 ;
  wire \random_x_reg[15]_i_27_n_6 ;
  wire \random_x_reg[15]_i_27_n_7 ;
  wire \random_x_reg[15]_i_2_n_0 ;
  wire \random_x_reg[15]_i_2_n_1 ;
  wire \random_x_reg[15]_i_2_n_2 ;
  wire \random_x_reg[15]_i_2_n_3 ;
  wire \random_x_reg[15]_i_2_n_4 ;
  wire \random_x_reg[15]_i_2_n_5 ;
  wire \random_x_reg[15]_i_2_n_6 ;
  wire \random_x_reg[15]_i_2_n_7 ;
  wire \random_x_reg[15]_i_36_n_0 ;
  wire \random_x_reg[15]_i_36_n_1 ;
  wire \random_x_reg[15]_i_36_n_2 ;
  wire \random_x_reg[15]_i_36_n_3 ;
  wire \random_x_reg[15]_i_36_n_4 ;
  wire \random_x_reg[15]_i_36_n_5 ;
  wire \random_x_reg[15]_i_36_n_6 ;
  wire \random_x_reg[15]_i_3_n_0 ;
  wire \random_x_reg[15]_i_3_n_1 ;
  wire \random_x_reg[15]_i_3_n_2 ;
  wire \random_x_reg[15]_i_3_n_3 ;
  wire \random_x_reg[15]_i_3_n_4 ;
  wire \random_x_reg[15]_i_3_n_5 ;
  wire \random_x_reg[15]_i_3_n_6 ;
  wire \random_x_reg[15]_i_3_n_7 ;
  wire \random_x_reg[19]_i_12_n_0 ;
  wire \random_x_reg[19]_i_12_n_1 ;
  wire \random_x_reg[19]_i_12_n_2 ;
  wire \random_x_reg[19]_i_12_n_3 ;
  wire \random_x_reg[19]_i_13_n_0 ;
  wire \random_x_reg[19]_i_13_n_1 ;
  wire \random_x_reg[19]_i_13_n_2 ;
  wire \random_x_reg[19]_i_13_n_3 ;
  wire \random_x_reg[19]_i_26_n_0 ;
  wire \random_x_reg[19]_i_26_n_1 ;
  wire \random_x_reg[19]_i_26_n_2 ;
  wire \random_x_reg[19]_i_26_n_3 ;
  wire \random_x_reg[19]_i_26_n_4 ;
  wire \random_x_reg[19]_i_26_n_5 ;
  wire \random_x_reg[19]_i_26_n_6 ;
  wire \random_x_reg[19]_i_26_n_7 ;
  wire \random_x_reg[19]_i_27_n_0 ;
  wire \random_x_reg[19]_i_27_n_1 ;
  wire \random_x_reg[19]_i_27_n_2 ;
  wire \random_x_reg[19]_i_27_n_3 ;
  wire \random_x_reg[19]_i_27_n_4 ;
  wire \random_x_reg[19]_i_27_n_5 ;
  wire \random_x_reg[19]_i_27_n_6 ;
  wire \random_x_reg[19]_i_27_n_7 ;
  wire \random_x_reg[19]_i_2_n_0 ;
  wire \random_x_reg[19]_i_2_n_1 ;
  wire \random_x_reg[19]_i_2_n_2 ;
  wire \random_x_reg[19]_i_2_n_3 ;
  wire \random_x_reg[19]_i_2_n_4 ;
  wire \random_x_reg[19]_i_2_n_5 ;
  wire \random_x_reg[19]_i_2_n_6 ;
  wire \random_x_reg[19]_i_2_n_7 ;
  wire \random_x_reg[19]_i_36_n_0 ;
  wire \random_x_reg[19]_i_36_n_1 ;
  wire \random_x_reg[19]_i_36_n_2 ;
  wire \random_x_reg[19]_i_36_n_3 ;
  wire \random_x_reg[19]_i_36_n_4 ;
  wire \random_x_reg[19]_i_36_n_5 ;
  wire \random_x_reg[19]_i_36_n_6 ;
  wire \random_x_reg[19]_i_36_n_7 ;
  wire \random_x_reg[19]_i_3_n_0 ;
  wire \random_x_reg[19]_i_3_n_1 ;
  wire \random_x_reg[19]_i_3_n_2 ;
  wire \random_x_reg[19]_i_3_n_3 ;
  wire \random_x_reg[19]_i_3_n_4 ;
  wire \random_x_reg[19]_i_3_n_5 ;
  wire \random_x_reg[19]_i_3_n_6 ;
  wire \random_x_reg[19]_i_3_n_7 ;
  wire \random_x_reg[23]_i_12_n_0 ;
  wire \random_x_reg[23]_i_12_n_1 ;
  wire \random_x_reg[23]_i_12_n_2 ;
  wire \random_x_reg[23]_i_12_n_3 ;
  wire \random_x_reg[23]_i_13_n_0 ;
  wire \random_x_reg[23]_i_13_n_1 ;
  wire \random_x_reg[23]_i_13_n_2 ;
  wire \random_x_reg[23]_i_13_n_3 ;
  wire \random_x_reg[23]_i_26_n_0 ;
  wire \random_x_reg[23]_i_26_n_1 ;
  wire \random_x_reg[23]_i_26_n_2 ;
  wire \random_x_reg[23]_i_26_n_3 ;
  wire \random_x_reg[23]_i_26_n_4 ;
  wire \random_x_reg[23]_i_26_n_5 ;
  wire \random_x_reg[23]_i_26_n_6 ;
  wire \random_x_reg[23]_i_26_n_7 ;
  wire \random_x_reg[23]_i_27_n_0 ;
  wire \random_x_reg[23]_i_27_n_1 ;
  wire \random_x_reg[23]_i_27_n_2 ;
  wire \random_x_reg[23]_i_27_n_3 ;
  wire \random_x_reg[23]_i_27_n_4 ;
  wire \random_x_reg[23]_i_27_n_5 ;
  wire \random_x_reg[23]_i_27_n_6 ;
  wire \random_x_reg[23]_i_27_n_7 ;
  wire \random_x_reg[23]_i_2_n_0 ;
  wire \random_x_reg[23]_i_2_n_1 ;
  wire \random_x_reg[23]_i_2_n_2 ;
  wire \random_x_reg[23]_i_2_n_3 ;
  wire \random_x_reg[23]_i_2_n_4 ;
  wire \random_x_reg[23]_i_2_n_5 ;
  wire \random_x_reg[23]_i_2_n_6 ;
  wire \random_x_reg[23]_i_2_n_7 ;
  wire \random_x_reg[23]_i_36_n_0 ;
  wire \random_x_reg[23]_i_36_n_1 ;
  wire \random_x_reg[23]_i_36_n_2 ;
  wire \random_x_reg[23]_i_36_n_3 ;
  wire \random_x_reg[23]_i_36_n_4 ;
  wire \random_x_reg[23]_i_36_n_5 ;
  wire \random_x_reg[23]_i_36_n_6 ;
  wire \random_x_reg[23]_i_36_n_7 ;
  wire \random_x_reg[23]_i_3_n_0 ;
  wire \random_x_reg[23]_i_3_n_1 ;
  wire \random_x_reg[23]_i_3_n_2 ;
  wire \random_x_reg[23]_i_3_n_3 ;
  wire \random_x_reg[23]_i_3_n_4 ;
  wire \random_x_reg[23]_i_3_n_5 ;
  wire \random_x_reg[23]_i_3_n_6 ;
  wire \random_x_reg[23]_i_3_n_7 ;
  wire \random_x_reg[27]_i_12_n_0 ;
  wire \random_x_reg[27]_i_12_n_1 ;
  wire \random_x_reg[27]_i_12_n_2 ;
  wire \random_x_reg[27]_i_12_n_3 ;
  wire \random_x_reg[27]_i_2_n_0 ;
  wire \random_x_reg[27]_i_2_n_1 ;
  wire \random_x_reg[27]_i_2_n_2 ;
  wire \random_x_reg[27]_i_2_n_3 ;
  wire \random_x_reg[27]_i_2_n_4 ;
  wire \random_x_reg[27]_i_2_n_5 ;
  wire \random_x_reg[27]_i_2_n_6 ;
  wire \random_x_reg[27]_i_2_n_7 ;
  wire \random_x_reg[27]_i_3_n_0 ;
  wire \random_x_reg[27]_i_3_n_1 ;
  wire \random_x_reg[27]_i_3_n_2 ;
  wire \random_x_reg[27]_i_3_n_3 ;
  wire \random_x_reg[27]_i_3_n_4 ;
  wire \random_x_reg[27]_i_3_n_5 ;
  wire \random_x_reg[27]_i_3_n_6 ;
  wire \random_x_reg[27]_i_3_n_7 ;
  wire \random_x_reg[30]_i_10_n_0 ;
  wire \random_x_reg[30]_i_10_n_1 ;
  wire \random_x_reg[30]_i_10_n_2 ;
  wire \random_x_reg[30]_i_10_n_3 ;
  wire \random_x_reg[30]_i_10_n_5 ;
  wire \random_x_reg[30]_i_10_n_6 ;
  wire \random_x_reg[30]_i_10_n_7 ;
  wire \random_x_reg[30]_i_20_n_0 ;
  wire \random_x_reg[30]_i_20_n_1 ;
  wire \random_x_reg[30]_i_20_n_2 ;
  wire \random_x_reg[30]_i_20_n_3 ;
  wire \random_x_reg[30]_i_33_n_0 ;
  wire \random_x_reg[30]_i_33_n_1 ;
  wire \random_x_reg[30]_i_33_n_2 ;
  wire \random_x_reg[30]_i_33_n_3 ;
  wire \random_x_reg[30]_i_42_n_1 ;
  wire \random_x_reg[30]_i_42_n_2 ;
  wire \random_x_reg[30]_i_42_n_3 ;
  wire \random_x_reg[30]_i_42_n_4 ;
  wire \random_x_reg[30]_i_42_n_5 ;
  wire \random_x_reg[30]_i_42_n_6 ;
  wire \random_x_reg[30]_i_42_n_7 ;
  wire \random_x_reg[30]_i_43_n_0 ;
  wire \random_x_reg[30]_i_43_n_1 ;
  wire \random_x_reg[30]_i_43_n_2 ;
  wire \random_x_reg[30]_i_43_n_3 ;
  wire \random_x_reg[30]_i_43_n_4 ;
  wire \random_x_reg[30]_i_43_n_5 ;
  wire \random_x_reg[30]_i_43_n_6 ;
  wire \random_x_reg[30]_i_43_n_7 ;
  wire \random_x_reg[30]_i_44_n_7 ;
  wire \random_x_reg[30]_i_45_n_3 ;
  wire \random_x_reg[30]_i_46_n_0 ;
  wire \random_x_reg[30]_i_46_n_1 ;
  wire \random_x_reg[30]_i_46_n_2 ;
  wire \random_x_reg[30]_i_46_n_3 ;
  wire \random_x_reg[30]_i_55_n_0 ;
  wire \random_x_reg[30]_i_55_n_1 ;
  wire \random_x_reg[30]_i_55_n_2 ;
  wire \random_x_reg[30]_i_55_n_3 ;
  wire \random_x_reg[30]_i_55_n_4 ;
  wire \random_x_reg[30]_i_55_n_5 ;
  wire \random_x_reg[30]_i_55_n_6 ;
  wire \random_x_reg[30]_i_55_n_7 ;
  wire \random_x_reg[30]_i_56_n_0 ;
  wire \random_x_reg[30]_i_56_n_1 ;
  wire \random_x_reg[30]_i_56_n_2 ;
  wire \random_x_reg[30]_i_56_n_3 ;
  wire \random_x_reg[30]_i_56_n_4 ;
  wire \random_x_reg[30]_i_56_n_5 ;
  wire \random_x_reg[30]_i_56_n_6 ;
  wire \random_x_reg[30]_i_56_n_7 ;
  wire \random_x_reg[30]_i_71_n_0 ;
  wire \random_x_reg[30]_i_71_n_1 ;
  wire \random_x_reg[30]_i_71_n_2 ;
  wire \random_x_reg[30]_i_71_n_3 ;
  wire \random_x_reg[30]_i_71_n_4 ;
  wire \random_x_reg[30]_i_71_n_5 ;
  wire \random_x_reg[30]_i_71_n_6 ;
  wire \random_x_reg[30]_i_71_n_7 ;
  wire \random_x_reg[30]_i_72_n_0 ;
  wire \random_x_reg[30]_i_72_n_1 ;
  wire \random_x_reg[30]_i_72_n_2 ;
  wire \random_x_reg[30]_i_72_n_3 ;
  wire \random_x_reg[30]_i_72_n_4 ;
  wire \random_x_reg[30]_i_72_n_5 ;
  wire \random_x_reg[30]_i_72_n_6 ;
  wire \random_x_reg[30]_i_72_n_7 ;
  wire \random_x_reg[30]_i_81_n_0 ;
  wire \random_x_reg[30]_i_81_n_1 ;
  wire \random_x_reg[30]_i_81_n_2 ;
  wire \random_x_reg[30]_i_81_n_3 ;
  wire \random_x_reg[30]_i_81_n_4 ;
  wire \random_x_reg[30]_i_81_n_5 ;
  wire \random_x_reg[30]_i_81_n_6 ;
  wire \random_x_reg[30]_i_81_n_7 ;
  wire \random_x_reg[30]_i_82_n_7 ;
  wire \random_x_reg[30]_i_8_n_3 ;
  wire \random_x_reg[30]_i_91_n_0 ;
  wire \random_x_reg[30]_i_91_n_1 ;
  wire \random_x_reg[30]_i_91_n_2 ;
  wire \random_x_reg[30]_i_91_n_3 ;
  wire \random_x_reg[30]_i_91_n_4 ;
  wire \random_x_reg[30]_i_91_n_5 ;
  wire \random_x_reg[30]_i_91_n_6 ;
  wire \random_x_reg[30]_i_91_n_7 ;
  wire \random_x_reg[30]_i_97_n_0 ;
  wire \random_x_reg[30]_i_97_n_1 ;
  wire \random_x_reg[30]_i_97_n_2 ;
  wire \random_x_reg[30]_i_97_n_3 ;
  wire \random_x_reg[30]_i_97_n_4 ;
  wire \random_x_reg[30]_i_97_n_5 ;
  wire \random_x_reg[30]_i_97_n_6 ;
  wire \random_x_reg[30]_i_97_n_7 ;
  wire \random_x_reg[30]_i_9_n_0 ;
  wire \random_x_reg[30]_i_9_n_2 ;
  wire \random_x_reg[30]_i_9_n_3 ;
  wire \random_x_reg[30]_i_9_n_5 ;
  wire \random_x_reg[30]_i_9_n_6 ;
  wire \random_x_reg[30]_i_9_n_7 ;
  wire \random_x_reg[3]_i_2_n_0 ;
  wire \random_x_reg[3]_i_2_n_1 ;
  wire \random_x_reg[3]_i_2_n_2 ;
  wire \random_x_reg[3]_i_2_n_3 ;
  wire \random_x_reg[3]_i_2_n_4 ;
  wire \random_x_reg[3]_i_2_n_5 ;
  wire \random_x_reg[3]_i_2_n_6 ;
  wire \random_x_reg[3]_i_2_n_7 ;
  wire \random_x_reg[3]_i_3_n_0 ;
  wire \random_x_reg[3]_i_3_n_1 ;
  wire \random_x_reg[3]_i_3_n_2 ;
  wire \random_x_reg[3]_i_3_n_3 ;
  wire \random_x_reg[3]_i_3_n_4 ;
  wire \random_x_reg[3]_i_3_n_5 ;
  wire \random_x_reg[3]_i_3_n_6 ;
  wire \random_x_reg[3]_i_3_n_7 ;
  wire \random_x_reg[3]_i_7_n_0 ;
  wire \random_x_reg[3]_i_7_n_1 ;
  wire \random_x_reg[3]_i_7_n_2 ;
  wire \random_x_reg[3]_i_7_n_3 ;
  wire \random_x_reg[7]_i_12_n_0 ;
  wire \random_x_reg[7]_i_12_n_1 ;
  wire \random_x_reg[7]_i_12_n_2 ;
  wire \random_x_reg[7]_i_12_n_3 ;
  wire \random_x_reg[7]_i_12_n_4 ;
  wire \random_x_reg[7]_i_12_n_5 ;
  wire \random_x_reg[7]_i_12_n_6 ;
  wire \random_x_reg[7]_i_13_n_0 ;
  wire \random_x_reg[7]_i_13_n_1 ;
  wire \random_x_reg[7]_i_13_n_2 ;
  wire \random_x_reg[7]_i_13_n_3 ;
  wire \random_x_reg[7]_i_2_n_0 ;
  wire \random_x_reg[7]_i_2_n_1 ;
  wire \random_x_reg[7]_i_2_n_2 ;
  wire \random_x_reg[7]_i_2_n_3 ;
  wire \random_x_reg[7]_i_2_n_4 ;
  wire \random_x_reg[7]_i_2_n_5 ;
  wire \random_x_reg[7]_i_2_n_6 ;
  wire \random_x_reg[7]_i_2_n_7 ;
  wire \random_x_reg[7]_i_3_n_0 ;
  wire \random_x_reg[7]_i_3_n_1 ;
  wire \random_x_reg[7]_i_3_n_2 ;
  wire \random_x_reg[7]_i_3_n_3 ;
  wire \random_x_reg[7]_i_3_n_4 ;
  wire \random_x_reg[7]_i_3_n_5 ;
  wire \random_x_reg[7]_i_3_n_6 ;
  wire \random_x_reg[7]_i_3_n_7 ;
  wire random_y0;
  wire [31:1]random_y3;
  wire [30:0]random_y4;
  wire [30:1]random_y5;
  wire \random_y[11]_i_10_n_0 ;
  wire \random_y[11]_i_11_n_0 ;
  wire \random_y[11]_i_14_n_0 ;
  wire \random_y[11]_i_15_n_0 ;
  wire \random_y[11]_i_16_n_0 ;
  wire \random_y[11]_i_17_n_0 ;
  wire \random_y[11]_i_18_n_0 ;
  wire \random_y[11]_i_19_n_0 ;
  wire \random_y[11]_i_20_n_0 ;
  wire \random_y[11]_i_8_n_0 ;
  wire \random_y[11]_i_9_n_0 ;
  wire \random_y[15]_i_10_n_0 ;
  wire \random_y[15]_i_11_n_0 ;
  wire \random_y[15]_i_14_n_0 ;
  wire \random_y[15]_i_15_n_0 ;
  wire \random_y[15]_i_16_n_0 ;
  wire \random_y[15]_i_17_n_0 ;
  wire \random_y[15]_i_19_n_0 ;
  wire \random_y[15]_i_20_n_0 ;
  wire \random_y[15]_i_21_n_0 ;
  wire \random_y[15]_i_22_n_0 ;
  wire \random_y[15]_i_23_n_0 ;
  wire \random_y[15]_i_24_n_0 ;
  wire \random_y[15]_i_25_n_0 ;
  wire \random_y[15]_i_26_n_0 ;
  wire \random_y[15]_i_8_n_0 ;
  wire \random_y[15]_i_9_n_0 ;
  wire \random_y[19]_i_10_n_0 ;
  wire \random_y[19]_i_11_n_0 ;
  wire \random_y[19]_i_14_n_0 ;
  wire \random_y[19]_i_15_n_0 ;
  wire \random_y[19]_i_16_n_0 ;
  wire \random_y[19]_i_17_n_0 ;
  wire \random_y[19]_i_18_n_0 ;
  wire \random_y[19]_i_20_n_0 ;
  wire \random_y[19]_i_21_n_0 ;
  wire \random_y[19]_i_22_n_0 ;
  wire \random_y[19]_i_23_n_0 ;
  wire \random_y[19]_i_24_n_0 ;
  wire \random_y[19]_i_25_n_0 ;
  wire \random_y[19]_i_26_n_0 ;
  wire \random_y[19]_i_27_n_0 ;
  wire \random_y[19]_i_30_n_0 ;
  wire \random_y[19]_i_31_n_0 ;
  wire \random_y[19]_i_32_n_0 ;
  wire \random_y[19]_i_33_n_0 ;
  wire \random_y[19]_i_34_n_0 ;
  wire \random_y[19]_i_35_n_0 ;
  wire \random_y[19]_i_36_n_0 ;
  wire \random_y[19]_i_37_n_0 ;
  wire \random_y[19]_i_39_n_0 ;
  wire \random_y[19]_i_40_n_0 ;
  wire \random_y[19]_i_41_n_0 ;
  wire \random_y[19]_i_8_n_0 ;
  wire \random_y[19]_i_9_n_0 ;
  wire \random_y[23]_i_10_n_0 ;
  wire \random_y[23]_i_11_n_0 ;
  wire \random_y[23]_i_14_n_0 ;
  wire \random_y[23]_i_15_n_0 ;
  wire \random_y[23]_i_16_n_0 ;
  wire \random_y[23]_i_17_n_0 ;
  wire \random_y[23]_i_19_n_0 ;
  wire \random_y[23]_i_20_n_0 ;
  wire \random_y[23]_i_21_n_0 ;
  wire \random_y[23]_i_22_n_0 ;
  wire \random_y[23]_i_23_n_0 ;
  wire \random_y[23]_i_24_n_0 ;
  wire \random_y[23]_i_25_n_0 ;
  wire \random_y[23]_i_26_n_0 ;
  wire \random_y[23]_i_29_n_0 ;
  wire \random_y[23]_i_30_n_0 ;
  wire \random_y[23]_i_31_n_0 ;
  wire \random_y[23]_i_32_n_0 ;
  wire \random_y[23]_i_33_n_0 ;
  wire \random_y[23]_i_34_n_0 ;
  wire \random_y[23]_i_35_n_0 ;
  wire \random_y[23]_i_36_n_0 ;
  wire \random_y[23]_i_38_n_0 ;
  wire \random_y[23]_i_39_n_0 ;
  wire \random_y[23]_i_40_n_0 ;
  wire \random_y[23]_i_41_n_0 ;
  wire \random_y[23]_i_8_n_0 ;
  wire \random_y[23]_i_9_n_0 ;
  wire \random_y[27]_i_10_n_0 ;
  wire \random_y[27]_i_11_n_0 ;
  wire \random_y[27]_i_13_n_0 ;
  wire \random_y[27]_i_14_n_0 ;
  wire \random_y[27]_i_15_n_0 ;
  wire \random_y[27]_i_16_n_0 ;
  wire \random_y[27]_i_8_n_0 ;
  wire \random_y[27]_i_9_n_0 ;
  wire \random_y[30]_i_100_n_0 ;
  wire \random_y[30]_i_101_n_0 ;
  wire \random_y[30]_i_102_n_0 ;
  wire \random_y[30]_i_106_n_0 ;
  wire \random_y[30]_i_107_n_0 ;
  wire \random_y[30]_i_108_n_0 ;
  wire \random_y[30]_i_109_n_0 ;
  wire \random_y[30]_i_110_n_0 ;
  wire \random_y[30]_i_111_n_0 ;
  wire \random_y[30]_i_112_n_0 ;
  wire \random_y[30]_i_113_n_0 ;
  wire \random_y[30]_i_115_n_0 ;
  wire \random_y[30]_i_116_n_0 ;
  wire \random_y[30]_i_117_n_0 ;
  wire \random_y[30]_i_118_n_0 ;
  wire \random_y[30]_i_119_n_0 ;
  wire \random_y[30]_i_11_n_0 ;
  wire \random_y[30]_i_120_n_0 ;
  wire \random_y[30]_i_121_n_0 ;
  wire \random_y[30]_i_122_n_0 ;
  wire \random_y[30]_i_123_n_0 ;
  wire \random_y[30]_i_125_n_0 ;
  wire \random_y[30]_i_126_n_0 ;
  wire \random_y[30]_i_127_n_0 ;
  wire \random_y[30]_i_128_n_0 ;
  wire \random_y[30]_i_129_n_0 ;
  wire \random_y[30]_i_12_n_0 ;
  wire \random_y[30]_i_130_n_0 ;
  wire \random_y[30]_i_131_n_0 ;
  wire \random_y[30]_i_132_n_0 ;
  wire \random_y[30]_i_13_n_0 ;
  wire \random_y[30]_i_14_n_0 ;
  wire \random_y[30]_i_15_n_0 ;
  wire \random_y[30]_i_16_n_0 ;
  wire \random_y[30]_i_17_n_0 ;
  wire \random_y[30]_i_18_n_0 ;
  wire \random_y[30]_i_19_n_0 ;
  wire \random_y[30]_i_26_n_0 ;
  wire \random_y[30]_i_27_n_0 ;
  wire \random_y[30]_i_28_n_0 ;
  wire \random_y[30]_i_29_n_0 ;
  wire \random_y[30]_i_30_n_0 ;
  wire \random_y[30]_i_31_n_0 ;
  wire \random_y[30]_i_34_n_0 ;
  wire \random_y[30]_i_35_n_0 ;
  wire \random_y[30]_i_36_n_0 ;
  wire \random_y[30]_i_37_n_0 ;
  wire \random_y[30]_i_38_n_0 ;
  wire \random_y[30]_i_39_n_0 ;
  wire \random_y[30]_i_3_n_0 ;
  wire \random_y[30]_i_40_n_0 ;
  wire \random_y[30]_i_41_n_0 ;
  wire \random_y[30]_i_42_n_0 ;
  wire \random_y[30]_i_43_n_0 ;
  wire \random_y[30]_i_44_n_0 ;
  wire \random_y[30]_i_48_n_0 ;
  wire \random_y[30]_i_49_n_0 ;
  wire \random_y[30]_i_4_n_0 ;
  wire \random_y[30]_i_50_n_0 ;
  wire \random_y[30]_i_51_n_0 ;
  wire \random_y[30]_i_52_n_0 ;
  wire \random_y[30]_i_53_n_0 ;
  wire \random_y[30]_i_54_n_0 ;
  wire \random_y[30]_i_55_n_0 ;
  wire \random_y[30]_i_5_n_0 ;
  wire \random_y[30]_i_61_n_0 ;
  wire \random_y[30]_i_62_n_0 ;
  wire \random_y[30]_i_63_n_0 ;
  wire \random_y[30]_i_64_n_0 ;
  wire \random_y[30]_i_65_n_0 ;
  wire \random_y[30]_i_66_n_0 ;
  wire \random_y[30]_i_67_n_0 ;
  wire \random_y[30]_i_68_n_0 ;
  wire \random_y[30]_i_69_n_0 ;
  wire \random_y[30]_i_6_n_0 ;
  wire \random_y[30]_i_70_n_0 ;
  wire \random_y[30]_i_71_n_0 ;
  wire \random_y[30]_i_72_n_0 ;
  wire \random_y[30]_i_73_n_0 ;
  wire \random_y[30]_i_74_n_0 ;
  wire \random_y[30]_i_77_n_0 ;
  wire \random_y[30]_i_78_n_0 ;
  wire \random_y[30]_i_79_n_0 ;
  wire \random_y[30]_i_7_n_0 ;
  wire \random_y[30]_i_80_n_0 ;
  wire \random_y[30]_i_81_n_0 ;
  wire \random_y[30]_i_82_n_0 ;
  wire \random_y[30]_i_83_n_0 ;
  wire \random_y[30]_i_84_n_0 ;
  wire \random_y[30]_i_85_n_0 ;
  wire \random_y[30]_i_86_n_0 ;
  wire \random_y[30]_i_87_n_0 ;
  wire \random_y[30]_i_88_n_0 ;
  wire \random_y[30]_i_89_n_0 ;
  wire \random_y[30]_i_90_n_0 ;
  wire \random_y[30]_i_91_n_0 ;
  wire \random_y[30]_i_92_n_0 ;
  wire \random_y[30]_i_95_n_0 ;
  wire \random_y[30]_i_96_n_0 ;
  wire \random_y[30]_i_97_n_0 ;
  wire \random_y[30]_i_98_n_0 ;
  wire \random_y[30]_i_99_n_0 ;
  wire \random_y[3]_i_10_n_0 ;
  wire \random_y[3]_i_12_n_0 ;
  wire \random_y[3]_i_13_n_0 ;
  wire \random_y[3]_i_14_n_0 ;
  wire \random_y[3]_i_8_n_0 ;
  wire \random_y[3]_i_9_n_0 ;
  wire \random_y[7]_i_10_n_0 ;
  wire \random_y[7]_i_11_n_0 ;
  wire \random_y[7]_i_14_n_0 ;
  wire \random_y[7]_i_15_n_0 ;
  wire \random_y[7]_i_16_n_0 ;
  wire \random_y[7]_i_17_n_0 ;
  wire \random_y[7]_i_19_n_0 ;
  wire \random_y[7]_i_20_n_0 ;
  wire \random_y[7]_i_21_n_0 ;
  wire \random_y[7]_i_22_n_0 ;
  wire \random_y[7]_i_23_n_0 ;
  wire \random_y[7]_i_24_n_0 ;
  wire \random_y[7]_i_8_n_0 ;
  wire \random_y[7]_i_9_n_0 ;
  wire \random_y_reg[11]_i_12_n_0 ;
  wire \random_y_reg[11]_i_12_n_1 ;
  wire \random_y_reg[11]_i_12_n_2 ;
  wire \random_y_reg[11]_i_12_n_3 ;
  wire \random_y_reg[11]_i_13_n_0 ;
  wire \random_y_reg[11]_i_13_n_1 ;
  wire \random_y_reg[11]_i_13_n_2 ;
  wire \random_y_reg[11]_i_13_n_3 ;
  wire \random_y_reg[11]_i_2_n_0 ;
  wire \random_y_reg[11]_i_2_n_1 ;
  wire \random_y_reg[11]_i_2_n_2 ;
  wire \random_y_reg[11]_i_2_n_3 ;
  wire \random_y_reg[11]_i_2_n_4 ;
  wire \random_y_reg[11]_i_2_n_5 ;
  wire \random_y_reg[11]_i_2_n_6 ;
  wire \random_y_reg[11]_i_2_n_7 ;
  wire \random_y_reg[11]_i_3_n_0 ;
  wire \random_y_reg[11]_i_3_n_1 ;
  wire \random_y_reg[11]_i_3_n_2 ;
  wire \random_y_reg[11]_i_3_n_3 ;
  wire \random_y_reg[11]_i_3_n_4 ;
  wire \random_y_reg[11]_i_3_n_5 ;
  wire \random_y_reg[11]_i_3_n_6 ;
  wire \random_y_reg[11]_i_3_n_7 ;
  wire \random_y_reg[15]_i_12_n_0 ;
  wire \random_y_reg[15]_i_12_n_1 ;
  wire \random_y_reg[15]_i_12_n_2 ;
  wire \random_y_reg[15]_i_12_n_3 ;
  wire \random_y_reg[15]_i_13_n_0 ;
  wire \random_y_reg[15]_i_13_n_1 ;
  wire \random_y_reg[15]_i_13_n_2 ;
  wire \random_y_reg[15]_i_13_n_3 ;
  wire \random_y_reg[15]_i_18_n_0 ;
  wire \random_y_reg[15]_i_18_n_1 ;
  wire \random_y_reg[15]_i_18_n_2 ;
  wire \random_y_reg[15]_i_18_n_3 ;
  wire \random_y_reg[15]_i_18_n_4 ;
  wire \random_y_reg[15]_i_18_n_5 ;
  wire \random_y_reg[15]_i_18_n_6 ;
  wire \random_y_reg[15]_i_18_n_7 ;
  wire \random_y_reg[15]_i_2_n_0 ;
  wire \random_y_reg[15]_i_2_n_1 ;
  wire \random_y_reg[15]_i_2_n_2 ;
  wire \random_y_reg[15]_i_2_n_3 ;
  wire \random_y_reg[15]_i_2_n_4 ;
  wire \random_y_reg[15]_i_2_n_5 ;
  wire \random_y_reg[15]_i_2_n_6 ;
  wire \random_y_reg[15]_i_2_n_7 ;
  wire \random_y_reg[15]_i_3_n_0 ;
  wire \random_y_reg[15]_i_3_n_1 ;
  wire \random_y_reg[15]_i_3_n_2 ;
  wire \random_y_reg[15]_i_3_n_3 ;
  wire \random_y_reg[15]_i_3_n_4 ;
  wire \random_y_reg[15]_i_3_n_5 ;
  wire \random_y_reg[15]_i_3_n_6 ;
  wire \random_y_reg[15]_i_3_n_7 ;
  wire \random_y_reg[19]_i_12_n_0 ;
  wire \random_y_reg[19]_i_12_n_1 ;
  wire \random_y_reg[19]_i_12_n_2 ;
  wire \random_y_reg[19]_i_12_n_3 ;
  wire \random_y_reg[19]_i_13_n_0 ;
  wire \random_y_reg[19]_i_13_n_1 ;
  wire \random_y_reg[19]_i_13_n_2 ;
  wire \random_y_reg[19]_i_13_n_3 ;
  wire \random_y_reg[19]_i_19_n_0 ;
  wire \random_y_reg[19]_i_19_n_1 ;
  wire \random_y_reg[19]_i_19_n_2 ;
  wire \random_y_reg[19]_i_19_n_3 ;
  wire \random_y_reg[19]_i_19_n_4 ;
  wire \random_y_reg[19]_i_19_n_5 ;
  wire \random_y_reg[19]_i_19_n_6 ;
  wire \random_y_reg[19]_i_19_n_7 ;
  wire \random_y_reg[19]_i_28_n_0 ;
  wire \random_y_reg[19]_i_28_n_1 ;
  wire \random_y_reg[19]_i_28_n_2 ;
  wire \random_y_reg[19]_i_28_n_3 ;
  wire \random_y_reg[19]_i_28_n_4 ;
  wire \random_y_reg[19]_i_28_n_5 ;
  wire \random_y_reg[19]_i_28_n_6 ;
  wire \random_y_reg[19]_i_28_n_7 ;
  wire \random_y_reg[19]_i_29_n_0 ;
  wire \random_y_reg[19]_i_29_n_1 ;
  wire \random_y_reg[19]_i_29_n_2 ;
  wire \random_y_reg[19]_i_29_n_3 ;
  wire \random_y_reg[19]_i_29_n_4 ;
  wire \random_y_reg[19]_i_29_n_5 ;
  wire \random_y_reg[19]_i_29_n_6 ;
  wire \random_y_reg[19]_i_29_n_7 ;
  wire \random_y_reg[19]_i_2_n_0 ;
  wire \random_y_reg[19]_i_2_n_1 ;
  wire \random_y_reg[19]_i_2_n_2 ;
  wire \random_y_reg[19]_i_2_n_3 ;
  wire \random_y_reg[19]_i_2_n_4 ;
  wire \random_y_reg[19]_i_2_n_5 ;
  wire \random_y_reg[19]_i_2_n_6 ;
  wire \random_y_reg[19]_i_2_n_7 ;
  wire \random_y_reg[19]_i_38_n_0 ;
  wire \random_y_reg[19]_i_38_n_1 ;
  wire \random_y_reg[19]_i_38_n_2 ;
  wire \random_y_reg[19]_i_38_n_3 ;
  wire \random_y_reg[19]_i_38_n_4 ;
  wire \random_y_reg[19]_i_38_n_5 ;
  wire \random_y_reg[19]_i_38_n_6 ;
  wire \random_y_reg[19]_i_3_n_0 ;
  wire \random_y_reg[19]_i_3_n_1 ;
  wire \random_y_reg[19]_i_3_n_2 ;
  wire \random_y_reg[19]_i_3_n_3 ;
  wire \random_y_reg[19]_i_3_n_4 ;
  wire \random_y_reg[19]_i_3_n_5 ;
  wire \random_y_reg[19]_i_3_n_6 ;
  wire \random_y_reg[19]_i_3_n_7 ;
  wire \random_y_reg[23]_i_12_n_0 ;
  wire \random_y_reg[23]_i_12_n_1 ;
  wire \random_y_reg[23]_i_12_n_2 ;
  wire \random_y_reg[23]_i_12_n_3 ;
  wire \random_y_reg[23]_i_13_n_0 ;
  wire \random_y_reg[23]_i_13_n_1 ;
  wire \random_y_reg[23]_i_13_n_2 ;
  wire \random_y_reg[23]_i_13_n_3 ;
  wire \random_y_reg[23]_i_18_n_0 ;
  wire \random_y_reg[23]_i_18_n_1 ;
  wire \random_y_reg[23]_i_18_n_2 ;
  wire \random_y_reg[23]_i_18_n_3 ;
  wire \random_y_reg[23]_i_18_n_4 ;
  wire \random_y_reg[23]_i_18_n_5 ;
  wire \random_y_reg[23]_i_18_n_6 ;
  wire \random_y_reg[23]_i_18_n_7 ;
  wire \random_y_reg[23]_i_27_n_0 ;
  wire \random_y_reg[23]_i_27_n_1 ;
  wire \random_y_reg[23]_i_27_n_2 ;
  wire \random_y_reg[23]_i_27_n_3 ;
  wire \random_y_reg[23]_i_27_n_4 ;
  wire \random_y_reg[23]_i_27_n_5 ;
  wire \random_y_reg[23]_i_27_n_6 ;
  wire \random_y_reg[23]_i_27_n_7 ;
  wire \random_y_reg[23]_i_28_n_0 ;
  wire \random_y_reg[23]_i_28_n_1 ;
  wire \random_y_reg[23]_i_28_n_2 ;
  wire \random_y_reg[23]_i_28_n_3 ;
  wire \random_y_reg[23]_i_28_n_4 ;
  wire \random_y_reg[23]_i_28_n_5 ;
  wire \random_y_reg[23]_i_28_n_6 ;
  wire \random_y_reg[23]_i_28_n_7 ;
  wire \random_y_reg[23]_i_2_n_0 ;
  wire \random_y_reg[23]_i_2_n_1 ;
  wire \random_y_reg[23]_i_2_n_2 ;
  wire \random_y_reg[23]_i_2_n_3 ;
  wire \random_y_reg[23]_i_2_n_4 ;
  wire \random_y_reg[23]_i_2_n_5 ;
  wire \random_y_reg[23]_i_2_n_6 ;
  wire \random_y_reg[23]_i_2_n_7 ;
  wire \random_y_reg[23]_i_37_n_0 ;
  wire \random_y_reg[23]_i_37_n_1 ;
  wire \random_y_reg[23]_i_37_n_2 ;
  wire \random_y_reg[23]_i_37_n_3 ;
  wire \random_y_reg[23]_i_37_n_4 ;
  wire \random_y_reg[23]_i_37_n_5 ;
  wire \random_y_reg[23]_i_37_n_6 ;
  wire \random_y_reg[23]_i_37_n_7 ;
  wire \random_y_reg[23]_i_3_n_0 ;
  wire \random_y_reg[23]_i_3_n_1 ;
  wire \random_y_reg[23]_i_3_n_2 ;
  wire \random_y_reg[23]_i_3_n_3 ;
  wire \random_y_reg[23]_i_3_n_4 ;
  wire \random_y_reg[23]_i_3_n_5 ;
  wire \random_y_reg[23]_i_3_n_6 ;
  wire \random_y_reg[23]_i_3_n_7 ;
  wire \random_y_reg[27]_i_12_n_0 ;
  wire \random_y_reg[27]_i_12_n_1 ;
  wire \random_y_reg[27]_i_12_n_2 ;
  wire \random_y_reg[27]_i_12_n_3 ;
  wire \random_y_reg[27]_i_2_n_0 ;
  wire \random_y_reg[27]_i_2_n_1 ;
  wire \random_y_reg[27]_i_2_n_2 ;
  wire \random_y_reg[27]_i_2_n_3 ;
  wire \random_y_reg[27]_i_2_n_4 ;
  wire \random_y_reg[27]_i_2_n_5 ;
  wire \random_y_reg[27]_i_2_n_6 ;
  wire \random_y_reg[27]_i_2_n_7 ;
  wire \random_y_reg[27]_i_3_n_0 ;
  wire \random_y_reg[27]_i_3_n_1 ;
  wire \random_y_reg[27]_i_3_n_2 ;
  wire \random_y_reg[27]_i_3_n_3 ;
  wire \random_y_reg[27]_i_3_n_4 ;
  wire \random_y_reg[27]_i_3_n_5 ;
  wire \random_y_reg[27]_i_3_n_6 ;
  wire \random_y_reg[27]_i_3_n_7 ;
  wire \random_y_reg[30]_i_103_n_0 ;
  wire \random_y_reg[30]_i_103_n_1 ;
  wire \random_y_reg[30]_i_103_n_2 ;
  wire \random_y_reg[30]_i_103_n_3 ;
  wire \random_y_reg[30]_i_103_n_4 ;
  wire \random_y_reg[30]_i_103_n_5 ;
  wire \random_y_reg[30]_i_103_n_6 ;
  wire \random_y_reg[30]_i_103_n_7 ;
  wire \random_y_reg[30]_i_104_n_7 ;
  wire \random_y_reg[30]_i_105_n_0 ;
  wire \random_y_reg[30]_i_105_n_1 ;
  wire \random_y_reg[30]_i_105_n_2 ;
  wire \random_y_reg[30]_i_105_n_3 ;
  wire \random_y_reg[30]_i_105_n_4 ;
  wire \random_y_reg[30]_i_105_n_5 ;
  wire \random_y_reg[30]_i_105_n_6 ;
  wire \random_y_reg[30]_i_105_n_7 ;
  wire \random_y_reg[30]_i_10_n_0 ;
  wire \random_y_reg[30]_i_10_n_1 ;
  wire \random_y_reg[30]_i_10_n_2 ;
  wire \random_y_reg[30]_i_10_n_3 ;
  wire \random_y_reg[30]_i_10_n_5 ;
  wire \random_y_reg[30]_i_10_n_6 ;
  wire \random_y_reg[30]_i_10_n_7 ;
  wire \random_y_reg[30]_i_114_n_0 ;
  wire \random_y_reg[30]_i_114_n_1 ;
  wire \random_y_reg[30]_i_114_n_2 ;
  wire \random_y_reg[30]_i_114_n_3 ;
  wire \random_y_reg[30]_i_114_n_4 ;
  wire \random_y_reg[30]_i_114_n_5 ;
  wire \random_y_reg[30]_i_114_n_6 ;
  wire \random_y_reg[30]_i_114_n_7 ;
  wire \random_y_reg[30]_i_124_n_0 ;
  wire \random_y_reg[30]_i_124_n_1 ;
  wire \random_y_reg[30]_i_124_n_2 ;
  wire \random_y_reg[30]_i_124_n_3 ;
  wire \random_y_reg[30]_i_124_n_4 ;
  wire \random_y_reg[30]_i_124_n_5 ;
  wire \random_y_reg[30]_i_124_n_6 ;
  wire \random_y_reg[30]_i_124_n_7 ;
  wire \random_y_reg[30]_i_20_n_0 ;
  wire \random_y_reg[30]_i_20_n_1 ;
  wire \random_y_reg[30]_i_20_n_2 ;
  wire \random_y_reg[30]_i_20_n_3 ;
  wire \random_y_reg[30]_i_21_n_3 ;
  wire \random_y_reg[30]_i_21_n_6 ;
  wire \random_y_reg[30]_i_21_n_7 ;
  wire \random_y_reg[30]_i_22_n_0 ;
  wire \random_y_reg[30]_i_22_n_1 ;
  wire \random_y_reg[30]_i_22_n_2 ;
  wire \random_y_reg[30]_i_22_n_3 ;
  wire \random_y_reg[30]_i_22_n_4 ;
  wire \random_y_reg[30]_i_22_n_5 ;
  wire \random_y_reg[30]_i_22_n_6 ;
  wire \random_y_reg[30]_i_22_n_7 ;
  wire \random_y_reg[30]_i_32_n_0 ;
  wire \random_y_reg[30]_i_32_n_1 ;
  wire \random_y_reg[30]_i_32_n_2 ;
  wire \random_y_reg[30]_i_32_n_3 ;
  wire \random_y_reg[30]_i_33_n_0 ;
  wire \random_y_reg[30]_i_33_n_1 ;
  wire \random_y_reg[30]_i_33_n_2 ;
  wire \random_y_reg[30]_i_33_n_3 ;
  wire \random_y_reg[30]_i_33_n_4 ;
  wire \random_y_reg[30]_i_33_n_5 ;
  wire \random_y_reg[30]_i_33_n_6 ;
  wire \random_y_reg[30]_i_33_n_7 ;
  wire \random_y_reg[30]_i_45_n_3 ;
  wire \random_y_reg[30]_i_46_n_0 ;
  wire \random_y_reg[30]_i_46_n_1 ;
  wire \random_y_reg[30]_i_46_n_2 ;
  wire \random_y_reg[30]_i_46_n_3 ;
  wire \random_y_reg[30]_i_47_n_0 ;
  wire \random_y_reg[30]_i_47_n_1 ;
  wire \random_y_reg[30]_i_47_n_2 ;
  wire \random_y_reg[30]_i_47_n_3 ;
  wire \random_y_reg[30]_i_47_n_4 ;
  wire \random_y_reg[30]_i_47_n_5 ;
  wire \random_y_reg[30]_i_47_n_6 ;
  wire \random_y_reg[30]_i_47_n_7 ;
  wire \random_y_reg[30]_i_56_n_1 ;
  wire \random_y_reg[30]_i_56_n_2 ;
  wire \random_y_reg[30]_i_56_n_3 ;
  wire \random_y_reg[30]_i_56_n_4 ;
  wire \random_y_reg[30]_i_56_n_5 ;
  wire \random_y_reg[30]_i_56_n_6 ;
  wire \random_y_reg[30]_i_56_n_7 ;
  wire \random_y_reg[30]_i_57_n_0 ;
  wire \random_y_reg[30]_i_57_n_1 ;
  wire \random_y_reg[30]_i_57_n_2 ;
  wire \random_y_reg[30]_i_57_n_3 ;
  wire \random_y_reg[30]_i_57_n_4 ;
  wire \random_y_reg[30]_i_57_n_5 ;
  wire \random_y_reg[30]_i_57_n_6 ;
  wire \random_y_reg[30]_i_57_n_7 ;
  wire \random_y_reg[30]_i_58_n_7 ;
  wire \random_y_reg[30]_i_59_n_0 ;
  wire \random_y_reg[30]_i_59_n_1 ;
  wire \random_y_reg[30]_i_59_n_2 ;
  wire \random_y_reg[30]_i_59_n_3 ;
  wire \random_y_reg[30]_i_59_n_4 ;
  wire \random_y_reg[30]_i_59_n_5 ;
  wire \random_y_reg[30]_i_59_n_6 ;
  wire \random_y_reg[30]_i_59_n_7 ;
  wire \random_y_reg[30]_i_60_n_0 ;
  wire \random_y_reg[30]_i_60_n_1 ;
  wire \random_y_reg[30]_i_60_n_2 ;
  wire \random_y_reg[30]_i_60_n_3 ;
  wire \random_y_reg[30]_i_60_n_4 ;
  wire \random_y_reg[30]_i_60_n_5 ;
  wire \random_y_reg[30]_i_60_n_6 ;
  wire \random_y_reg[30]_i_60_n_7 ;
  wire \random_y_reg[30]_i_75_n_0 ;
  wire \random_y_reg[30]_i_75_n_1 ;
  wire \random_y_reg[30]_i_75_n_2 ;
  wire \random_y_reg[30]_i_75_n_3 ;
  wire \random_y_reg[30]_i_75_n_4 ;
  wire \random_y_reg[30]_i_75_n_5 ;
  wire \random_y_reg[30]_i_75_n_6 ;
  wire \random_y_reg[30]_i_75_n_7 ;
  wire \random_y_reg[30]_i_76_n_0 ;
  wire \random_y_reg[30]_i_76_n_1 ;
  wire \random_y_reg[30]_i_76_n_2 ;
  wire \random_y_reg[30]_i_76_n_3 ;
  wire \random_y_reg[30]_i_76_n_4 ;
  wire \random_y_reg[30]_i_76_n_5 ;
  wire \random_y_reg[30]_i_76_n_6 ;
  wire \random_y_reg[30]_i_76_n_7 ;
  wire \random_y_reg[30]_i_8_n_2 ;
  wire \random_y_reg[30]_i_8_n_3 ;
  wire \random_y_reg[30]_i_93_n_0 ;
  wire \random_y_reg[30]_i_93_n_1 ;
  wire \random_y_reg[30]_i_93_n_2 ;
  wire \random_y_reg[30]_i_93_n_3 ;
  wire \random_y_reg[30]_i_93_n_4 ;
  wire \random_y_reg[30]_i_93_n_5 ;
  wire \random_y_reg[30]_i_93_n_6 ;
  wire \random_y_reg[30]_i_93_n_7 ;
  wire \random_y_reg[30]_i_94_n_0 ;
  wire \random_y_reg[30]_i_94_n_1 ;
  wire \random_y_reg[30]_i_94_n_2 ;
  wire \random_y_reg[30]_i_94_n_3 ;
  wire \random_y_reg[30]_i_94_n_4 ;
  wire \random_y_reg[30]_i_94_n_5 ;
  wire \random_y_reg[30]_i_94_n_6 ;
  wire \random_y_reg[30]_i_94_n_7 ;
  wire \random_y_reg[30]_i_9_n_0 ;
  wire \random_y_reg[30]_i_9_n_2 ;
  wire \random_y_reg[30]_i_9_n_3 ;
  wire \random_y_reg[30]_i_9_n_5 ;
  wire \random_y_reg[30]_i_9_n_6 ;
  wire \random_y_reg[30]_i_9_n_7 ;
  wire \random_y_reg[3]_i_11_n_0 ;
  wire \random_y_reg[3]_i_11_n_1 ;
  wire \random_y_reg[3]_i_11_n_2 ;
  wire \random_y_reg[3]_i_11_n_3 ;
  wire \random_y_reg[3]_i_11_n_4 ;
  wire \random_y_reg[3]_i_11_n_5 ;
  wire \random_y_reg[3]_i_11_n_6 ;
  wire \random_y_reg[3]_i_11_n_7 ;
  wire \random_y_reg[3]_i_2_n_0 ;
  wire \random_y_reg[3]_i_2_n_1 ;
  wire \random_y_reg[3]_i_2_n_2 ;
  wire \random_y_reg[3]_i_2_n_3 ;
  wire \random_y_reg[3]_i_2_n_4 ;
  wire \random_y_reg[3]_i_2_n_5 ;
  wire \random_y_reg[3]_i_2_n_6 ;
  wire \random_y_reg[3]_i_2_n_7 ;
  wire \random_y_reg[3]_i_3_n_0 ;
  wire \random_y_reg[3]_i_3_n_1 ;
  wire \random_y_reg[3]_i_3_n_2 ;
  wire \random_y_reg[3]_i_3_n_3 ;
  wire \random_y_reg[3]_i_3_n_4 ;
  wire \random_y_reg[3]_i_3_n_5 ;
  wire \random_y_reg[3]_i_3_n_6 ;
  wire \random_y_reg[3]_i_3_n_7 ;
  wire \random_y_reg[7]_i_12_n_0 ;
  wire \random_y_reg[7]_i_12_n_1 ;
  wire \random_y_reg[7]_i_12_n_2 ;
  wire \random_y_reg[7]_i_12_n_3 ;
  wire \random_y_reg[7]_i_13_n_0 ;
  wire \random_y_reg[7]_i_13_n_1 ;
  wire \random_y_reg[7]_i_13_n_2 ;
  wire \random_y_reg[7]_i_13_n_3 ;
  wire \random_y_reg[7]_i_18_n_0 ;
  wire \random_y_reg[7]_i_18_n_1 ;
  wire \random_y_reg[7]_i_18_n_2 ;
  wire \random_y_reg[7]_i_18_n_3 ;
  wire \random_y_reg[7]_i_18_n_4 ;
  wire \random_y_reg[7]_i_18_n_5 ;
  wire \random_y_reg[7]_i_18_n_6 ;
  wire \random_y_reg[7]_i_18_n_7 ;
  wire \random_y_reg[7]_i_2_n_0 ;
  wire \random_y_reg[7]_i_2_n_1 ;
  wire \random_y_reg[7]_i_2_n_2 ;
  wire \random_y_reg[7]_i_2_n_3 ;
  wire \random_y_reg[7]_i_2_n_4 ;
  wire \random_y_reg[7]_i_2_n_5 ;
  wire \random_y_reg[7]_i_2_n_6 ;
  wire \random_y_reg[7]_i_2_n_7 ;
  wire \random_y_reg[7]_i_3_n_0 ;
  wire \random_y_reg[7]_i_3_n_1 ;
  wire \random_y_reg[7]_i_3_n_2 ;
  wire \random_y_reg[7]_i_3_n_3 ;
  wire \random_y_reg[7]_i_3_n_4 ;
  wire \random_y_reg[7]_i_3_n_5 ;
  wire \random_y_reg[7]_i_3_n_6 ;
  wire \random_y_reg[7]_i_3_n_7 ;
  wire \random_y_reg_n_0_[0] ;
  wire \random_y_reg_n_0_[10] ;
  wire \random_y_reg_n_0_[11] ;
  wire \random_y_reg_n_0_[12] ;
  wire \random_y_reg_n_0_[13] ;
  wire \random_y_reg_n_0_[14] ;
  wire \random_y_reg_n_0_[15] ;
  wire \random_y_reg_n_0_[16] ;
  wire \random_y_reg_n_0_[17] ;
  wire \random_y_reg_n_0_[18] ;
  wire \random_y_reg_n_0_[19] ;
  wire \random_y_reg_n_0_[1] ;
  wire \random_y_reg_n_0_[20] ;
  wire \random_y_reg_n_0_[21] ;
  wire \random_y_reg_n_0_[22] ;
  wire \random_y_reg_n_0_[23] ;
  wire \random_y_reg_n_0_[24] ;
  wire \random_y_reg_n_0_[25] ;
  wire \random_y_reg_n_0_[26] ;
  wire \random_y_reg_n_0_[27] ;
  wire \random_y_reg_n_0_[28] ;
  wire \random_y_reg_n_0_[29] ;
  wire \random_y_reg_n_0_[2] ;
  wire \random_y_reg_n_0_[30] ;
  wire \random_y_reg_n_0_[3] ;
  wire \random_y_reg_n_0_[4] ;
  wire \random_y_reg_n_0_[5] ;
  wire \random_y_reg_n_0_[6] ;
  wire \random_y_reg_n_0_[7] ;
  wire \random_y_reg_n_0_[8] ;
  wire \random_y_reg_n_0_[9] ;
  wire sel;
  wire [3:0]sw;
  wire [3:0]sw_IBUF;
  wire \v_cntr_reg[0]_i_3_n_0 ;
  wire \v_cntr_reg[0]_i_4_n_0 ;
  wire \v_cntr_reg[0]_i_5_n_0 ;
  wire \v_cntr_reg[0]_i_6_n_0 ;
  wire [0:0]v_cntr_reg_reg;
  wire \v_cntr_reg_reg[0]_i_2_n_0 ;
  wire \v_cntr_reg_reg[0]_i_2_n_1 ;
  wire \v_cntr_reg_reg[0]_i_2_n_2 ;
  wire \v_cntr_reg_reg[0]_i_2_n_3 ;
  wire \v_cntr_reg_reg[0]_i_2_n_4 ;
  wire \v_cntr_reg_reg[0]_i_2_n_5 ;
  wire \v_cntr_reg_reg[0]_i_2_n_6 ;
  wire \v_cntr_reg_reg[0]_i_2_n_7 ;
  wire \v_cntr_reg_reg[4]_i_1_n_0 ;
  wire \v_cntr_reg_reg[4]_i_1_n_1 ;
  wire \v_cntr_reg_reg[4]_i_1_n_2 ;
  wire \v_cntr_reg_reg[4]_i_1_n_3 ;
  wire \v_cntr_reg_reg[4]_i_1_n_4 ;
  wire \v_cntr_reg_reg[4]_i_1_n_5 ;
  wire \v_cntr_reg_reg[4]_i_1_n_6 ;
  wire \v_cntr_reg_reg[4]_i_1_n_7 ;
  wire \v_cntr_reg_reg[8]_i_1_n_1 ;
  wire \v_cntr_reg_reg[8]_i_1_n_2 ;
  wire \v_cntr_reg_reg[8]_i_1_n_3 ;
  wire \v_cntr_reg_reg[8]_i_1_n_4 ;
  wire \v_cntr_reg_reg[8]_i_1_n_5 ;
  wire \v_cntr_reg_reg[8]_i_1_n_6 ;
  wire \v_cntr_reg_reg[8]_i_1_n_7 ;
  wire [11:2]v_cntr_reg_reg__0;
  wire \v_cntr_reg_reg_n_0_[1] ;
  wire v_sync_reg;
  wire v_sync_reg0;
  wire v_sync_reg_i_10_n_0;
  wire v_sync_reg_i_11_n_0;
  wire v_sync_reg_i_12_n_0;
  wire v_sync_reg_i_13_n_0;
  wire v_sync_reg_i_14_n_0;
  wire v_sync_reg_i_15_n_0;
  wire v_sync_reg_i_16_n_0;
  wire v_sync_reg_i_17_n_0;
  wire v_sync_reg_i_18_n_0;
  wire v_sync_reg_i_5_n_0;
  wire v_sync_reg_i_6_n_0;
  wire v_sync_reg_i_7_n_0;
  wire v_sync_reg_i_8_n_0;
  wire v_sync_reg_i_9_n_0;
  wire v_sync_reg_reg_i_3_n_2;
  wire v_sync_reg_reg_i_3_n_3;
  wire v_sync_reg_reg_i_4_n_0;
  wire v_sync_reg_reg_i_4_n_1;
  wire v_sync_reg_reg_i_4_n_2;
  wire v_sync_reg_reg_i_4_n_3;
  wire vga_blue;
  wire [3:3]vga_blue0_in;
  wire vga_blue1;
  wire vga_blue11_out;
  wire \vga_blue_reg[3]_i_104_n_0 ;
  wire \vga_blue_reg[3]_i_105_n_0 ;
  wire \vga_blue_reg[3]_i_106_n_0 ;
  wire \vga_blue_reg[3]_i_107_n_0 ;
  wire \vga_blue_reg[3]_i_108_n_0 ;
  wire \vga_blue_reg[3]_i_109_n_0 ;
  wire \vga_blue_reg[3]_i_10_n_0 ;
  wire \vga_blue_reg[3]_i_110_n_0 ;
  wire \vga_blue_reg[3]_i_111_n_0 ;
  wire \vga_blue_reg[3]_i_112_n_0 ;
  wire \vga_blue_reg[3]_i_113_n_0 ;
  wire \vga_blue_reg[3]_i_114_n_0 ;
  wire \vga_blue_reg[3]_i_115_n_0 ;
  wire \vga_blue_reg[3]_i_116_n_0 ;
  wire \vga_blue_reg[3]_i_117_n_0 ;
  wire \vga_blue_reg[3]_i_118_n_0 ;
  wire \vga_blue_reg[3]_i_119_n_0 ;
  wire \vga_blue_reg[3]_i_11_n_0 ;
  wire \vga_blue_reg[3]_i_120_n_0 ;
  wire \vga_blue_reg[3]_i_121_n_0 ;
  wire \vga_blue_reg[3]_i_122_n_0 ;
  wire \vga_blue_reg[3]_i_123_n_0 ;
  wire \vga_blue_reg[3]_i_124_n_0 ;
  wire \vga_blue_reg[3]_i_125_n_0 ;
  wire \vga_blue_reg[3]_i_126_n_0 ;
  wire \vga_blue_reg[3]_i_127_n_0 ;
  wire \vga_blue_reg[3]_i_128_n_0 ;
  wire \vga_blue_reg[3]_i_12_n_0 ;
  wire \vga_blue_reg[3]_i_14_n_0 ;
  wire \vga_blue_reg[3]_i_15_n_0 ;
  wire \vga_blue_reg[3]_i_16_n_0 ;
  wire \vga_blue_reg[3]_i_17_n_0 ;
  wire \vga_blue_reg[3]_i_22_n_0 ;
  wire \vga_blue_reg[3]_i_24_n_0 ;
  wire \vga_blue_reg[3]_i_25_n_0 ;
  wire \vga_blue_reg[3]_i_26_n_0 ;
  wire \vga_blue_reg[3]_i_27_n_0 ;
  wire \vga_blue_reg[3]_i_29_n_0 ;
  wire \vga_blue_reg[3]_i_30_n_0 ;
  wire \vga_blue_reg[3]_i_31_n_0 ;
  wire \vga_blue_reg[3]_i_32_n_0 ;
  wire \vga_blue_reg[3]_i_34_n_0 ;
  wire \vga_blue_reg[3]_i_36_n_0 ;
  wire \vga_blue_reg[3]_i_38_n_0 ;
  wire \vga_blue_reg[3]_i_39_n_0 ;
  wire \vga_blue_reg[3]_i_3_n_0 ;
  wire \vga_blue_reg[3]_i_40_n_0 ;
  wire \vga_blue_reg[3]_i_42_n_0 ;
  wire \vga_blue_reg[3]_i_43_n_0 ;
  wire \vga_blue_reg[3]_i_48_n_0 ;
  wire \vga_blue_reg[3]_i_49_n_0 ;
  wire \vga_blue_reg[3]_i_50_n_0 ;
  wire \vga_blue_reg[3]_i_51_n_0 ;
  wire \vga_blue_reg[3]_i_52_n_0 ;
  wire \vga_blue_reg[3]_i_56_n_0 ;
  wire \vga_blue_reg[3]_i_57_n_0 ;
  wire \vga_blue_reg[3]_i_58_n_0 ;
  wire \vga_blue_reg[3]_i_59_n_0 ;
  wire \vga_blue_reg[3]_i_60_n_0 ;
  wire \vga_blue_reg[3]_i_61_n_0 ;
  wire \vga_blue_reg[3]_i_62_n_0 ;
  wire \vga_blue_reg[3]_i_63_n_0 ;
  wire \vga_blue_reg[3]_i_64_n_0 ;
  wire \vga_blue_reg[3]_i_65_n_0 ;
  wire \vga_blue_reg[3]_i_66_n_0 ;
  wire \vga_blue_reg[3]_i_67_n_0 ;
  wire \vga_blue_reg[3]_i_68_n_0 ;
  wire \vga_blue_reg[3]_i_69_n_0 ;
  wire \vga_blue_reg[3]_i_6_n_0 ;
  wire \vga_blue_reg[3]_i_70_n_0 ;
  wire \vga_blue_reg[3]_i_71_n_0 ;
  wire \vga_blue_reg[3]_i_72_n_0 ;
  wire \vga_blue_reg[3]_i_73_n_0 ;
  wire \vga_blue_reg[3]_i_74_n_0 ;
  wire \vga_blue_reg[3]_i_75_n_0 ;
  wire \vga_blue_reg[3]_i_76_n_0 ;
  wire \vga_blue_reg[3]_i_77_n_0 ;
  wire \vga_blue_reg[3]_i_78_n_0 ;
  wire \vga_blue_reg[3]_i_79_n_0 ;
  wire \vga_blue_reg[3]_i_7_n_0 ;
  wire \vga_blue_reg[3]_i_80_n_0 ;
  wire \vga_blue_reg[3]_i_81_n_0 ;
  wire \vga_blue_reg[3]_i_82_n_0 ;
  wire \vga_blue_reg[3]_i_84_n_0 ;
  wire \vga_blue_reg[3]_i_85_n_0 ;
  wire \vga_blue_reg[3]_i_87_n_0 ;
  wire \vga_blue_reg[3]_i_88_n_0 ;
  wire \vga_blue_reg[3]_i_89_n_0 ;
  wire \vga_blue_reg[3]_i_8_n_0 ;
  wire \vga_blue_reg[3]_i_91_n_0 ;
  wire \vga_blue_reg[3]_i_92_n_0 ;
  wire \vga_blue_reg[3]_i_94_n_0 ;
  wire \vga_blue_reg[3]_i_95_n_0 ;
  wire \vga_blue_reg[3]_i_96_n_0 ;
  wire \vga_blue_reg[3]_i_97_n_0 ;
  wire \vga_blue_reg[3]_i_98_n_0 ;
  wire \vga_blue_reg[3]_i_99_n_0 ;
  wire \vga_blue_reg_reg[3]_i_20_n_3 ;
  wire \vga_blue_reg_reg[3]_i_23_n_0 ;
  wire \vga_blue_reg_reg[3]_i_23_n_1 ;
  wire \vga_blue_reg_reg[3]_i_23_n_2 ;
  wire \vga_blue_reg_reg[3]_i_23_n_3 ;
  wire \vga_blue_reg_reg[3]_i_33_n_0 ;
  wire \vga_blue_reg_reg[3]_i_33_n_1 ;
  wire \vga_blue_reg_reg[3]_i_33_n_2 ;
  wire \vga_blue_reg_reg[3]_i_33_n_3 ;
  wire \vga_blue_reg_reg[3]_i_35_n_0 ;
  wire \vga_blue_reg_reg[3]_i_35_n_1 ;
  wire \vga_blue_reg_reg[3]_i_35_n_2 ;
  wire \vga_blue_reg_reg[3]_i_35_n_3 ;
  wire \vga_blue_reg_reg[3]_i_37_n_0 ;
  wire \vga_blue_reg_reg[3]_i_37_n_1 ;
  wire \vga_blue_reg_reg[3]_i_37_n_2 ;
  wire \vga_blue_reg_reg[3]_i_37_n_3 ;
  wire \vga_blue_reg_reg[3]_i_41_n_0 ;
  wire \vga_blue_reg_reg[3]_i_41_n_1 ;
  wire \vga_blue_reg_reg[3]_i_41_n_2 ;
  wire \vga_blue_reg_reg[3]_i_41_n_3 ;
  wire \vga_blue_reg_reg[3]_i_45_n_3 ;
  wire \vga_blue_reg_reg[3]_i_47_n_3 ;
  wire \vga_blue_reg_reg[3]_i_4_n_2 ;
  wire \vga_blue_reg_reg[3]_i_4_n_3 ;
  wire \vga_blue_reg_reg[3]_i_83_n_0 ;
  wire \vga_blue_reg_reg[3]_i_83_n_1 ;
  wire \vga_blue_reg_reg[3]_i_83_n_2 ;
  wire \vga_blue_reg_reg[3]_i_83_n_3 ;
  wire \vga_blue_reg_reg[3]_i_86_n_0 ;
  wire \vga_blue_reg_reg[3]_i_86_n_1 ;
  wire \vga_blue_reg_reg[3]_i_86_n_2 ;
  wire \vga_blue_reg_reg[3]_i_86_n_3 ;
  wire \vga_blue_reg_reg[3]_i_90_n_0 ;
  wire \vga_blue_reg_reg[3]_i_90_n_1 ;
  wire \vga_blue_reg_reg[3]_i_90_n_2 ;
  wire \vga_blue_reg_reg[3]_i_90_n_3 ;
  wire \vga_blue_reg_reg[3]_i_93_n_0 ;
  wire \vga_blue_reg_reg[3]_i_93_n_1 ;
  wire \vga_blue_reg_reg[3]_i_93_n_2 ;
  wire \vga_blue_reg_reg[3]_i_93_n_3 ;
  wire \vga_blue_reg_reg[3]_i_9_n_0 ;
  wire \vga_blue_reg_reg[3]_i_9_n_1 ;
  wire \vga_blue_reg_reg[3]_i_9_n_2 ;
  wire \vga_blue_reg_reg[3]_i_9_n_3 ;
  wire vga_green;
  wire [3:3]vga_green0_in;
  wire vga_green1;
  wire vga_green12_out;
  wire \vga_green_reg[3]_i_100_n_0 ;
  wire \vga_green_reg[3]_i_101_n_0 ;
  wire \vga_green_reg[3]_i_102_n_0 ;
  wire \vga_green_reg[3]_i_103_n_0 ;
  wire \vga_green_reg[3]_i_104_n_0 ;
  wire \vga_green_reg[3]_i_105_n_0 ;
  wire \vga_green_reg[3]_i_106_n_0 ;
  wire \vga_green_reg[3]_i_107_n_0 ;
  wire \vga_green_reg[3]_i_108_n_0 ;
  wire \vga_green_reg[3]_i_109_n_0 ;
  wire \vga_green_reg[3]_i_10_n_0 ;
  wire \vga_green_reg[3]_i_110_n_0 ;
  wire \vga_green_reg[3]_i_111_n_0 ;
  wire \vga_green_reg[3]_i_112_n_0 ;
  wire \vga_green_reg[3]_i_113_n_0 ;
  wire \vga_green_reg[3]_i_114_n_0 ;
  wire \vga_green_reg[3]_i_14_n_0 ;
  wire \vga_green_reg[3]_i_17_n_0 ;
  wire \vga_green_reg[3]_i_20_n_0 ;
  wire \vga_green_reg[3]_i_21_n_0 ;
  wire \vga_green_reg[3]_i_22_n_0 ;
  wire \vga_green_reg[3]_i_23_n_0 ;
  wire \vga_green_reg[3]_i_24_n_0 ;
  wire \vga_green_reg[3]_i_26_n_0 ;
  wire \vga_green_reg[3]_i_27_n_0 ;
  wire \vga_green_reg[3]_i_30_n_0 ;
  wire \vga_green_reg[3]_i_31_n_0 ;
  wire \vga_green_reg[3]_i_32_n_0 ;
  wire \vga_green_reg[3]_i_33_n_0 ;
  wire \vga_green_reg[3]_i_36_n_0 ;
  wire \vga_green_reg[3]_i_37_n_0 ;
  wire \vga_green_reg[3]_i_38_n_0 ;
  wire \vga_green_reg[3]_i_40_n_0 ;
  wire \vga_green_reg[3]_i_41_n_0 ;
  wire \vga_green_reg[3]_i_42_n_0 ;
  wire \vga_green_reg[3]_i_43_n_0 ;
  wire \vga_green_reg[3]_i_49_n_0 ;
  wire \vga_green_reg[3]_i_50_n_0 ;
  wire \vga_green_reg[3]_i_51_n_0 ;
  wire \vga_green_reg[3]_i_52_n_0 ;
  wire \vga_green_reg[3]_i_54_n_0 ;
  wire \vga_green_reg[3]_i_55_n_0 ;
  wire \vga_green_reg[3]_i_56_n_0 ;
  wire \vga_green_reg[3]_i_58_n_0 ;
  wire \vga_green_reg[3]_i_59_n_0 ;
  wire \vga_green_reg[3]_i_60_n_0 ;
  wire \vga_green_reg[3]_i_61_n_0 ;
  wire \vga_green_reg[3]_i_62_n_0 ;
  wire \vga_green_reg[3]_i_63_n_0 ;
  wire \vga_green_reg[3]_i_64_n_0 ;
  wire \vga_green_reg[3]_i_71_n_0 ;
  wire \vga_green_reg[3]_i_72_n_0 ;
  wire \vga_green_reg[3]_i_73_n_0 ;
  wire \vga_green_reg[3]_i_74_n_0 ;
  wire \vga_green_reg[3]_i_75_n_0 ;
  wire \vga_green_reg[3]_i_76_n_0 ;
  wire \vga_green_reg[3]_i_77_n_0 ;
  wire \vga_green_reg[3]_i_78_n_0 ;
  wire \vga_green_reg[3]_i_80_n_0 ;
  wire \vga_green_reg[3]_i_81_n_0 ;
  wire \vga_green_reg[3]_i_82_n_0 ;
  wire \vga_green_reg[3]_i_83_n_0 ;
  wire \vga_green_reg[3]_i_85_n_0 ;
  wire \vga_green_reg[3]_i_86_n_0 ;
  wire \vga_green_reg[3]_i_87_n_0 ;
  wire \vga_green_reg[3]_i_88_n_0 ;
  wire \vga_green_reg[3]_i_89_n_0 ;
  wire \vga_green_reg[3]_i_8_n_0 ;
  wire \vga_green_reg[3]_i_90_n_0 ;
  wire \vga_green_reg[3]_i_91_n_0 ;
  wire \vga_green_reg[3]_i_92_n_0 ;
  wire \vga_green_reg[3]_i_96_n_0 ;
  wire \vga_green_reg[3]_i_97_n_0 ;
  wire \vga_green_reg[3]_i_98_n_0 ;
  wire \vga_green_reg[3]_i_99_n_0 ;
  wire \vga_green_reg[3]_i_9_n_0 ;
  wire \vga_green_reg_reg[3]_i_18_n_2 ;
  wire \vga_green_reg_reg[3]_i_18_n_7 ;
  wire \vga_green_reg_reg[3]_i_19_n_0 ;
  wire \vga_green_reg_reg[3]_i_19_n_1 ;
  wire \vga_green_reg_reg[3]_i_19_n_2 ;
  wire \vga_green_reg_reg[3]_i_19_n_3 ;
  wire \vga_green_reg_reg[3]_i_19_n_4 ;
  wire \vga_green_reg_reg[3]_i_19_n_5 ;
  wire \vga_green_reg_reg[3]_i_19_n_6 ;
  wire \vga_green_reg_reg[3]_i_19_n_7 ;
  wire \vga_green_reg_reg[3]_i_25_n_0 ;
  wire \vga_green_reg_reg[3]_i_25_n_1 ;
  wire \vga_green_reg_reg[3]_i_25_n_2 ;
  wire \vga_green_reg_reg[3]_i_25_n_3 ;
  wire \vga_green_reg_reg[3]_i_25_n_4 ;
  wire \vga_green_reg_reg[3]_i_25_n_5 ;
  wire \vga_green_reg_reg[3]_i_29_n_2 ;
  wire \vga_green_reg_reg[3]_i_29_n_3 ;
  wire \vga_green_reg_reg[3]_i_34_n_2 ;
  wire \vga_green_reg_reg[3]_i_34_n_3 ;
  wire \vga_green_reg_reg[3]_i_34_n_5 ;
  wire \vga_green_reg_reg[3]_i_34_n_6 ;
  wire \vga_green_reg_reg[3]_i_34_n_7 ;
  wire \vga_green_reg_reg[3]_i_35_n_2 ;
  wire \vga_green_reg_reg[3]_i_35_n_3 ;
  wire \vga_green_reg_reg[3]_i_39_n_0 ;
  wire \vga_green_reg_reg[3]_i_39_n_1 ;
  wire \vga_green_reg_reg[3]_i_39_n_2 ;
  wire \vga_green_reg_reg[3]_i_39_n_3 ;
  wire \vga_green_reg_reg[3]_i_48_n_0 ;
  wire \vga_green_reg_reg[3]_i_48_n_1 ;
  wire \vga_green_reg_reg[3]_i_48_n_2 ;
  wire \vga_green_reg_reg[3]_i_48_n_3 ;
  wire \vga_green_reg_reg[3]_i_4_n_2 ;
  wire \vga_green_reg_reg[3]_i_4_n_3 ;
  wire \vga_green_reg_reg[3]_i_53_n_0 ;
  wire \vga_green_reg_reg[3]_i_53_n_1 ;
  wire \vga_green_reg_reg[3]_i_53_n_2 ;
  wire \vga_green_reg_reg[3]_i_53_n_3 ;
  wire \vga_green_reg_reg[3]_i_53_n_4 ;
  wire \vga_green_reg_reg[3]_i_53_n_5 ;
  wire \vga_green_reg_reg[3]_i_53_n_6 ;
  wire \vga_green_reg_reg[3]_i_53_n_7 ;
  wire \vga_green_reg_reg[3]_i_57_n_0 ;
  wire \vga_green_reg_reg[3]_i_57_n_1 ;
  wire \vga_green_reg_reg[3]_i_57_n_2 ;
  wire \vga_green_reg_reg[3]_i_57_n_3 ;
  wire \vga_green_reg_reg[3]_i_70_n_0 ;
  wire \vga_green_reg_reg[3]_i_70_n_1 ;
  wire \vga_green_reg_reg[3]_i_70_n_2 ;
  wire \vga_green_reg_reg[3]_i_70_n_3 ;
  wire \vga_green_reg_reg[3]_i_79_n_0 ;
  wire \vga_green_reg_reg[3]_i_79_n_1 ;
  wire \vga_green_reg_reg[3]_i_79_n_2 ;
  wire \vga_green_reg_reg[3]_i_79_n_3 ;
  wire \vga_green_reg_reg[3]_i_79_n_4 ;
  wire \vga_green_reg_reg[3]_i_79_n_5 ;
  wire \vga_green_reg_reg[3]_i_79_n_6 ;
  wire \vga_green_reg_reg[3]_i_79_n_7 ;
  wire \vga_green_reg_reg[3]_i_84_n_0 ;
  wire \vga_green_reg_reg[3]_i_84_n_1 ;
  wire \vga_green_reg_reg[3]_i_84_n_2 ;
  wire \vga_green_reg_reg[3]_i_84_n_3 ;
  wire vga_red;
  wire vga_red_reg0;
  wire \vga_red_reg[3]_i_100_n_0 ;
  wire \vga_red_reg[3]_i_101_n_0 ;
  wire \vga_red_reg[3]_i_102_n_0 ;
  wire \vga_red_reg[3]_i_103_n_0 ;
  wire \vga_red_reg[3]_i_104_n_0 ;
  wire \vga_red_reg[3]_i_105_n_0 ;
  wire \vga_red_reg[3]_i_106_n_0 ;
  wire \vga_red_reg[3]_i_107_n_0 ;
  wire \vga_red_reg[3]_i_108_n_0 ;
  wire \vga_red_reg[3]_i_109_n_0 ;
  wire \vga_red_reg[3]_i_10_n_0 ;
  wire \vga_red_reg[3]_i_110_n_0 ;
  wire \vga_red_reg[3]_i_113_n_0 ;
  wire \vga_red_reg[3]_i_114_n_0 ;
  wire \vga_red_reg[3]_i_115_n_0 ;
  wire \vga_red_reg[3]_i_116_n_0 ;
  wire \vga_red_reg[3]_i_117_n_0 ;
  wire \vga_red_reg[3]_i_118_n_0 ;
  wire \vga_red_reg[3]_i_119_n_0 ;
  wire \vga_red_reg[3]_i_11_n_0 ;
  wire \vga_red_reg[3]_i_120_n_0 ;
  wire \vga_red_reg[3]_i_121_n_0 ;
  wire \vga_red_reg[3]_i_122_n_0 ;
  wire \vga_red_reg[3]_i_123_n_0 ;
  wire \vga_red_reg[3]_i_124_n_0 ;
  wire \vga_red_reg[3]_i_125_n_0 ;
  wire \vga_red_reg[3]_i_126_n_0 ;
  wire \vga_red_reg[3]_i_127_n_0 ;
  wire \vga_red_reg[3]_i_128_n_0 ;
  wire \vga_red_reg[3]_i_129_n_0 ;
  wire \vga_red_reg[3]_i_12_n_0 ;
  wire \vga_red_reg[3]_i_130_n_0 ;
  wire \vga_red_reg[3]_i_131_n_0 ;
  wire \vga_red_reg[3]_i_132_n_0 ;
  wire \vga_red_reg[3]_i_133_n_0 ;
  wire \vga_red_reg[3]_i_134_n_0 ;
  wire \vga_red_reg[3]_i_135_n_0 ;
  wire \vga_red_reg[3]_i_136_n_0 ;
  wire \vga_red_reg[3]_i_137_n_0 ;
  wire \vga_red_reg[3]_i_138_n_0 ;
  wire \vga_red_reg[3]_i_139_n_0 ;
  wire \vga_red_reg[3]_i_13_n_0 ;
  wire \vga_red_reg[3]_i_146_n_0 ;
  wire \vga_red_reg[3]_i_147_n_0 ;
  wire \vga_red_reg[3]_i_148_n_0 ;
  wire \vga_red_reg[3]_i_149_n_0 ;
  wire \vga_red_reg[3]_i_14_n_0 ;
  wire \vga_red_reg[3]_i_153_n_0 ;
  wire \vga_red_reg[3]_i_154_n_0 ;
  wire \vga_red_reg[3]_i_155_n_0 ;
  wire \vga_red_reg[3]_i_156_n_0 ;
  wire \vga_red_reg[3]_i_157_n_0 ;
  wire \vga_red_reg[3]_i_158_n_0 ;
  wire \vga_red_reg[3]_i_159_n_0 ;
  wire \vga_red_reg[3]_i_15_n_0 ;
  wire \vga_red_reg[3]_i_160_n_0 ;
  wire \vga_red_reg[3]_i_16_n_0 ;
  wire \vga_red_reg[3]_i_17_n_0 ;
  wire \vga_red_reg[3]_i_18_n_0 ;
  wire \vga_red_reg[3]_i_23_n_0 ;
  wire \vga_red_reg[3]_i_24_n_0 ;
  wire \vga_red_reg[3]_i_25_n_0 ;
  wire \vga_red_reg[3]_i_26_n_0 ;
  wire \vga_red_reg[3]_i_27_n_0 ;
  wire \vga_red_reg[3]_i_28_n_0 ;
  wire \vga_red_reg[3]_i_29_n_0 ;
  wire \vga_red_reg[3]_i_2_n_0 ;
  wire \vga_red_reg[3]_i_30_n_0 ;
  wire \vga_red_reg[3]_i_31_n_0 ;
  wire \vga_red_reg[3]_i_32_n_0 ;
  wire \vga_red_reg[3]_i_33_n_0 ;
  wire \vga_red_reg[3]_i_41_n_0 ;
  wire \vga_red_reg[3]_i_42_n_0 ;
  wire \vga_red_reg[3]_i_44_n_0 ;
  wire \vga_red_reg[3]_i_45_n_0 ;
  wire \vga_red_reg[3]_i_46_n_0 ;
  wire \vga_red_reg[3]_i_48_n_0 ;
  wire \vga_red_reg[3]_i_49_n_0 ;
  wire \vga_red_reg[3]_i_51_n_0 ;
  wire \vga_red_reg[3]_i_52_n_0 ;
  wire \vga_red_reg[3]_i_53_n_0 ;
  wire \vga_red_reg[3]_i_54_n_0 ;
  wire \vga_red_reg[3]_i_55_n_0 ;
  wire \vga_red_reg[3]_i_58_n_0 ;
  wire \vga_red_reg[3]_i_59_n_0 ;
  wire \vga_red_reg[3]_i_60_n_0 ;
  wire \vga_red_reg[3]_i_61_n_0 ;
  wire \vga_red_reg[3]_i_62_n_0 ;
  wire \vga_red_reg[3]_i_63_n_0 ;
  wire \vga_red_reg[3]_i_65_n_0 ;
  wire \vga_red_reg[3]_i_66_n_0 ;
  wire \vga_red_reg[3]_i_68_n_0 ;
  wire \vga_red_reg[3]_i_69_n_0 ;
  wire \vga_red_reg[3]_i_6_n_0 ;
  wire \vga_red_reg[3]_i_70_n_0 ;
  wire \vga_red_reg[3]_i_72_n_0 ;
  wire \vga_red_reg[3]_i_73_n_0 ;
  wire \vga_red_reg[3]_i_75_n_0 ;
  wire \vga_red_reg[3]_i_76_n_0 ;
  wire \vga_red_reg[3]_i_77_n_0 ;
  wire \vga_red_reg[3]_i_78_n_0 ;
  wire \vga_red_reg[3]_i_79_n_0 ;
  wire \vga_red_reg[3]_i_80_n_0 ;
  wire \vga_red_reg[3]_i_81_n_0 ;
  wire \vga_red_reg[3]_i_82_n_0 ;
  wire \vga_red_reg[3]_i_83_n_0 ;
  wire \vga_red_reg[3]_i_84_n_0 ;
  wire \vga_red_reg[3]_i_85_n_0 ;
  wire \vga_red_reg[3]_i_86_n_0 ;
  wire \vga_red_reg[3]_i_87_n_0 ;
  wire \vga_red_reg[3]_i_88_n_0 ;
  wire \vga_red_reg[3]_i_89_n_0 ;
  wire \vga_red_reg[3]_i_90_n_0 ;
  wire \vga_red_reg[3]_i_91_n_0 ;
  wire \vga_red_reg[3]_i_92_n_0 ;
  wire \vga_red_reg[3]_i_93_n_0 ;
  wire \vga_red_reg[3]_i_94_n_0 ;
  wire \vga_red_reg[3]_i_95_n_0 ;
  wire \vga_red_reg[3]_i_96_n_0 ;
  wire \vga_red_reg[3]_i_97_n_0 ;
  wire \vga_red_reg[3]_i_98_n_0 ;
  wire \vga_red_reg[3]_i_99_n_0 ;
  wire \vga_red_reg[3]_i_9_n_0 ;
  wire \vga_red_reg_reg[3]_i_140_n_7 ;
  wire \vga_red_reg_reg[3]_i_141_n_0 ;
  wire \vga_red_reg_reg[3]_i_141_n_1 ;
  wire \vga_red_reg_reg[3]_i_141_n_2 ;
  wire \vga_red_reg_reg[3]_i_141_n_3 ;
  wire \vga_red_reg_reg[3]_i_141_n_4 ;
  wire \vga_red_reg_reg[3]_i_141_n_5 ;
  wire \vga_red_reg_reg[3]_i_141_n_6 ;
  wire \vga_red_reg_reg[3]_i_141_n_7 ;
  wire \vga_red_reg_reg[3]_i_150_n_0 ;
  wire \vga_red_reg_reg[3]_i_150_n_1 ;
  wire \vga_red_reg_reg[3]_i_150_n_2 ;
  wire \vga_red_reg_reg[3]_i_150_n_3 ;
  wire \vga_red_reg_reg[3]_i_150_n_4 ;
  wire \vga_red_reg_reg[3]_i_150_n_5 ;
  wire \vga_red_reg_reg[3]_i_151_n_2 ;
  wire \vga_red_reg_reg[3]_i_151_n_3 ;
  wire \vga_red_reg_reg[3]_i_151_n_5 ;
  wire \vga_red_reg_reg[3]_i_151_n_6 ;
  wire \vga_red_reg_reg[3]_i_151_n_7 ;
  wire \vga_red_reg_reg[3]_i_152_n_0 ;
  wire \vga_red_reg_reg[3]_i_152_n_1 ;
  wire \vga_red_reg_reg[3]_i_152_n_2 ;
  wire \vga_red_reg_reg[3]_i_152_n_3 ;
  wire \vga_red_reg_reg[3]_i_20_n_3 ;
  wire \vga_red_reg_reg[3]_i_21_n_3 ;
  wire \vga_red_reg_reg[3]_i_22_n_3 ;
  wire \vga_red_reg_reg[3]_i_34_n_3 ;
  wire \vga_red_reg_reg[3]_i_34_n_6 ;
  wire \vga_red_reg_reg[3]_i_34_n_7 ;
  wire \vga_red_reg_reg[3]_i_35_n_0 ;
  wire \vga_red_reg_reg[3]_i_35_n_1 ;
  wire \vga_red_reg_reg[3]_i_35_n_2 ;
  wire \vga_red_reg_reg[3]_i_35_n_3 ;
  wire \vga_red_reg_reg[3]_i_35_n_4 ;
  wire \vga_red_reg_reg[3]_i_35_n_5 ;
  wire \vga_red_reg_reg[3]_i_35_n_6 ;
  wire \vga_red_reg_reg[3]_i_37_n_3 ;
  wire \vga_red_reg_reg[3]_i_38_n_3 ;
  wire \vga_red_reg_reg[3]_i_39_n_3 ;
  wire \vga_red_reg_reg[3]_i_40_n_0 ;
  wire \vga_red_reg_reg[3]_i_40_n_1 ;
  wire \vga_red_reg_reg[3]_i_40_n_2 ;
  wire \vga_red_reg_reg[3]_i_40_n_3 ;
  wire \vga_red_reg_reg[3]_i_43_n_0 ;
  wire \vga_red_reg_reg[3]_i_43_n_1 ;
  wire \vga_red_reg_reg[3]_i_43_n_2 ;
  wire \vga_red_reg_reg[3]_i_43_n_3 ;
  wire \vga_red_reg_reg[3]_i_47_n_0 ;
  wire \vga_red_reg_reg[3]_i_47_n_1 ;
  wire \vga_red_reg_reg[3]_i_47_n_2 ;
  wire \vga_red_reg_reg[3]_i_47_n_3 ;
  wire \vga_red_reg_reg[3]_i_4_n_2 ;
  wire \vga_red_reg_reg[3]_i_4_n_3 ;
  wire \vga_red_reg_reg[3]_i_50_n_0 ;
  wire \vga_red_reg_reg[3]_i_50_n_1 ;
  wire \vga_red_reg_reg[3]_i_50_n_2 ;
  wire \vga_red_reg_reg[3]_i_50_n_3 ;
  wire \vga_red_reg_reg[3]_i_56_n_3 ;
  wire \vga_red_reg_reg[3]_i_56_n_6 ;
  wire \vga_red_reg_reg[3]_i_56_n_7 ;
  wire \vga_red_reg_reg[3]_i_57_n_0 ;
  wire \vga_red_reg_reg[3]_i_57_n_1 ;
  wire \vga_red_reg_reg[3]_i_57_n_2 ;
  wire \vga_red_reg_reg[3]_i_57_n_3 ;
  wire \vga_red_reg_reg[3]_i_57_n_4 ;
  wire \vga_red_reg_reg[3]_i_57_n_5 ;
  wire \vga_red_reg_reg[3]_i_57_n_6 ;
  wire \vga_red_reg_reg[3]_i_64_n_0 ;
  wire \vga_red_reg_reg[3]_i_64_n_1 ;
  wire \vga_red_reg_reg[3]_i_64_n_2 ;
  wire \vga_red_reg_reg[3]_i_64_n_3 ;
  wire \vga_red_reg_reg[3]_i_67_n_0 ;
  wire \vga_red_reg_reg[3]_i_67_n_1 ;
  wire \vga_red_reg_reg[3]_i_67_n_2 ;
  wire \vga_red_reg_reg[3]_i_67_n_3 ;
  wire \vga_red_reg_reg[3]_i_71_n_0 ;
  wire \vga_red_reg_reg[3]_i_71_n_1 ;
  wire \vga_red_reg_reg[3]_i_71_n_2 ;
  wire \vga_red_reg_reg[3]_i_71_n_3 ;
  wire \vga_red_reg_reg[3]_i_74_n_0 ;
  wire \vga_red_reg_reg[3]_i_74_n_1 ;
  wire \vga_red_reg_reg[3]_i_74_n_2 ;
  wire \vga_red_reg_reg[3]_i_74_n_3 ;
  wire \vga_red_reg_reg[3]_i_8_n_0 ;
  wire \vga_red_reg_reg[3]_i_8_n_1 ;
  wire \vga_red_reg_reg[3]_i_8_n_2 ;
  wire \vga_red_reg_reg[3]_i_8_n_3 ;
  wire [3:0]\NLW_food_x_reg[4]_P_i_172_O_UNCONNECTED ;
  wire [3:0]\NLW_food_x_reg[4]_P_i_214_O_UNCONNECTED ;
  wire [3:0]\NLW_food_x_reg[4]_P_i_231_O_UNCONNECTED ;
  wire [3:0]\NLW_food_x_reg[4]_P_i_9_O_UNCONNECTED ;
  wire [3:0]NLW_game_active_reg_i_15_O_UNCONNECTED;
  wire [3:0]\NLW_random_x_reg[15]_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_random_x_reg[30]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_random_y_reg[19]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_random_y_reg[30]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_green_reg_reg[3]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_green_reg_reg[3]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_150_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_57_O_UNCONNECTED ;

  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF CLK_I_IBUF_inst
       (.I(CLK_I),
        .O(CLK_I_IBUF));
  debounce DBB
       (.O({\food_x_reg[4]_P_i_2_n_4 ,\food_x_reg[4]_P_i_2_n_5 ,\food_x_reg[4]_P_i_2_n_6 ,\food_x_reg[4]_P_i_2_n_7 }),
        .Q({\random_y_reg_n_0_[4] ,\random_y_reg_n_0_[3] ,\random_y_reg_n_0_[2] ,\random_y_reg_n_0_[1] ,\random_y_reg_n_0_[0] }),
        .btn_IBUF(btn_IBUF),
        .clk_out1(pxl_clk),
        .\continuous_result_reg_reg[0]_0 (DBB_n_0),
        .\continuous_result_reg_reg[0]_1 (DBB_n_3),
        .\continuous_result_reg_reg[0]_10 (DBB_n_15),
        .\continuous_result_reg_reg[0]_11 (DBB_n_17),
        .\continuous_result_reg_reg[0]_12 (DBB_n_19),
        .\continuous_result_reg_reg[0]_13 (DBB_n_21),
        .\continuous_result_reg_reg[0]_2 (DBB_n_5),
        .\continuous_result_reg_reg[0]_3 (DBB_n_6),
        .\continuous_result_reg_reg[0]_4 (DBB_n_7),
        .\continuous_result_reg_reg[0]_5 (DBB_n_8),
        .\continuous_result_reg_reg[0]_6 (DBB_n_9),
        .\continuous_result_reg_reg[0]_7 (DBB_n_12),
        .\continuous_result_reg_reg[0]_8 (DBB_n_13),
        .\continuous_result_reg_reg[0]_9 (DBB_n_14),
        .\continuous_result_reg_reg[1]_0 (DBB_n_1),
        .\continuous_result_reg_reg[1]_1 (DBB_n_2),
        .direction(direction),
        .\food_x_reg[1]_C (\food_x[4]_P_i_3_n_0 ),
        .\food_y_reg[4]_P (\food_y[4]_P_i_1_n_0 ),
        .game_active(game_active),
        .game_active_reg(DBB_n_10),
        .game_active_reg_0(DBB_n_26),
        .p_2_in(p_2_in[5:4]),
        .\random_x_reg[3] (DBB_n_11),
        .\random_y_reg[0] (DBB_n_4),
        .\random_y_reg[0]_0 (DBB_n_16),
        .\random_y_reg[0]_1 (DBB_n_20),
        .\random_y_reg[1] (DBB_n_18),
        .\random_y_reg[1]_0 (DBB_n_22),
        .\random_y_reg[2] (DBB_n_23),
        .\random_y_reg[4] (DBB_n_24),
        .\random_y_reg[4]_0 (DBB_n_25));
  GND GND
       (.G(\<const0> ));
  Pixel_On_Text2 Text_line1
       (.ADDRBWRADDR({Text_line_score_n_2,Text_line_score_n_3,Text_line_score_n_4,Text_line_score_n_5,Text_line_score_n_6,Text_line_score_n_7,Text_line_score_n_8,Text_line_score_n_9,Text_line_score_n_10,Text_line_score_n_11,Text_line_score_n_12}),
        .CO(vga_blue11_out),
        .O({Text_line1_n_0,Text_line1_n_1,Text_line1_n_2,Text_line1_n_3}),
        .S(\vga_blue_reg[3]_i_52_n_0 ),
        .charPosition3__0_carry__1_0(h_cntr_reg_reg),
        .clk_out1(pxl_clk),
        .fontRow_reg(Text_line1_n_22),
        .\food_x_reg[5]_P (vga_green12_out),
        .game_active(game_active),
        .\h_cntr_reg_reg[0] (Text_line1_n_21),
        .\h_cntr_reg_reg[10] ({Text_line1_n_5,Text_line1_n_6,Text_line1_n_7,Text_line1_n_8}),
        .\h_cntr_reg_reg[11] ({Text_line1_n_9,Text_line1_n_10,Text_line1_n_11,Text_line1_n_12}),
        .\h_cntr_reg_reg[11]_0 ({Text_line1_n_13,Text_line1_n_14,Text_line1_n_15}),
        .head_x_reg(head_x_reg[8:0]),
        .out({v_cntr_reg_reg__0,\v_cntr_reg_reg_n_0_[1] ,v_cntr_reg_reg}),
        .pixel_reg_0(Text_line_score_n_1),
        .pixel_reg_1(Text_line_score_n_13),
        .pixel_reg_2(pixel31_in),
        .pixel_reg_3(pixel32_in),
        .vga_blue(vga_blue),
        .\vga_blue_reg_reg[3] ({\vga_blue_reg[3]_i_14_n_0 ,\vga_blue_reg[3]_i_15_n_0 ,\vga_blue_reg[3]_i_16_n_0 }),
        .\vga_blue_reg_reg[3]_0 (Text_line_score_n_0),
        .\vga_blue_reg_reg[3]_1 (Text_line3_n_0),
        .\vga_blue_reg_reg[3]_i_5_0 ({\vga_blue_reg[3]_i_29_n_0 ,\vga_blue_reg[3]_i_30_n_0 ,\vga_blue_reg[3]_i_31_n_0 ,\vga_blue_reg[3]_i_32_n_0 }),
        .vga_green(vga_green),
        .\vga_green_reg[3]_i_6_0 (\vga_green_reg[3]_i_30_n_0 ),
        .\vga_green_reg[3]_i_6_1 (\vga_green_reg[3]_i_31_n_0 ),
        .\vga_green_reg[3]_i_7_0 (\vga_green_reg[3]_i_32_n_0 ),
        .\vga_green_reg[3]_i_7_1 (\vga_green_reg_reg[3]_i_29_n_2 ),
        .\vga_green_reg_reg[3] (ltOp27_in),
        .\vga_green_reg_reg[3]_0 (ltOp28_in),
        .\vga_green_reg_reg[3]_i_3_0 (\food_x_reg[5]_P_n_0 ),
        .\vga_green_reg_reg[3]_i_3_1 (\food_x_reg[5]_LDC_n_0 ),
        .\vga_green_reg_reg[3]_i_3_2 (\food_x_reg[5]_C_n_0 ),
        .\vga_green_reg_reg[3]_i_3_3 (\vga_green_reg[3]_i_14_n_0 ),
        .\vga_green_reg_reg[3]_i_3_4 (\vga_green_reg[3]_i_17_n_0 ),
        .vga_red(vga_red),
        .\vga_red_reg[3]_i_142_0 (Text_line1_n_4),
        .\vga_red_reg_reg[3] (\vga_red_reg[3]_i_6_n_0 ),
        .\vga_red_reg_reg[3]_0 (\vga_blue_reg[3]_i_8_n_0 ));
  Pixel_On_Text2__parameterized3 Text_line3
       (.CO(pixel_reg_i_5_n_2),
        .\_inferred__5/i__carry__1_0 (h_cntr_reg_reg),
        .clk_out1(pxl_clk),
        .out({v_cntr_reg_reg__0,\v_cntr_reg_reg_n_0_[1] ,v_cntr_reg_reg}),
        .pixel_reg_0(Text_line3_n_0));
  Pixel_On_Text2__parameterized1 Text_line_score
       (.ADDRBWRADDR({Text_line_score_n_2,Text_line_score_n_3,Text_line_score_n_4,Text_line_score_n_5,Text_line_score_n_6,Text_line_score_n_7,Text_line_score_n_8,Text_line_score_n_9,Text_line_score_n_10,Text_line_score_n_11,Text_line_score_n_12}),
        .clk_out1(pxl_clk),
        .fontAddress_carry__0_i_5__1_0(Text_line1_n_21),
        .\h_cntr_reg_reg[5] (Text_line_score_n_1),
        .out(h_cntr_reg_reg),
        .pixel3_carry__0_0({v_cntr_reg_reg__0,\v_cntr_reg_reg_n_0_[1] ,v_cntr_reg_reg}),
        .pixel_reg_0(Text_line_score_n_0),
        .pixel_reg_1(Text_line1_n_22),
        .\v_cntr_reg_reg[11] (Text_line_score_n_13));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  OBUF \VGA_B_OBUF[0]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[0]));
  OBUF \VGA_B_OBUF[1]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[1]));
  OBUF \VGA_B_OBUF[2]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[2]));
  OBUF \VGA_B_OBUF[3]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[3]));
  OBUF \VGA_G_OBUF[0]_inst 
       (.I(VGA_G_OBUF),
        .O(VGA_G[0]));
  OBUF \VGA_G_OBUF[1]_inst 
       (.I(VGA_G_OBUF),
        .O(VGA_G[1]));
  OBUF \VGA_G_OBUF[2]_inst 
       (.I(VGA_G_OBUF),
        .O(VGA_G[2]));
  OBUF \VGA_G_OBUF[3]_inst 
       (.I(VGA_G_OBUF),
        .O(VGA_G[3]));
  OBUF VGA_HS_O_OBUF_inst
       (.I(VGA_HS_O_OBUF),
        .O(VGA_HS_O));
  OBUF \VGA_R_OBUF[0]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[0]));
  OBUF \VGA_R_OBUF[1]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[1]));
  OBUF \VGA_R_OBUF[2]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[2]));
  OBUF \VGA_R_OBUF[3]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[3]));
  OBUF VGA_VS_O_OBUF_inst
       (.I(VGA_VS_O_OBUF),
        .O(VGA_VS_O));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  IBUF \btn_IBUF[3]_inst 
       (.I(btn[3]),
        .O(btn_IBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_1hz_i_1
       (.I0(\clk_cnt_1hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_1hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_1hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_1hz_reg_n_0_[0] ),
        .I4(clk_1hz_reg_n_0),
        .O(clk_1hz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1hz_reg
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_1hz_i_1_n_0),
        .Q(clk_1hz_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_2hz_i_1
       (.I0(\clk_cnt_2hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_2hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_2hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_2hz_reg_n_0_[0] ),
        .I4(clk_2hz_reg_n_0),
        .O(clk_2hz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_2hz_reg
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_2hz_i_1_n_0),
        .Q(clk_2hz_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_4hz_i_1
       (.I0(\clk_cnt_4hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_4hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_4hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_4hz_reg_n_0_[0] ),
        .I4(clk_4hz_reg_n_0),
        .O(clk_4hz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_4hz_reg
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_4hz_i_1_n_0),
        .Q(clk_4hz_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_8hz_i_1
       (.I0(\clk_cnt_8hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_8hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_8hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_8hz_reg_n_0_[0] ),
        .I4(clk_8hz_reg_n_0),
        .O(clk_8hz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_8hz_reg
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_8hz_i_1_n_0),
        .Q(clk_8hz_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_cnt_1hz[0]_i_1 
       (.I0(\clk_cnt_1hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_1hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_1hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_1hz_reg_n_0_[0] ),
        .O(clk_cnt_1hz));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \clk_cnt_1hz[0]_i_2 
       (.I0(\clk_cnt_1hz_reg_n_0_[13] ),
        .I1(\clk_cnt_1hz_reg_n_0_[14] ),
        .I2(\clk_cnt_1hz_reg_n_0_[11] ),
        .I3(\clk_cnt_1hz_reg_n_0_[12] ),
        .I4(\clk_cnt_1hz[0]_i_5_n_0 ),
        .O(\clk_cnt_1hz[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_cnt_1hz[0]_i_3 
       (.I0(\clk_cnt_1hz_reg_n_0_[5] ),
        .I1(\clk_cnt_1hz_reg_n_0_[6] ),
        .I2(\clk_cnt_1hz_reg_n_0_[3] ),
        .I3(\clk_cnt_1hz_reg_n_0_[4] ),
        .I4(\clk_cnt_1hz[0]_i_6_n_0 ),
        .O(\clk_cnt_1hz[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \clk_cnt_1hz[0]_i_4 
       (.I0(\clk_cnt_1hz[0]_i_7_n_0 ),
        .I1(\clk_cnt_1hz_reg_n_0_[20] ),
        .I2(\clk_cnt_1hz_reg_n_0_[19] ),
        .I3(\clk_cnt_1hz_reg_n_0_[22] ),
        .I4(\clk_cnt_1hz_reg_n_0_[21] ),
        .I5(\clk_cnt_1hz[0]_i_8_n_0 ),
        .O(\clk_cnt_1hz[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_cnt_1hz[0]_i_5 
       (.I0(\clk_cnt_1hz_reg_n_0_[16] ),
        .I1(\clk_cnt_1hz_reg_n_0_[15] ),
        .I2(\clk_cnt_1hz_reg_n_0_[17] ),
        .I3(\clk_cnt_1hz_reg_n_0_[18] ),
        .O(\clk_cnt_1hz[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_cnt_1hz[0]_i_6 
       (.I0(\clk_cnt_1hz_reg_n_0_[8] ),
        .I1(\clk_cnt_1hz_reg_n_0_[7] ),
        .I2(\clk_cnt_1hz_reg_n_0_[10] ),
        .I3(\clk_cnt_1hz_reg_n_0_[9] ),
        .O(\clk_cnt_1hz[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \clk_cnt_1hz[0]_i_7 
       (.I0(\clk_cnt_1hz_reg_n_0_[24] ),
        .I1(\clk_cnt_1hz_reg_n_0_[23] ),
        .I2(\clk_cnt_1hz_reg_n_0_[26] ),
        .I3(\clk_cnt_1hz_reg_n_0_[25] ),
        .O(\clk_cnt_1hz[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cnt_1hz[0]_i_8 
       (.I0(\clk_cnt_1hz_reg_n_0_[29] ),
        .I1(\clk_cnt_1hz_reg_n_0_[30] ),
        .I2(\clk_cnt_1hz_reg_n_0_[27] ),
        .I3(\clk_cnt_1hz_reg_n_0_[28] ),
        .I4(\clk_cnt_1hz_reg_n_0_[2] ),
        .I5(\clk_cnt_1hz_reg_n_0_[1] ),
        .O(\clk_cnt_1hz[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_cnt_1hz[30]_i_1 
       (.I0(\clk_cnt_1hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_1hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_1hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_1hz_reg_n_0_[0] ),
        .O(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[0] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_cnt_1hz),
        .Q(\clk_cnt_1hz_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[10] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[10]),
        .Q(\clk_cnt_1hz_reg_n_0_[10] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[11] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[11]),
        .Q(\clk_cnt_1hz_reg_n_0_[11] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[12] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[12]),
        .Q(\clk_cnt_1hz_reg_n_0_[12] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[12]_i_1 
       (.CI(\clk_cnt_1hz_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[12]_i_1_n_0 ,\clk_cnt_1hz_reg[12]_i_1_n_1 ,\clk_cnt_1hz_reg[12]_i_1_n_2 ,\clk_cnt_1hz_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S({\clk_cnt_1hz_reg_n_0_[12] ,\clk_cnt_1hz_reg_n_0_[11] ,\clk_cnt_1hz_reg_n_0_[10] ,\clk_cnt_1hz_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[13] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[13]),
        .Q(\clk_cnt_1hz_reg_n_0_[13] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[14] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[14]),
        .Q(\clk_cnt_1hz_reg_n_0_[14] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[15] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[15]),
        .Q(\clk_cnt_1hz_reg_n_0_[15] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[16] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[16]),
        .Q(\clk_cnt_1hz_reg_n_0_[16] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[16]_i_1 
       (.CI(\clk_cnt_1hz_reg[12]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[16]_i_1_n_0 ,\clk_cnt_1hz_reg[16]_i_1_n_1 ,\clk_cnt_1hz_reg[16]_i_1_n_2 ,\clk_cnt_1hz_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S({\clk_cnt_1hz_reg_n_0_[16] ,\clk_cnt_1hz_reg_n_0_[15] ,\clk_cnt_1hz_reg_n_0_[14] ,\clk_cnt_1hz_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[17] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[17]),
        .Q(\clk_cnt_1hz_reg_n_0_[17] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[18] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[18]),
        .Q(\clk_cnt_1hz_reg_n_0_[18] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[19] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[19]),
        .Q(\clk_cnt_1hz_reg_n_0_[19] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[1] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(\clk_cnt_1hz_reg_n_0_[1] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[20] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[20]),
        .Q(\clk_cnt_1hz_reg_n_0_[20] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[20]_i_1 
       (.CI(\clk_cnt_1hz_reg[16]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[20]_i_1_n_0 ,\clk_cnt_1hz_reg[20]_i_1_n_1 ,\clk_cnt_1hz_reg[20]_i_1_n_2 ,\clk_cnt_1hz_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S({\clk_cnt_1hz_reg_n_0_[20] ,\clk_cnt_1hz_reg_n_0_[19] ,\clk_cnt_1hz_reg_n_0_[18] ,\clk_cnt_1hz_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[21] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[21]),
        .Q(\clk_cnt_1hz_reg_n_0_[21] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[22] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[22]),
        .Q(\clk_cnt_1hz_reg_n_0_[22] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[23] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[23]),
        .Q(\clk_cnt_1hz_reg_n_0_[23] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[24] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[24]),
        .Q(\clk_cnt_1hz_reg_n_0_[24] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[24]_i_1 
       (.CI(\clk_cnt_1hz_reg[20]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[24]_i_1_n_0 ,\clk_cnt_1hz_reg[24]_i_1_n_1 ,\clk_cnt_1hz_reg[24]_i_1_n_2 ,\clk_cnt_1hz_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S({\clk_cnt_1hz_reg_n_0_[24] ,\clk_cnt_1hz_reg_n_0_[23] ,\clk_cnt_1hz_reg_n_0_[22] ,\clk_cnt_1hz_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[25] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[25]),
        .Q(\clk_cnt_1hz_reg_n_0_[25] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[26] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[26]),
        .Q(\clk_cnt_1hz_reg_n_0_[26] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[27] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[27]),
        .Q(\clk_cnt_1hz_reg_n_0_[27] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[28] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[28]),
        .Q(\clk_cnt_1hz_reg_n_0_[28] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[28]_i_1 
       (.CI(\clk_cnt_1hz_reg[24]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[28]_i_1_n_0 ,\clk_cnt_1hz_reg[28]_i_1_n_1 ,\clk_cnt_1hz_reg[28]_i_1_n_2 ,\clk_cnt_1hz_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S({\clk_cnt_1hz_reg_n_0_[28] ,\clk_cnt_1hz_reg_n_0_[27] ,\clk_cnt_1hz_reg_n_0_[26] ,\clk_cnt_1hz_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[29] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[29]),
        .Q(\clk_cnt_1hz_reg_n_0_[29] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[2] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(\clk_cnt_1hz_reg_n_0_[2] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[30] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[30]),
        .Q(\clk_cnt_1hz_reg_n_0_[30] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[30]_i_2 
       (.CI(\clk_cnt_1hz_reg[28]_i_1_n_0 ),
        .CO(\clk_cnt_1hz_reg[30]_i_2_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[30:29]),
        .S({\<const0> ,\<const0> ,\clk_cnt_1hz_reg_n_0_[30] ,\clk_cnt_1hz_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[3] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(\clk_cnt_1hz_reg_n_0_[3] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[4] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[4]),
        .Q(\clk_cnt_1hz_reg_n_0_[4] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\clk_cnt_1hz_reg[4]_i_1_n_0 ,\clk_cnt_1hz_reg[4]_i_1_n_1 ,\clk_cnt_1hz_reg[4]_i_1_n_2 ,\clk_cnt_1hz_reg[4]_i_1_n_3 }),
        .CYINIT(\clk_cnt_1hz_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S({\clk_cnt_1hz_reg_n_0_[4] ,\clk_cnt_1hz_reg_n_0_[3] ,\clk_cnt_1hz_reg_n_0_[2] ,\clk_cnt_1hz_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[5] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(\clk_cnt_1hz_reg_n_0_[5] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[6] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(\clk_cnt_1hz_reg_n_0_[6] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[7] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(\clk_cnt_1hz_reg_n_0_[7] ),
        .R(clk_1hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[8] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[8]),
        .Q(\clk_cnt_1hz_reg_n_0_[8] ),
        .R(clk_1hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_1hz_reg[8]_i_1 
       (.CI(\clk_cnt_1hz_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_1hz_reg[8]_i_1_n_0 ,\clk_cnt_1hz_reg[8]_i_1_n_1 ,\clk_cnt_1hz_reg[8]_i_1_n_2 ,\clk_cnt_1hz_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S({\clk_cnt_1hz_reg_n_0_[8] ,\clk_cnt_1hz_reg_n_0_[7] ,\clk_cnt_1hz_reg_n_0_[6] ,\clk_cnt_1hz_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_1hz_reg[9] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(data0[9]),
        .Q(\clk_cnt_1hz_reg_n_0_[9] ),
        .R(clk_1hz));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_cnt_2hz[0]_i_1 
       (.I0(\clk_cnt_2hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_2hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_2hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_2hz_reg_n_0_[0] ),
        .O(clk_cnt_2hz));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_cnt_2hz[0]_i_2 
       (.I0(\clk_cnt_2hz_reg_n_0_[14] ),
        .I1(\clk_cnt_2hz_reg_n_0_[13] ),
        .I2(\clk_cnt_2hz_reg_n_0_[12] ),
        .I3(\clk_cnt_2hz_reg_n_0_[11] ),
        .I4(\clk_cnt_2hz[0]_i_5_n_0 ),
        .O(\clk_cnt_2hz[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_cnt_2hz[0]_i_3 
       (.I0(\clk_cnt_2hz_reg_n_0_[6] ),
        .I1(\clk_cnt_2hz_reg_n_0_[5] ),
        .I2(\clk_cnt_2hz_reg_n_0_[3] ),
        .I3(\clk_cnt_2hz_reg_n_0_[4] ),
        .I4(\clk_cnt_2hz[0]_i_6_n_0 ),
        .O(\clk_cnt_2hz[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \clk_cnt_2hz[0]_i_4 
       (.I0(\clk_cnt_2hz[0]_i_7_n_0 ),
        .I1(\clk_cnt_2hz_reg_n_0_[20] ),
        .I2(\clk_cnt_2hz_reg_n_0_[19] ),
        .I3(\clk_cnt_2hz_reg_n_0_[21] ),
        .I4(\clk_cnt_2hz_reg_n_0_[22] ),
        .I5(\clk_cnt_2hz[0]_i_8_n_0 ),
        .O(\clk_cnt_2hz[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_cnt_2hz[0]_i_5 
       (.I0(\clk_cnt_2hz_reg_n_0_[16] ),
        .I1(\clk_cnt_2hz_reg_n_0_[15] ),
        .I2(\clk_cnt_2hz_reg_n_0_[18] ),
        .I3(\clk_cnt_2hz_reg_n_0_[17] ),
        .O(\clk_cnt_2hz[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_cnt_2hz[0]_i_6 
       (.I0(\clk_cnt_2hz_reg_n_0_[7] ),
        .I1(\clk_cnt_2hz_reg_n_0_[8] ),
        .I2(\clk_cnt_2hz_reg_n_0_[10] ),
        .I3(\clk_cnt_2hz_reg_n_0_[9] ),
        .O(\clk_cnt_2hz[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clk_cnt_2hz[0]_i_7 
       (.I0(\clk_cnt_2hz_reg_n_0_[24] ),
        .I1(\clk_cnt_2hz_reg_n_0_[23] ),
        .I2(\clk_cnt_2hz_reg_n_0_[25] ),
        .I3(\clk_cnt_2hz_reg_n_0_[26] ),
        .O(\clk_cnt_2hz[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cnt_2hz[0]_i_8 
       (.I0(\clk_cnt_2hz_reg_n_0_[29] ),
        .I1(\clk_cnt_2hz_reg_n_0_[30] ),
        .I2(\clk_cnt_2hz_reg_n_0_[27] ),
        .I3(\clk_cnt_2hz_reg_n_0_[28] ),
        .I4(\clk_cnt_2hz_reg_n_0_[2] ),
        .I5(\clk_cnt_2hz_reg_n_0_[1] ),
        .O(\clk_cnt_2hz[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_cnt_2hz[30]_i_1 
       (.I0(\clk_cnt_2hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_2hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_2hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_2hz_reg_n_0_[0] ),
        .O(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[0] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_cnt_2hz),
        .Q(\clk_cnt_2hz_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[10] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[12]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[10] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[11] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[12]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[11] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[12] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[12]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[12] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[12]_i_1 
       (.CI(\clk_cnt_2hz_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[12]_i_1_n_0 ,\clk_cnt_2hz_reg[12]_i_1_n_1 ,\clk_cnt_2hz_reg[12]_i_1_n_2 ,\clk_cnt_2hz_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[12]_i_1_n_4 ,\clk_cnt_2hz_reg[12]_i_1_n_5 ,\clk_cnt_2hz_reg[12]_i_1_n_6 ,\clk_cnt_2hz_reg[12]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[12] ,\clk_cnt_2hz_reg_n_0_[11] ,\clk_cnt_2hz_reg_n_0_[10] ,\clk_cnt_2hz_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[13] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[16]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[13] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[14] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[16]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[14] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[15] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[16]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[15] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[16] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[16]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[16] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[16]_i_1 
       (.CI(\clk_cnt_2hz_reg[12]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[16]_i_1_n_0 ,\clk_cnt_2hz_reg[16]_i_1_n_1 ,\clk_cnt_2hz_reg[16]_i_1_n_2 ,\clk_cnt_2hz_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[16]_i_1_n_4 ,\clk_cnt_2hz_reg[16]_i_1_n_5 ,\clk_cnt_2hz_reg[16]_i_1_n_6 ,\clk_cnt_2hz_reg[16]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[16] ,\clk_cnt_2hz_reg_n_0_[15] ,\clk_cnt_2hz_reg_n_0_[14] ,\clk_cnt_2hz_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[17] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[20]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[17] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[18] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[20]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[18] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[19] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[20]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[19] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[1] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[1] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[20] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[20]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[20] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[20]_i_1 
       (.CI(\clk_cnt_2hz_reg[16]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[20]_i_1_n_0 ,\clk_cnt_2hz_reg[20]_i_1_n_1 ,\clk_cnt_2hz_reg[20]_i_1_n_2 ,\clk_cnt_2hz_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[20]_i_1_n_4 ,\clk_cnt_2hz_reg[20]_i_1_n_5 ,\clk_cnt_2hz_reg[20]_i_1_n_6 ,\clk_cnt_2hz_reg[20]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[20] ,\clk_cnt_2hz_reg_n_0_[19] ,\clk_cnt_2hz_reg_n_0_[18] ,\clk_cnt_2hz_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[21] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[24]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[21] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[22] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[24]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[22] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[23] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[24]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[23] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[24] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[24]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[24] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[24]_i_1 
       (.CI(\clk_cnt_2hz_reg[20]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[24]_i_1_n_0 ,\clk_cnt_2hz_reg[24]_i_1_n_1 ,\clk_cnt_2hz_reg[24]_i_1_n_2 ,\clk_cnt_2hz_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[24]_i_1_n_4 ,\clk_cnt_2hz_reg[24]_i_1_n_5 ,\clk_cnt_2hz_reg[24]_i_1_n_6 ,\clk_cnt_2hz_reg[24]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[24] ,\clk_cnt_2hz_reg_n_0_[23] ,\clk_cnt_2hz_reg_n_0_[22] ,\clk_cnt_2hz_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[25] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[28]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[25] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[26] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[28]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[26] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[27] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[28]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[27] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[28] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[28]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[28] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[28]_i_1 
       (.CI(\clk_cnt_2hz_reg[24]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[28]_i_1_n_0 ,\clk_cnt_2hz_reg[28]_i_1_n_1 ,\clk_cnt_2hz_reg[28]_i_1_n_2 ,\clk_cnt_2hz_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[28]_i_1_n_4 ,\clk_cnt_2hz_reg[28]_i_1_n_5 ,\clk_cnt_2hz_reg[28]_i_1_n_6 ,\clk_cnt_2hz_reg[28]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[28] ,\clk_cnt_2hz_reg_n_0_[27] ,\clk_cnt_2hz_reg_n_0_[26] ,\clk_cnt_2hz_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[29] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[30]_i_2_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[29] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[2] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[2] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[30] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[30]_i_2_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[30] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[30]_i_2 
       (.CI(\clk_cnt_2hz_reg[28]_i_1_n_0 ),
        .CO(\clk_cnt_2hz_reg[30]_i_2_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[30]_i_2_n_6 ,\clk_cnt_2hz_reg[30]_i_2_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_2hz_reg_n_0_[30] ,\clk_cnt_2hz_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[3] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[3] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[4] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[4] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\clk_cnt_2hz_reg[4]_i_1_n_0 ,\clk_cnt_2hz_reg[4]_i_1_n_1 ,\clk_cnt_2hz_reg[4]_i_1_n_2 ,\clk_cnt_2hz_reg[4]_i_1_n_3 }),
        .CYINIT(\clk_cnt_2hz_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[4]_i_1_n_4 ,\clk_cnt_2hz_reg[4]_i_1_n_5 ,\clk_cnt_2hz_reg[4]_i_1_n_6 ,\clk_cnt_2hz_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[4] ,\clk_cnt_2hz_reg_n_0_[3] ,\clk_cnt_2hz_reg_n_0_[2] ,\clk_cnt_2hz_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[5] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[5] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[6] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_2hz_reg_n_0_[6] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[7] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_2hz_reg_n_0_[7] ),
        .R(clk_2hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[8] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_2hz_reg_n_0_[8] ),
        .R(clk_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_2hz_reg[8]_i_1 
       (.CI(\clk_cnt_2hz_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_2hz_reg[8]_i_1_n_0 ,\clk_cnt_2hz_reg[8]_i_1_n_1 ,\clk_cnt_2hz_reg[8]_i_1_n_2 ,\clk_cnt_2hz_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_2hz_reg[8]_i_1_n_4 ,\clk_cnt_2hz_reg[8]_i_1_n_5 ,\clk_cnt_2hz_reg[8]_i_1_n_6 ,\clk_cnt_2hz_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_2hz_reg_n_0_[8] ,\clk_cnt_2hz_reg_n_0_[7] ,\clk_cnt_2hz_reg_n_0_[6] ,\clk_cnt_2hz_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_2hz_reg[9] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_2hz_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_2hz_reg_n_0_[9] ),
        .R(clk_2hz));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_cnt_4hz[0]_i_1 
       (.I0(\clk_cnt_4hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_4hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_4hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_4hz_reg_n_0_[0] ),
        .O(clk_cnt_4hz));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_cnt_4hz[0]_i_2 
       (.I0(\clk_cnt_4hz_reg_n_0_[13] ),
        .I1(\clk_cnt_4hz_reg_n_0_[14] ),
        .I2(\clk_cnt_4hz_reg_n_0_[11] ),
        .I3(\clk_cnt_4hz_reg_n_0_[12] ),
        .I4(\clk_cnt_4hz[0]_i_5_n_0 ),
        .O(\clk_cnt_4hz[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_cnt_4hz[0]_i_3 
       (.I0(\clk_cnt_4hz_reg_n_0_[5] ),
        .I1(\clk_cnt_4hz_reg_n_0_[6] ),
        .I2(\clk_cnt_4hz_reg_n_0_[3] ),
        .I3(\clk_cnt_4hz_reg_n_0_[4] ),
        .I4(\clk_cnt_4hz[0]_i_6_n_0 ),
        .O(\clk_cnt_4hz[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \clk_cnt_4hz[0]_i_4 
       (.I0(\clk_cnt_4hz[0]_i_7_n_0 ),
        .I1(\clk_cnt_4hz_reg_n_0_[20] ),
        .I2(\clk_cnt_4hz_reg_n_0_[19] ),
        .I3(\clk_cnt_4hz_reg_n_0_[22] ),
        .I4(\clk_cnt_4hz_reg_n_0_[21] ),
        .I5(\clk_cnt_4hz[0]_i_8_n_0 ),
        .O(\clk_cnt_4hz[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_cnt_4hz[0]_i_5 
       (.I0(\clk_cnt_4hz_reg_n_0_[15] ),
        .I1(\clk_cnt_4hz_reg_n_0_[16] ),
        .I2(\clk_cnt_4hz_reg_n_0_[18] ),
        .I3(\clk_cnt_4hz_reg_n_0_[17] ),
        .O(\clk_cnt_4hz[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \clk_cnt_4hz[0]_i_6 
       (.I0(\clk_cnt_4hz_reg_n_0_[8] ),
        .I1(\clk_cnt_4hz_reg_n_0_[7] ),
        .I2(\clk_cnt_4hz_reg_n_0_[10] ),
        .I3(\clk_cnt_4hz_reg_n_0_[9] ),
        .O(\clk_cnt_4hz[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_cnt_4hz[0]_i_7 
       (.I0(\clk_cnt_4hz_reg_n_0_[24] ),
        .I1(\clk_cnt_4hz_reg_n_0_[23] ),
        .I2(\clk_cnt_4hz_reg_n_0_[26] ),
        .I3(\clk_cnt_4hz_reg_n_0_[25] ),
        .O(\clk_cnt_4hz[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cnt_4hz[0]_i_8 
       (.I0(\clk_cnt_4hz_reg_n_0_[29] ),
        .I1(\clk_cnt_4hz_reg_n_0_[30] ),
        .I2(\clk_cnt_4hz_reg_n_0_[27] ),
        .I3(\clk_cnt_4hz_reg_n_0_[28] ),
        .I4(\clk_cnt_4hz_reg_n_0_[2] ),
        .I5(\clk_cnt_4hz_reg_n_0_[1] ),
        .O(\clk_cnt_4hz[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_cnt_4hz[30]_i_1 
       (.I0(\clk_cnt_4hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_4hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_4hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_4hz_reg_n_0_[0] ),
        .O(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[0] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_cnt_4hz),
        .Q(\clk_cnt_4hz_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[10] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[12]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[10] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[11] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[12]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[11] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[12] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[12]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[12] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[12]_i_1 
       (.CI(\clk_cnt_4hz_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[12]_i_1_n_0 ,\clk_cnt_4hz_reg[12]_i_1_n_1 ,\clk_cnt_4hz_reg[12]_i_1_n_2 ,\clk_cnt_4hz_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[12]_i_1_n_4 ,\clk_cnt_4hz_reg[12]_i_1_n_5 ,\clk_cnt_4hz_reg[12]_i_1_n_6 ,\clk_cnt_4hz_reg[12]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[12] ,\clk_cnt_4hz_reg_n_0_[11] ,\clk_cnt_4hz_reg_n_0_[10] ,\clk_cnt_4hz_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[13] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[16]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[13] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[14] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[16]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[14] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[15] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[16]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[15] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[16] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[16]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[16] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[16]_i_1 
       (.CI(\clk_cnt_4hz_reg[12]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[16]_i_1_n_0 ,\clk_cnt_4hz_reg[16]_i_1_n_1 ,\clk_cnt_4hz_reg[16]_i_1_n_2 ,\clk_cnt_4hz_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[16]_i_1_n_4 ,\clk_cnt_4hz_reg[16]_i_1_n_5 ,\clk_cnt_4hz_reg[16]_i_1_n_6 ,\clk_cnt_4hz_reg[16]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[16] ,\clk_cnt_4hz_reg_n_0_[15] ,\clk_cnt_4hz_reg_n_0_[14] ,\clk_cnt_4hz_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[17] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[20]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[17] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[18] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[20]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[18] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[19] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[20]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[19] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[1] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[1] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[20] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[20]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[20] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[20]_i_1 
       (.CI(\clk_cnt_4hz_reg[16]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[20]_i_1_n_0 ,\clk_cnt_4hz_reg[20]_i_1_n_1 ,\clk_cnt_4hz_reg[20]_i_1_n_2 ,\clk_cnt_4hz_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[20]_i_1_n_4 ,\clk_cnt_4hz_reg[20]_i_1_n_5 ,\clk_cnt_4hz_reg[20]_i_1_n_6 ,\clk_cnt_4hz_reg[20]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[20] ,\clk_cnt_4hz_reg_n_0_[19] ,\clk_cnt_4hz_reg_n_0_[18] ,\clk_cnt_4hz_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[21] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[24]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[21] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[22] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[24]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[22] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[23] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[24]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[23] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[24] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[24]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[24] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[24]_i_1 
       (.CI(\clk_cnt_4hz_reg[20]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[24]_i_1_n_0 ,\clk_cnt_4hz_reg[24]_i_1_n_1 ,\clk_cnt_4hz_reg[24]_i_1_n_2 ,\clk_cnt_4hz_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[24]_i_1_n_4 ,\clk_cnt_4hz_reg[24]_i_1_n_5 ,\clk_cnt_4hz_reg[24]_i_1_n_6 ,\clk_cnt_4hz_reg[24]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[24] ,\clk_cnt_4hz_reg_n_0_[23] ,\clk_cnt_4hz_reg_n_0_[22] ,\clk_cnt_4hz_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[25] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[28]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[25] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[26] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[28]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[26] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[27] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[28]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[27] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[28] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[28]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[28] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[28]_i_1 
       (.CI(\clk_cnt_4hz_reg[24]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[28]_i_1_n_0 ,\clk_cnt_4hz_reg[28]_i_1_n_1 ,\clk_cnt_4hz_reg[28]_i_1_n_2 ,\clk_cnt_4hz_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[28]_i_1_n_4 ,\clk_cnt_4hz_reg[28]_i_1_n_5 ,\clk_cnt_4hz_reg[28]_i_1_n_6 ,\clk_cnt_4hz_reg[28]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[28] ,\clk_cnt_4hz_reg_n_0_[27] ,\clk_cnt_4hz_reg_n_0_[26] ,\clk_cnt_4hz_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[29] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[30]_i_2_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[29] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[2] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[2] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[30] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[30]_i_2_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[30] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[30]_i_2 
       (.CI(\clk_cnt_4hz_reg[28]_i_1_n_0 ),
        .CO(\clk_cnt_4hz_reg[30]_i_2_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[30]_i_2_n_6 ,\clk_cnt_4hz_reg[30]_i_2_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_4hz_reg_n_0_[30] ,\clk_cnt_4hz_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[3] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[3] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[4] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[4] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\clk_cnt_4hz_reg[4]_i_1_n_0 ,\clk_cnt_4hz_reg[4]_i_1_n_1 ,\clk_cnt_4hz_reg[4]_i_1_n_2 ,\clk_cnt_4hz_reg[4]_i_1_n_3 }),
        .CYINIT(\clk_cnt_4hz_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[4]_i_1_n_4 ,\clk_cnt_4hz_reg[4]_i_1_n_5 ,\clk_cnt_4hz_reg[4]_i_1_n_6 ,\clk_cnt_4hz_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[4] ,\clk_cnt_4hz_reg_n_0_[3] ,\clk_cnt_4hz_reg_n_0_[2] ,\clk_cnt_4hz_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[5] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[5] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[6] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_4hz_reg_n_0_[6] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[7] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_4hz_reg_n_0_[7] ),
        .R(clk_4hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[8] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_4hz_reg_n_0_[8] ),
        .R(clk_4hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_4hz_reg[8]_i_1 
       (.CI(\clk_cnt_4hz_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_4hz_reg[8]_i_1_n_0 ,\clk_cnt_4hz_reg[8]_i_1_n_1 ,\clk_cnt_4hz_reg[8]_i_1_n_2 ,\clk_cnt_4hz_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_4hz_reg[8]_i_1_n_4 ,\clk_cnt_4hz_reg[8]_i_1_n_5 ,\clk_cnt_4hz_reg[8]_i_1_n_6 ,\clk_cnt_4hz_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_4hz_reg_n_0_[8] ,\clk_cnt_4hz_reg_n_0_[7] ,\clk_cnt_4hz_reg_n_0_[6] ,\clk_cnt_4hz_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_4hz_reg[9] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_4hz_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_4hz_reg_n_0_[9] ),
        .R(clk_4hz));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_cnt_8hz[0]_i_1 
       (.I0(\clk_cnt_8hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_8hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_8hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_8hz_reg_n_0_[0] ),
        .O(clk_cnt_8hz));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \clk_cnt_8hz[0]_i_2 
       (.I0(\clk_cnt_8hz_reg_n_0_[13] ),
        .I1(\clk_cnt_8hz_reg_n_0_[14] ),
        .I2(\clk_cnt_8hz_reg_n_0_[12] ),
        .I3(\clk_cnt_8hz_reg_n_0_[11] ),
        .I4(\clk_cnt_8hz[0]_i_5_n_0 ),
        .O(\clk_cnt_8hz[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_cnt_8hz[0]_i_3 
       (.I0(\clk_cnt_8hz_reg_n_0_[6] ),
        .I1(\clk_cnt_8hz_reg_n_0_[5] ),
        .I2(\clk_cnt_8hz_reg_n_0_[4] ),
        .I3(\clk_cnt_8hz_reg_n_0_[3] ),
        .I4(\clk_cnt_8hz[0]_i_6_n_0 ),
        .O(\clk_cnt_8hz[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \clk_cnt_8hz[0]_i_4 
       (.I0(\clk_cnt_8hz[0]_i_7_n_0 ),
        .I1(\clk_cnt_8hz_reg_n_0_[19] ),
        .I2(\clk_cnt_8hz_reg_n_0_[20] ),
        .I3(\clk_cnt_8hz_reg_n_0_[22] ),
        .I4(\clk_cnt_8hz_reg_n_0_[21] ),
        .I5(\clk_cnt_8hz[0]_i_8_n_0 ),
        .O(\clk_cnt_8hz[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \clk_cnt_8hz[0]_i_5 
       (.I0(\clk_cnt_8hz_reg_n_0_[16] ),
        .I1(\clk_cnt_8hz_reg_n_0_[15] ),
        .I2(\clk_cnt_8hz_reg_n_0_[18] ),
        .I3(\clk_cnt_8hz_reg_n_0_[17] ),
        .O(\clk_cnt_8hz[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_cnt_8hz[0]_i_6 
       (.I0(\clk_cnt_8hz_reg_n_0_[8] ),
        .I1(\clk_cnt_8hz_reg_n_0_[7] ),
        .I2(\clk_cnt_8hz_reg_n_0_[9] ),
        .I3(\clk_cnt_8hz_reg_n_0_[10] ),
        .O(\clk_cnt_8hz[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_cnt_8hz[0]_i_7 
       (.I0(\clk_cnt_8hz_reg_n_0_[23] ),
        .I1(\clk_cnt_8hz_reg_n_0_[24] ),
        .I2(\clk_cnt_8hz_reg_n_0_[26] ),
        .I3(\clk_cnt_8hz_reg_n_0_[25] ),
        .O(\clk_cnt_8hz[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cnt_8hz[0]_i_8 
       (.I0(\clk_cnt_8hz_reg_n_0_[29] ),
        .I1(\clk_cnt_8hz_reg_n_0_[30] ),
        .I2(\clk_cnt_8hz_reg_n_0_[27] ),
        .I3(\clk_cnt_8hz_reg_n_0_[28] ),
        .I4(\clk_cnt_8hz_reg_n_0_[2] ),
        .I5(\clk_cnt_8hz_reg_n_0_[1] ),
        .O(\clk_cnt_8hz[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_cnt_8hz[30]_i_1 
       (.I0(\clk_cnt_8hz[0]_i_2_n_0 ),
        .I1(\clk_cnt_8hz[0]_i_3_n_0 ),
        .I2(\clk_cnt_8hz[0]_i_4_n_0 ),
        .I3(\clk_cnt_8hz_reg_n_0_[0] ),
        .O(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[0] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(clk_cnt_8hz),
        .Q(\clk_cnt_8hz_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[10] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[12]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[10] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[11] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[12]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[11] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[12] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[12]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[12] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[12]_i_1 
       (.CI(\clk_cnt_8hz_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[12]_i_1_n_0 ,\clk_cnt_8hz_reg[12]_i_1_n_1 ,\clk_cnt_8hz_reg[12]_i_1_n_2 ,\clk_cnt_8hz_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[12]_i_1_n_4 ,\clk_cnt_8hz_reg[12]_i_1_n_5 ,\clk_cnt_8hz_reg[12]_i_1_n_6 ,\clk_cnt_8hz_reg[12]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[12] ,\clk_cnt_8hz_reg_n_0_[11] ,\clk_cnt_8hz_reg_n_0_[10] ,\clk_cnt_8hz_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[13] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[16]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[13] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[14] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[16]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[14] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[15] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[16]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[15] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[16] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[16]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[16] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[16]_i_1 
       (.CI(\clk_cnt_8hz_reg[12]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[16]_i_1_n_0 ,\clk_cnt_8hz_reg[16]_i_1_n_1 ,\clk_cnt_8hz_reg[16]_i_1_n_2 ,\clk_cnt_8hz_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[16]_i_1_n_4 ,\clk_cnt_8hz_reg[16]_i_1_n_5 ,\clk_cnt_8hz_reg[16]_i_1_n_6 ,\clk_cnt_8hz_reg[16]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[16] ,\clk_cnt_8hz_reg_n_0_[15] ,\clk_cnt_8hz_reg_n_0_[14] ,\clk_cnt_8hz_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[17] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[20]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[17] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[18] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[20]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[18] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[19] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[20]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[19] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[1] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[1] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[20] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[20]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[20] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[20]_i_1 
       (.CI(\clk_cnt_8hz_reg[16]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[20]_i_1_n_0 ,\clk_cnt_8hz_reg[20]_i_1_n_1 ,\clk_cnt_8hz_reg[20]_i_1_n_2 ,\clk_cnt_8hz_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[20]_i_1_n_4 ,\clk_cnt_8hz_reg[20]_i_1_n_5 ,\clk_cnt_8hz_reg[20]_i_1_n_6 ,\clk_cnt_8hz_reg[20]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[20] ,\clk_cnt_8hz_reg_n_0_[19] ,\clk_cnt_8hz_reg_n_0_[18] ,\clk_cnt_8hz_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[21] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[24]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[21] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[22] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[24]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[22] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[23] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[24]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[23] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[24] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[24]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[24] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[24]_i_1 
       (.CI(\clk_cnt_8hz_reg[20]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[24]_i_1_n_0 ,\clk_cnt_8hz_reg[24]_i_1_n_1 ,\clk_cnt_8hz_reg[24]_i_1_n_2 ,\clk_cnt_8hz_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[24]_i_1_n_4 ,\clk_cnt_8hz_reg[24]_i_1_n_5 ,\clk_cnt_8hz_reg[24]_i_1_n_6 ,\clk_cnt_8hz_reg[24]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[24] ,\clk_cnt_8hz_reg_n_0_[23] ,\clk_cnt_8hz_reg_n_0_[22] ,\clk_cnt_8hz_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[25] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[28]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[25] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[26] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[28]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[26] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[27] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[28]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[27] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[28] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[28]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[28] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[28]_i_1 
       (.CI(\clk_cnt_8hz_reg[24]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[28]_i_1_n_0 ,\clk_cnt_8hz_reg[28]_i_1_n_1 ,\clk_cnt_8hz_reg[28]_i_1_n_2 ,\clk_cnt_8hz_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[28]_i_1_n_4 ,\clk_cnt_8hz_reg[28]_i_1_n_5 ,\clk_cnt_8hz_reg[28]_i_1_n_6 ,\clk_cnt_8hz_reg[28]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[28] ,\clk_cnt_8hz_reg_n_0_[27] ,\clk_cnt_8hz_reg_n_0_[26] ,\clk_cnt_8hz_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[29] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[30]_i_2_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[29] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[2] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[2] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[30] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[30]_i_2_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[30] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[30]_i_2 
       (.CI(\clk_cnt_8hz_reg[28]_i_1_n_0 ),
        .CO(\clk_cnt_8hz_reg[30]_i_2_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[30]_i_2_n_6 ,\clk_cnt_8hz_reg[30]_i_2_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_8hz_reg_n_0_[30] ,\clk_cnt_8hz_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[3] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[3] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[4] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[4] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\clk_cnt_8hz_reg[4]_i_1_n_0 ,\clk_cnt_8hz_reg[4]_i_1_n_1 ,\clk_cnt_8hz_reg[4]_i_1_n_2 ,\clk_cnt_8hz_reg[4]_i_1_n_3 }),
        .CYINIT(\clk_cnt_8hz_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[4]_i_1_n_4 ,\clk_cnt_8hz_reg[4]_i_1_n_5 ,\clk_cnt_8hz_reg[4]_i_1_n_6 ,\clk_cnt_8hz_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[4] ,\clk_cnt_8hz_reg_n_0_[3] ,\clk_cnt_8hz_reg_n_0_[2] ,\clk_cnt_8hz_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[5] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[5] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[6] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_8hz_reg_n_0_[6] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[7] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_8hz_reg_n_0_[7] ),
        .R(clk_8hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[8] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_8hz_reg_n_0_[8] ),
        .R(clk_8hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_cnt_8hz_reg[8]_i_1 
       (.CI(\clk_cnt_8hz_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_8hz_reg[8]_i_1_n_0 ,\clk_cnt_8hz_reg[8]_i_1_n_1 ,\clk_cnt_8hz_reg[8]_i_1_n_2 ,\clk_cnt_8hz_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_cnt_8hz_reg[8]_i_1_n_4 ,\clk_cnt_8hz_reg[8]_i_1_n_5 ,\clk_cnt_8hz_reg[8]_i_1_n_6 ,\clk_cnt_8hz_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_8hz_reg_n_0_[8] ,\clk_cnt_8hz_reg_n_0_[7] ,\clk_cnt_8hz_reg_n_0_[6] ,\clk_cnt_8hz_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_8hz_reg[9] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .D(\clk_cnt_8hz_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_8hz_reg_n_0_[9] ),
        .R(clk_8hz));
  (* IMPORTED_FROM = "d:/Course/1.2022fall/ECE524/fa22-ece524-final-project-hongshen978/hardware/project/project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_div_inst
       (.clk_in1(CLK_I_IBUF),
        .clk_out1(pxl_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \direction[1]_i_2 
       (.I0(game_active),
        .O(\direction[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \direction_reg[0] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(DBB_n_2),
        .Q(direction[0]));
  FDCE #(
    .INIT(1'b0)) 
    \direction_reg[1] 
       (.C(CLK_I_IBUF),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(DBB_n_1),
        .Q(direction[1]));
  LUT4 #(
    .INIT(16'h7F40)) 
    \food_x[0]_C_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_x_reg[0]_C_n_0 ),
        .O(\food_x[0]_C_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[0]_P_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h69FFFFFF69000000)) 
    \food_x[1]_C_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x[4]_P_i_3_n_0 ),
        .I2(\food_x_reg[4]_P_i_2_n_6 ),
        .I3(food_x13_out),
        .I4(food_x1),
        .I5(\food_x_reg[1]_C_n_0 ),
        .O(\food_x[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \food_x[1]_P_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x[4]_P_i_3_n_0 ),
        .I2(\food_x_reg[4]_P_i_2_n_6 ),
        .O(\food_x[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7E81FFFF7E810000)) 
    \food_x[2]_C_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x_reg[4]_P_i_2_n_6 ),
        .I2(\food_x[4]_P_i_3_n_0 ),
        .I3(\food_x_reg[4]_P_i_2_n_5 ),
        .I4(\food_y[5]_P_i_1_n_0 ),
        .I5(\food_x_reg[2]_C_n_0 ),
        .O(\food_x[2]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \food_x[2]_P_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x_reg[4]_P_i_2_n_6 ),
        .I2(\food_x[4]_P_i_3_n_0 ),
        .I3(\food_x_reg[4]_P_i_2_n_5 ),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \food_x[3]_C_i_1 
       (.I0(p_2_in[3]),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_x_reg[3]_C_n_0 ),
        .O(\food_x[3]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \food_x[3]_P_i_1 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x_reg[4]_P_i_2_n_5 ),
        .I2(\food_x_reg[4]_P_i_2_n_6 ),
        .I3(\food_x[4]_P_i_3_n_0 ),
        .I4(\food_x_reg[4]_P_i_2_n_4 ),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \food_x[4]_C_i_1 
       (.I0(p_2_in[4]),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_x_reg[4]_C_n_0 ),
        .O(\food_x[4]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h65A5A5A5A5A5A5A6)) 
    \food_x[4]_P_i_1 
       (.I0(\food_x_reg[5]_P_i_4_n_7 ),
        .I1(\food_x_reg[4]_P_i_2_n_4 ),
        .I2(\food_x[4]_P_i_3_n_0 ),
        .I3(\food_x_reg[4]_P_i_2_n_6 ),
        .I4(\food_x_reg[4]_P_i_2_n_5 ),
        .I5(\food_x_reg[4]_P_i_2_n_7 ),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_10 
       (.I0(\food_x_reg[4]_P_i_27_n_5 ),
        .I1(\food_x[4]_P_i_28_n_0 ),
        .I2(\food_x_reg[4]_P_i_29_n_6 ),
        .I3(\food_x_reg[4]_P_i_30_n_5 ),
        .I4(\food_x_reg[4]_P_i_31_n_4 ),
        .O(\food_x[4]_P_i_10_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_100 
       (.I0(random_x[13]),
        .I1(random_x[15]),
        .I2(random_x[11]),
        .O(\food_x[4]_P_i_100_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_101 
       (.I0(random_x[17]),
        .I1(random_x[19]),
        .I2(random_x[15]),
        .I3(\food_x[4]_P_i_97_n_0 ),
        .O(\food_x[4]_P_i_101_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_102 
       (.I0(random_x[16]),
        .I1(random_x[18]),
        .I2(random_x[14]),
        .I3(\food_x[4]_P_i_98_n_0 ),
        .O(\food_x[4]_P_i_102_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_103 
       (.I0(random_x[15]),
        .I1(random_x[17]),
        .I2(random_x[13]),
        .I3(\food_x[4]_P_i_99_n_0 ),
        .O(\food_x[4]_P_i_103_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_104 
       (.I0(random_x[14]),
        .I1(random_x[16]),
        .I2(random_x[12]),
        .I3(\food_x[4]_P_i_100_n_0 ),
        .O(\food_x[4]_P_i_104_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_106 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[15]),
        .O(\food_x[4]_P_i_106_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_107 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[14]),
        .O(\food_x[4]_P_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \food_x[4]_P_i_108 
       (.I0(random_x[16]),
        .I1(random_x[12]),
        .I2(random_x[10]),
        .I3(random_x[11]),
        .I4(random_x[13]),
        .I5(random_x[17]),
        .O(\food_x[4]_P_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_109 
       (.I0(\food_x[4]_P_i_106_n_0 ),
        .I1(random_x[10]),
        .I2(random_x[12]),
        .I3(random_x[16]),
        .O(\food_x[4]_P_i_109_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_11 
       (.I0(\food_x_reg[4]_P_i_27_n_6 ),
        .I1(\food_x[4]_P_i_32_n_0 ),
        .I2(\food_x_reg[4]_P_i_29_n_7 ),
        .I3(\food_x_reg[4]_P_i_30_n_6 ),
        .I4(\food_x_reg[4]_P_i_31_n_5 ),
        .O(\food_x[4]_P_i_11_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_110 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[15]),
        .I3(\food_x[4]_P_i_107_n_0 ),
        .O(\food_x[4]_P_i_110_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \food_x[4]_P_i_112 
       (.I0(random_x[2]),
        .I1(\food_x_reg[4]_P_i_127_n_5 ),
        .I2(\food_x_reg[4]_P_i_123_n_6 ),
        .I3(\food_x_reg[4]_P_i_125_n_5 ),
        .I4(\food_x[4]_P_i_168_n_0 ),
        .O(\food_x[4]_P_i_112_n_0 ));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    \food_x[4]_P_i_113 
       (.I0(\food_x[4]_P_i_169_n_0 ),
        .I1(\food_x_reg[4]_P_i_125_n_6 ),
        .I2(\food_x_reg[4]_P_i_123_n_7 ),
        .I3(\food_x_reg[4]_P_i_127_n_6 ),
        .I4(\food_x_reg[4]_P_i_170_n_7 ),
        .O(\food_x[4]_P_i_113_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_114 
       (.I0(\food_x_reg[4]_P_i_125_n_7 ),
        .I1(\food_x[4]_P_i_171_n_0 ),
        .I2(\food_x_reg[4]_P_i_172_n_4 ),
        .I3(random_x[0]),
        .I4(\food_x_reg[4]_P_i_127_n_7 ),
        .O(\food_x[4]_P_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hF88080F880F8F880)) 
    \food_x[4]_P_i_115 
       (.I0(\food_x_reg[4]_P_i_173_n_4 ),
        .I1(\food_x_reg[4]_P_i_172_n_5 ),
        .I2(\food_x_reg[4]_P_i_174_n_4 ),
        .I3(random_x[0]),
        .I4(\food_x_reg[4]_P_i_127_n_7 ),
        .I5(\food_x_reg[4]_P_i_172_n_4 ),
        .O(\food_x[4]_P_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_116 
       (.I0(\food_x[4]_P_i_112_n_0 ),
        .I1(\food_x_reg[4]_P_i_125_n_4 ),
        .I2(\food_x[4]_P_i_126_n_0 ),
        .I3(\food_x_reg[4]_P_i_123_n_5 ),
        .I4(\food_x_reg[4]_P_i_127_n_4 ),
        .I5(\food_x_reg[4]_P_i_121_n_7 ),
        .O(\food_x[4]_P_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_117 
       (.I0(\food_x[4]_P_i_113_n_0 ),
        .I1(\food_x_reg[4]_P_i_125_n_5 ),
        .I2(\food_x[4]_P_i_168_n_0 ),
        .I3(random_x[2]),
        .I4(\food_x_reg[4]_P_i_127_n_5 ),
        .I5(\food_x_reg[4]_P_i_123_n_6 ),
        .O(\food_x[4]_P_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \food_x[4]_P_i_118 
       (.I0(\food_x[4]_P_i_114_n_0 ),
        .I1(\food_x_reg[4]_P_i_125_n_6 ),
        .I2(\food_x[4]_P_i_169_n_0 ),
        .I3(\food_x_reg[4]_P_i_123_n_7 ),
        .I4(\food_x_reg[4]_P_i_127_n_6 ),
        .I5(\food_x_reg[4]_P_i_170_n_7 ),
        .O(\food_x[4]_P_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_119 
       (.I0(\food_x[4]_P_i_115_n_0 ),
        .I1(\food_x_reg[4]_P_i_125_n_7 ),
        .I2(\food_x[4]_P_i_171_n_0 ),
        .I3(\food_x_reg[4]_P_i_172_n_4 ),
        .I4(random_x[0]),
        .I5(\food_x_reg[4]_P_i_127_n_7 ),
        .O(\food_x[4]_P_i_119_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \food_x[4]_P_i_12 
       (.I0(\food_x_reg[4]_P_i_33_n_4 ),
        .I1(\food_x_reg[4]_P_i_30_n_7 ),
        .I2(\food_x_reg[4]_P_i_31_n_6 ),
        .I3(\food_x_reg[4]_P_i_27_n_7 ),
        .I4(\food_x[4]_P_i_34_n_0 ),
        .O(\food_x[4]_P_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_120 
       (.I0(\food_x_reg[4]_P_i_53_n_5 ),
        .I1(\food_x_reg[4]_P_i_49_n_7 ),
        .I2(\food_x_reg[4]_P_i_56_n_4 ),
        .O(\food_x[4]_P_i_120_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_122 
       (.I0(\food_x_reg[4]_P_i_53_n_6 ),
        .I1(\food_x_reg[4]_P_i_121_n_4 ),
        .I2(\food_x_reg[4]_P_i_56_n_5 ),
        .O(\food_x[4]_P_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_124 
       (.I0(\food_x_reg[4]_P_i_53_n_7 ),
        .I1(\food_x_reg[4]_P_i_121_n_5 ),
        .I2(\food_x_reg[4]_P_i_56_n_6 ),
        .O(\food_x[4]_P_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_126 
       (.I0(\food_x_reg[4]_P_i_123_n_4 ),
        .I1(\food_x_reg[4]_P_i_121_n_6 ),
        .I2(\food_x_reg[4]_P_i_56_n_7 ),
        .O(\food_x[4]_P_i_126_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_128 
       (.I0(random_x[9]),
        .I1(random_x[3]),
        .I2(random_x[5]),
        .O(\food_x[4]_P_i_128_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_129 
       (.I0(random_x[8]),
        .I1(random_x[2]),
        .I2(random_x[4]),
        .O(\food_x[4]_P_i_129_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_13 
       (.I0(\food_x_reg[4]_P_i_35_n_4 ),
        .I1(\food_x[4]_P_i_36_n_0 ),
        .I2(\food_x_reg[4]_P_i_33_n_5 ),
        .I3(\food_x_reg[4]_P_i_37_n_4 ),
        .I4(\food_x_reg[4]_P_i_31_n_7 ),
        .O(\food_x[4]_P_i_13_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_130 
       (.I0(random_x[7]),
        .I1(random_x[3]),
        .I2(random_x[1]),
        .O(\food_x[4]_P_i_130_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_131 
       (.I0(random_x[7]),
        .I1(random_x[1]),
        .I2(random_x[3]),
        .O(\food_x[4]_P_i_131_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_132 
       (.I0(random_x[10]),
        .I1(random_x[6]),
        .I2(random_x[4]),
        .I3(\food_x[4]_P_i_128_n_0 ),
        .O(\food_x[4]_P_i_132_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_133 
       (.I0(random_x[9]),
        .I1(random_x[3]),
        .I2(random_x[5]),
        .I3(\food_x[4]_P_i_129_n_0 ),
        .O(\food_x[4]_P_i_133_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_134 
       (.I0(random_x[8]),
        .I1(random_x[2]),
        .I2(random_x[4]),
        .I3(\food_x[4]_P_i_130_n_0 ),
        .O(\food_x[4]_P_i_134_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \food_x[4]_P_i_135 
       (.I0(random_x[7]),
        .I1(random_x[3]),
        .I2(random_x[1]),
        .I3(random_x[2]),
        .I4(random_x[0]),
        .O(\food_x[4]_P_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_136 
       (.I0(random_x[8]),
        .I1(random_x[11]),
        .O(\food_x[4]_P_i_136_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_137 
       (.I0(random_x[7]),
        .I1(random_x[10]),
        .O(\food_x[4]_P_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_138 
       (.I0(random_x[6]),
        .I1(random_x[9]),
        .O(\food_x[4]_P_i_138_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_139 
       (.I0(random_x[5]),
        .I1(random_x[8]),
        .O(\food_x[4]_P_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_14 
       (.I0(\food_x[4]_P_i_10_n_0 ),
        .I1(\food_x_reg[4]_P_i_27_n_4 ),
        .I2(\food_x[4]_P_i_38_n_0 ),
        .I3(\food_x_reg[4]_P_i_29_n_5 ),
        .I4(\food_x_reg[4]_P_i_30_n_4 ),
        .I5(\food_x_reg[4]_P_i_39_n_7 ),
        .O(\food_x[4]_P_i_14_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_140 
       (.I0(random_x[16]),
        .I1(random_x[23]),
        .I2(random_x[21]),
        .O(\food_x[4]_P_i_140_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_141 
       (.I0(random_x[15]),
        .I1(random_x[20]),
        .I2(random_x[22]),
        .O(\food_x[4]_P_i_141_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_142 
       (.I0(random_x[14]),
        .I1(random_x[21]),
        .I2(random_x[19]),
        .O(\food_x[4]_P_i_142_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_143 
       (.I0(random_x[13]),
        .I1(random_x[20]),
        .I2(random_x[18]),
        .O(\food_x[4]_P_i_143_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_144 
       (.I0(random_x[17]),
        .I1(random_x[24]),
        .I2(random_x[22]),
        .I3(\food_x[4]_P_i_140_n_0 ),
        .O(\food_x[4]_P_i_144_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_145 
       (.I0(random_x[16]),
        .I1(random_x[23]),
        .I2(random_x[21]),
        .I3(\food_x[4]_P_i_141_n_0 ),
        .O(\food_x[4]_P_i_145_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_146 
       (.I0(random_x[15]),
        .I1(random_x[20]),
        .I2(random_x[22]),
        .I3(\food_x[4]_P_i_142_n_0 ),
        .O(\food_x[4]_P_i_146_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_147 
       (.I0(random_x[14]),
        .I1(random_x[21]),
        .I2(random_x[19]),
        .I3(\food_x[4]_P_i_143_n_0 ),
        .O(\food_x[4]_P_i_147_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_148 
       (.I0(random_x[12]),
        .I1(random_x[14]),
        .I2(random_x[10]),
        .O(\food_x[4]_P_i_148_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_149 
       (.I0(random_x[11]),
        .I1(random_x[13]),
        .I2(random_x[9]),
        .O(\food_x[4]_P_i_149_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_15 
       (.I0(\food_x[4]_P_i_11_n_0 ),
        .I1(\food_x_reg[4]_P_i_27_n_5 ),
        .I2(\food_x[4]_P_i_28_n_0 ),
        .I3(\food_x_reg[4]_P_i_29_n_6 ),
        .I4(\food_x_reg[4]_P_i_30_n_5 ),
        .I5(\food_x_reg[4]_P_i_31_n_4 ),
        .O(\food_x[4]_P_i_15_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_150 
       (.I0(random_x[10]),
        .I1(random_x[12]),
        .I2(random_x[8]),
        .O(\food_x[4]_P_i_150_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_151 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[7]),
        .O(\food_x[4]_P_i_151_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_152 
       (.I0(random_x[13]),
        .I1(random_x[15]),
        .I2(random_x[11]),
        .I3(\food_x[4]_P_i_148_n_0 ),
        .O(\food_x[4]_P_i_152_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_153 
       (.I0(random_x[12]),
        .I1(random_x[14]),
        .I2(random_x[10]),
        .I3(\food_x[4]_P_i_149_n_0 ),
        .O(\food_x[4]_P_i_153_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_154 
       (.I0(random_x[11]),
        .I1(random_x[13]),
        .I2(random_x[9]),
        .I3(\food_x[4]_P_i_150_n_0 ),
        .O(\food_x[4]_P_i_154_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_155 
       (.I0(random_x[10]),
        .I1(random_x[12]),
        .I2(random_x[8]),
        .I3(\food_x[4]_P_i_151_n_0 ),
        .O(\food_x[4]_P_i_155_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \food_x[4]_P_i_156 
       (.I0(random_x[19]),
        .I1(random_x[23]),
        .I2(random_x[21]),
        .O(\food_x[4]_P_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \food_x[4]_P_i_157 
       (.I0(random_x[20]),
        .I1(random_x[24]),
        .I2(random_x[22]),
        .I3(random_x[25]),
        .I4(random_x[23]),
        .I5(random_x[21]),
        .O(\food_x[4]_P_i_157_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_158 
       (.I0(\food_x[4]_P_i_156_n_0 ),
        .I1(random_x[22]),
        .I2(random_x[20]),
        .I3(random_x[24]),
        .O(\food_x[4]_P_i_158_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_16 
       (.I0(\food_x[4]_P_i_12_n_0 ),
        .I1(\food_x_reg[4]_P_i_27_n_6 ),
        .I2(\food_x[4]_P_i_32_n_0 ),
        .I3(\food_x_reg[4]_P_i_29_n_7 ),
        .I4(\food_x_reg[4]_P_i_30_n_6 ),
        .I5(\food_x_reg[4]_P_i_31_n_5 ),
        .O(\food_x[4]_P_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h80F8F880)) 
    \food_x[4]_P_i_160 
       (.I0(\food_x_reg[4]_P_i_173_n_5 ),
        .I1(\food_x_reg[4]_P_i_172_n_6 ),
        .I2(\food_x_reg[4]_P_i_174_n_5 ),
        .I3(\food_x_reg[4]_P_i_172_n_5 ),
        .I4(\food_x_reg[4]_P_i_173_n_4 ),
        .O(\food_x[4]_P_i_160_n_0 ));
  LUT5 #(
    .INIT(32'h80F8F880)) 
    \food_x[4]_P_i_161 
       (.I0(random_x[0]),
        .I1(\food_x_reg[4]_P_i_173_n_6 ),
        .I2(\food_x_reg[4]_P_i_174_n_6 ),
        .I3(\food_x_reg[4]_P_i_172_n_6 ),
        .I4(\food_x_reg[4]_P_i_173_n_5 ),
        .O(\food_x[4]_P_i_161_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \food_x[4]_P_i_162 
       (.I0(\food_x_reg[4]_P_i_174_n_7 ),
        .I1(\food_x_reg[4]_P_i_173_n_6 ),
        .I2(random_x[0]),
        .O(\food_x[4]_P_i_162_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_163 
       (.I0(\food_x_reg[4]_P_i_173_n_7 ),
        .I1(\food_x_reg[4]_P_i_206_n_4 ),
        .O(\food_x[4]_P_i_163_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \food_x[4]_P_i_164 
       (.I0(\food_x[4]_P_i_160_n_0 ),
        .I1(\food_x_reg[4]_P_i_174_n_4 ),
        .I2(\food_x[4]_P_i_207_n_0 ),
        .I3(\food_x_reg[4]_P_i_173_n_4 ),
        .I4(\food_x_reg[4]_P_i_172_n_5 ),
        .O(\food_x[4]_P_i_164_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \food_x[4]_P_i_165 
       (.I0(\food_x[4]_P_i_161_n_0 ),
        .I1(\food_x_reg[4]_P_i_174_n_5 ),
        .I2(\food_x_reg[4]_P_i_172_n_5 ),
        .I3(\food_x_reg[4]_P_i_173_n_4 ),
        .I4(\food_x_reg[4]_P_i_173_n_5 ),
        .I5(\food_x_reg[4]_P_i_172_n_6 ),
        .O(\food_x[4]_P_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \food_x[4]_P_i_166 
       (.I0(\food_x[4]_P_i_162_n_0 ),
        .I1(\food_x_reg[4]_P_i_174_n_6 ),
        .I2(\food_x_reg[4]_P_i_172_n_6 ),
        .I3(\food_x_reg[4]_P_i_173_n_5 ),
        .I4(random_x[0]),
        .I5(\food_x_reg[4]_P_i_173_n_6 ),
        .O(\food_x[4]_P_i_166_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_167 
       (.I0(\food_x_reg[4]_P_i_174_n_7 ),
        .I1(\food_x_reg[4]_P_i_173_n_6 ),
        .I2(random_x[0]),
        .I3(\food_x[4]_P_i_163_n_0 ),
        .O(\food_x[4]_P_i_167_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_168 
       (.I0(\food_x_reg[4]_P_i_123_n_5 ),
        .I1(\food_x_reg[4]_P_i_121_n_7 ),
        .I2(\food_x_reg[4]_P_i_127_n_4 ),
        .O(\food_x[4]_P_i_168_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \food_x[4]_P_i_169 
       (.I0(\food_x_reg[4]_P_i_123_n_6 ),
        .I1(\food_x_reg[4]_P_i_127_n_5 ),
        .I2(random_x[2]),
        .O(\food_x[4]_P_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_17 
       (.I0(\food_x[4]_P_i_13_n_0 ),
        .I1(\food_x_reg[4]_P_i_27_n_7 ),
        .I2(\food_x[4]_P_i_34_n_0 ),
        .I3(\food_x_reg[4]_P_i_33_n_4 ),
        .I4(\food_x_reg[4]_P_i_30_n_7 ),
        .I5(\food_x_reg[4]_P_i_31_n_6 ),
        .O(\food_x[4]_P_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_171 
       (.I0(\food_x_reg[4]_P_i_123_n_7 ),
        .I1(\food_x_reg[4]_P_i_170_n_7 ),
        .I2(\food_x_reg[4]_P_i_127_n_6 ),
        .O(\food_x[4]_P_i_171_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_175 
       (.I0(random_x[0]),
        .I1(random_x[2]),
        .I2(random_x[6]),
        .O(\food_x[4]_P_i_175_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_176 
       (.I0(random_x[5]),
        .I1(random_x[1]),
        .O(\food_x[4]_P_i_176_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_177 
       (.I0(random_x[4]),
        .I1(random_x[0]),
        .O(\food_x[4]_P_i_177_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_178 
       (.I0(random_x[4]),
        .I1(random_x[7]),
        .O(\food_x[4]_P_i_178_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_179 
       (.I0(random_x[3]),
        .I1(random_x[6]),
        .O(\food_x[4]_P_i_179_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_180 
       (.I0(random_x[2]),
        .I1(random_x[5]),
        .O(\food_x[4]_P_i_180_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_181 
       (.I0(random_x[1]),
        .I1(random_x[4]),
        .O(\food_x[4]_P_i_181_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_182 
       (.I0(random_x[12]),
        .I1(random_x[19]),
        .I2(random_x[17]),
        .O(\food_x[4]_P_i_182_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_183 
       (.I0(random_x[11]),
        .I1(random_x[18]),
        .I2(random_x[16]),
        .O(\food_x[4]_P_i_183_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_184 
       (.I0(random_x[10]),
        .I1(random_x[17]),
        .I2(random_x[15]),
        .O(\food_x[4]_P_i_184_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_185 
       (.I0(random_x[9]),
        .I1(random_x[16]),
        .I2(random_x[14]),
        .O(\food_x[4]_P_i_185_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_186 
       (.I0(random_x[13]),
        .I1(random_x[20]),
        .I2(random_x[18]),
        .I3(\food_x[4]_P_i_182_n_0 ),
        .O(\food_x[4]_P_i_186_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_187 
       (.I0(random_x[12]),
        .I1(random_x[19]),
        .I2(random_x[17]),
        .I3(\food_x[4]_P_i_183_n_0 ),
        .O(\food_x[4]_P_i_187_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_188 
       (.I0(random_x[11]),
        .I1(random_x[18]),
        .I2(random_x[16]),
        .I3(\food_x[4]_P_i_184_n_0 ),
        .O(\food_x[4]_P_i_188_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_189 
       (.I0(random_x[10]),
        .I1(random_x[17]),
        .I2(random_x[15]),
        .I3(\food_x[4]_P_i_185_n_0 ),
        .O(\food_x[4]_P_i_189_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \food_x[4]_P_i_19 
       (.I0(\food_x_reg[4]_P_i_33_n_6 ),
        .I1(\food_x_reg[4]_P_i_37_n_5 ),
        .I2(\food_x_reg[4]_P_i_49_n_4 ),
        .I3(\food_x_reg[4]_P_i_35_n_5 ),
        .I4(\food_x[4]_P_i_50_n_0 ),
        .O(\food_x[4]_P_i_19_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_190 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[6]),
        .O(\food_x[4]_P_i_190_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_191 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[5]),
        .O(\food_x[4]_P_i_191_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_192 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[4]),
        .O(\food_x[4]_P_i_192_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \food_x[4]_P_i_193 
       (.I0(random_x[3]),
        .I1(random_x[7]),
        .I2(random_x[5]),
        .O(\food_x[4]_P_i_193_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_194 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[7]),
        .I3(\food_x[4]_P_i_190_n_0 ),
        .O(\food_x[4]_P_i_194_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_195 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[6]),
        .I3(\food_x[4]_P_i_191_n_0 ),
        .O(\food_x[4]_P_i_195_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_196 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[5]),
        .I3(\food_x[4]_P_i_192_n_0 ),
        .O(\food_x[4]_P_i_196_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_197 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[4]),
        .I3(\food_x[4]_P_i_193_n_0 ),
        .O(\food_x[4]_P_i_197_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_198 
       (.I0(\food_x_reg[4]_P_i_214_n_4 ),
        .I1(\food_x_reg[4]_P_i_206_n_5 ),
        .O(\food_x[4]_P_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_199 
       (.I0(\food_x_reg[4]_P_i_214_n_5 ),
        .I1(\food_x_reg[4]_P_i_206_n_6 ),
        .O(\food_x[4]_P_i_199_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_20 
       (.I0(\food_x_reg[4]_P_i_35_n_6 ),
        .I1(\food_x[4]_P_i_51_n_0 ),
        .I2(\food_x_reg[4]_P_i_33_n_7 ),
        .I3(\food_x_reg[4]_P_i_37_n_6 ),
        .I4(\food_x_reg[4]_P_i_49_n_5 ),
        .O(\food_x[4]_P_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_200 
       (.I0(\food_x_reg[4]_P_i_214_n_6 ),
        .I1(\food_x_reg[4]_P_i_206_n_7 ),
        .O(\food_x[4]_P_i_200_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_201 
       (.I0(random_x[0]),
        .I1(\food_x_reg[4]_P_i_231_n_4 ),
        .O(\food_x[4]_P_i_201_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \food_x[4]_P_i_202 
       (.I0(\food_x_reg[4]_P_i_173_n_7 ),
        .I1(\food_x_reg[4]_P_i_206_n_4 ),
        .I2(\food_x_reg[4]_P_i_206_n_5 ),
        .I3(\food_x_reg[4]_P_i_214_n_4 ),
        .O(\food_x[4]_P_i_202_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \food_x[4]_P_i_203 
       (.I0(\food_x_reg[4]_P_i_206_n_6 ),
        .I1(\food_x_reg[4]_P_i_214_n_5 ),
        .I2(\food_x_reg[4]_P_i_206_n_5 ),
        .I3(\food_x_reg[4]_P_i_214_n_4 ),
        .O(\food_x[4]_P_i_203_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \food_x[4]_P_i_204 
       (.I0(\food_x_reg[4]_P_i_206_n_7 ),
        .I1(\food_x_reg[4]_P_i_214_n_6 ),
        .I2(\food_x_reg[4]_P_i_206_n_6 ),
        .I3(\food_x_reg[4]_P_i_214_n_5 ),
        .O(\food_x[4]_P_i_204_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \food_x[4]_P_i_205 
       (.I0(\food_x_reg[4]_P_i_231_n_4 ),
        .I1(random_x[0]),
        .I2(\food_x_reg[4]_P_i_206_n_7 ),
        .I3(\food_x_reg[4]_P_i_214_n_6 ),
        .O(\food_x[4]_P_i_205_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_207 
       (.I0(\food_x_reg[4]_P_i_172_n_4 ),
        .I1(\food_x_reg[4]_P_i_127_n_7 ),
        .I2(random_x[0]),
        .O(\food_x[4]_P_i_207_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_208 
       (.I0(random_x[4]),
        .I1(random_x[2]),
        .O(\food_x[4]_P_i_208_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_209 
       (.I0(random_x[3]),
        .I1(random_x[1]),
        .O(\food_x[4]_P_i_209_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_21 
       (.I0(\food_x_reg[4]_P_i_35_n_7 ),
        .I1(\food_x[4]_P_i_52_n_0 ),
        .I2(\food_x_reg[4]_P_i_53_n_4 ),
        .I3(\food_x_reg[4]_P_i_37_n_7 ),
        .I4(\food_x_reg[4]_P_i_49_n_6 ),
        .O(\food_x[4]_P_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_210 
       (.I0(random_x[2]),
        .I1(random_x[0]),
        .O(\food_x[4]_P_i_210_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_211 
       (.I0(random_x[0]),
        .I1(random_x[3]),
        .O(\food_x[4]_P_i_211_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[4]_P_i_212 
       (.I0(random_x[2]),
        .O(\food_x[4]_P_i_212_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[4]_P_i_213 
       (.I0(random_x[1]),
        .O(\food_x[4]_P_i_213_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_215 
       (.I0(random_x[4]),
        .I1(random_x[6]),
        .I2(random_x[2]),
        .O(\food_x[4]_P_i_215_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_216 
       (.I0(random_x[5]),
        .I1(random_x[3]),
        .I2(random_x[1]),
        .O(\food_x[4]_P_i_216_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_217 
       (.I0(random_x[4]),
        .I1(random_x[2]),
        .I2(random_x[0]),
        .O(\food_x[4]_P_i_217_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \food_x[4]_P_i_218 
       (.I0(random_x[1]),
        .I1(random_x[3]),
        .O(\food_x[4]_P_i_218_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_219 
       (.I0(random_x[3]),
        .I1(random_x[7]),
        .I2(random_x[5]),
        .I3(\food_x[4]_P_i_215_n_0 ),
        .O(\food_x[4]_P_i_219_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_22 
       (.I0(\food_x_reg[4]_P_i_54_n_4 ),
        .I1(\food_x[4]_P_i_55_n_0 ),
        .I2(\food_x_reg[4]_P_i_53_n_5 ),
        .I3(\food_x_reg[4]_P_i_56_n_4 ),
        .I4(\food_x_reg[4]_P_i_49_n_7 ),
        .O(\food_x[4]_P_i_22_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_220 
       (.I0(random_x[4]),
        .I1(random_x[6]),
        .I2(random_x[2]),
        .I3(\food_x[4]_P_i_216_n_0 ),
        .O(\food_x[4]_P_i_220_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_221 
       (.I0(random_x[5]),
        .I1(random_x[3]),
        .I2(random_x[1]),
        .I3(\food_x[4]_P_i_217_n_0 ),
        .O(\food_x[4]_P_i_221_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_222 
       (.I0(random_x[4]),
        .I1(random_x[2]),
        .I2(random_x[0]),
        .I3(\food_x[4]_P_i_218_n_0 ),
        .O(\food_x[4]_P_i_222_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_223 
       (.I0(random_x[8]),
        .I1(random_x[15]),
        .I2(random_x[13]),
        .O(\food_x[4]_P_i_223_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_224 
       (.I0(random_x[7]),
        .I1(random_x[14]),
        .I2(random_x[12]),
        .O(\food_x[4]_P_i_224_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_225 
       (.I0(random_x[6]),
        .I1(random_x[13]),
        .I2(random_x[11]),
        .O(\food_x[4]_P_i_225_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_226 
       (.I0(random_x[5]),
        .I1(random_x[12]),
        .I2(random_x[10]),
        .O(\food_x[4]_P_i_226_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_227 
       (.I0(random_x[9]),
        .I1(random_x[16]),
        .I2(random_x[14]),
        .I3(\food_x[4]_P_i_223_n_0 ),
        .O(\food_x[4]_P_i_227_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_228 
       (.I0(random_x[8]),
        .I1(random_x[15]),
        .I2(random_x[13]),
        .I3(\food_x[4]_P_i_224_n_0 ),
        .O(\food_x[4]_P_i_228_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_229 
       (.I0(random_x[7]),
        .I1(random_x[14]),
        .I2(random_x[12]),
        .I3(\food_x[4]_P_i_225_n_0 ),
        .O(\food_x[4]_P_i_229_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_23 
       (.I0(\food_x[4]_P_i_19_n_0 ),
        .I1(\food_x_reg[4]_P_i_35_n_4 ),
        .I2(\food_x[4]_P_i_36_n_0 ),
        .I3(\food_x_reg[4]_P_i_33_n_5 ),
        .I4(\food_x_reg[4]_P_i_37_n_4 ),
        .I5(\food_x_reg[4]_P_i_31_n_7 ),
        .O(\food_x[4]_P_i_23_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_230 
       (.I0(random_x[6]),
        .I1(random_x[13]),
        .I2(random_x[11]),
        .I3(\food_x[4]_P_i_226_n_0 ),
        .O(\food_x[4]_P_i_230_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_232 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[4]),
        .O(\food_x[4]_P_i_232_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_233 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[3]),
        .O(\food_x[4]_P_i_233_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_234 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[2]),
        .O(\food_x[4]_P_i_234_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_235 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[1]),
        .O(\food_x[4]_P_i_235_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_236 
       (.I0(random_x[5]),
        .I1(random_x[12]),
        .I2(random_x[10]),
        .I3(\food_x[4]_P_i_232_n_0 ),
        .O(\food_x[4]_P_i_236_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_237 
       (.I0(random_x[9]),
        .I1(random_x[11]),
        .I2(random_x[4]),
        .I3(\food_x[4]_P_i_233_n_0 ),
        .O(\food_x[4]_P_i_237_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_238 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[3]),
        .I3(\food_x[4]_P_i_234_n_0 ),
        .O(\food_x[4]_P_i_238_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_239 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[2]),
        .I3(\food_x[4]_P_i_235_n_0 ),
        .O(\food_x[4]_P_i_239_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_24 
       (.I0(\food_x[4]_P_i_20_n_0 ),
        .I1(\food_x_reg[4]_P_i_35_n_5 ),
        .I2(\food_x[4]_P_i_50_n_0 ),
        .I3(\food_x_reg[4]_P_i_33_n_6 ),
        .I4(\food_x_reg[4]_P_i_37_n_5 ),
        .I5(\food_x_reg[4]_P_i_49_n_4 ),
        .O(\food_x[4]_P_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[4]_P_i_240 
       (.I0(random_x[0]),
        .O(\food_x[4]_P_i_240_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \food_x[4]_P_i_241 
       (.I0(random_x[1]),
        .I1(random_x[3]),
        .I2(random_x[0]),
        .O(\food_x[4]_P_i_241_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_242 
       (.I0(random_x[0]),
        .I1(random_x[2]),
        .O(\food_x[4]_P_i_242_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[4]_P_i_243 
       (.I0(random_x[1]),
        .O(\food_x[4]_P_i_243_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_244 
       (.I0(random_x[8]),
        .I1(random_x[6]),
        .I2(random_x[1]),
        .O(\food_x[4]_P_i_244_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \food_x[4]_P_i_245 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[1]),
        .I3(random_x[5]),
        .I4(random_x[0]),
        .O(\food_x[4]_P_i_245_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_246 
       (.I0(random_x[5]),
        .I1(random_x[0]),
        .I2(random_x[7]),
        .O(\food_x[4]_P_i_246_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_247 
       (.I0(random_x[6]),
        .I1(random_x[4]),
        .O(\food_x[4]_P_i_247_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[4]_P_i_248 
       (.I0(random_x[5]),
        .I1(random_x[3]),
        .O(\food_x[4]_P_i_248_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_25 
       (.I0(\food_x[4]_P_i_21_n_0 ),
        .I1(\food_x_reg[4]_P_i_35_n_6 ),
        .I2(\food_x[4]_P_i_51_n_0 ),
        .I3(\food_x_reg[4]_P_i_33_n_7 ),
        .I4(\food_x_reg[4]_P_i_37_n_6 ),
        .I5(\food_x_reg[4]_P_i_49_n_5 ),
        .O(\food_x[4]_P_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_26 
       (.I0(\food_x[4]_P_i_22_n_0 ),
        .I1(\food_x_reg[4]_P_i_35_n_7 ),
        .I2(\food_x[4]_P_i_52_n_0 ),
        .I3(\food_x_reg[4]_P_i_53_n_4 ),
        .I4(\food_x_reg[4]_P_i_37_n_7 ),
        .I5(\food_x_reg[4]_P_i_49_n_6 ),
        .O(\food_x[4]_P_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_28 
       (.I0(\food_x_reg[4]_P_i_29_n_5 ),
        .I1(\food_x_reg[4]_P_i_39_n_7 ),
        .I2(\food_x_reg[4]_P_i_30_n_4 ),
        .O(\food_x[4]_P_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000005557FFFF)) 
    \food_x[4]_P_i_3 
       (.I0(\food_x_reg[5]_P_i_4_n_6 ),
        .I1(\food_x_reg[4]_P_i_2_n_6 ),
        .I2(\food_x_reg[4]_P_i_2_n_5 ),
        .I3(\food_x_reg[4]_P_i_2_n_4 ),
        .I4(\food_x_reg[5]_P_i_4_n_7 ),
        .I5(\food_x_reg[5]_P_i_4_n_5 ),
        .O(\food_x[4]_P_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_32 
       (.I0(\food_x_reg[4]_P_i_29_n_6 ),
        .I1(\food_x_reg[4]_P_i_31_n_4 ),
        .I2(\food_x_reg[4]_P_i_30_n_5 ),
        .O(\food_x[4]_P_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_34 
       (.I0(\food_x_reg[4]_P_i_29_n_7 ),
        .I1(\food_x_reg[4]_P_i_31_n_5 ),
        .I2(\food_x_reg[4]_P_i_30_n_6 ),
        .O(\food_x[4]_P_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_36 
       (.I0(\food_x_reg[4]_P_i_33_n_4 ),
        .I1(\food_x_reg[4]_P_i_31_n_6 ),
        .I2(\food_x_reg[4]_P_i_30_n_7 ),
        .O(\food_x[4]_P_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_38 
       (.I0(\food_x_reg[4]_P_i_29_n_4 ),
        .I1(\food_x_reg[4]_P_i_39_n_6 ),
        .I2(\food_x_reg[4]_P_i_105_n_7 ),
        .O(\food_x[4]_P_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_4 
       (.I0(random_x[3]),
        .I1(\food_x_reg[4]_P_i_8_n_6 ),
        .O(\food_x[4]_P_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_41 
       (.I0(\food_x_reg[4]_P_i_54_n_5 ),
        .I1(\food_x[4]_P_i_120_n_0 ),
        .I2(\food_x_reg[4]_P_i_53_n_6 ),
        .I3(\food_x_reg[4]_P_i_56_n_5 ),
        .I4(\food_x_reg[4]_P_i_121_n_4 ),
        .O(\food_x[4]_P_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_42 
       (.I0(\food_x_reg[4]_P_i_54_n_6 ),
        .I1(\food_x[4]_P_i_122_n_0 ),
        .I2(\food_x_reg[4]_P_i_53_n_7 ),
        .I3(\food_x_reg[4]_P_i_56_n_6 ),
        .I4(\food_x_reg[4]_P_i_121_n_5 ),
        .O(\food_x[4]_P_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \food_x[4]_P_i_43 
       (.I0(\food_x_reg[4]_P_i_123_n_4 ),
        .I1(\food_x_reg[4]_P_i_56_n_7 ),
        .I2(\food_x_reg[4]_P_i_121_n_6 ),
        .I3(\food_x_reg[4]_P_i_54_n_7 ),
        .I4(\food_x[4]_P_i_124_n_0 ),
        .O(\food_x[4]_P_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \food_x[4]_P_i_44 
       (.I0(\food_x_reg[4]_P_i_125_n_4 ),
        .I1(\food_x[4]_P_i_126_n_0 ),
        .I2(\food_x_reg[4]_P_i_123_n_5 ),
        .I3(\food_x_reg[4]_P_i_127_n_4 ),
        .I4(\food_x_reg[4]_P_i_121_n_7 ),
        .O(\food_x[4]_P_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_45 
       (.I0(\food_x[4]_P_i_41_n_0 ),
        .I1(\food_x_reg[4]_P_i_54_n_4 ),
        .I2(\food_x[4]_P_i_55_n_0 ),
        .I3(\food_x_reg[4]_P_i_53_n_5 ),
        .I4(\food_x_reg[4]_P_i_56_n_4 ),
        .I5(\food_x_reg[4]_P_i_49_n_7 ),
        .O(\food_x[4]_P_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_46 
       (.I0(\food_x[4]_P_i_42_n_0 ),
        .I1(\food_x_reg[4]_P_i_54_n_5 ),
        .I2(\food_x[4]_P_i_120_n_0 ),
        .I3(\food_x_reg[4]_P_i_53_n_6 ),
        .I4(\food_x_reg[4]_P_i_56_n_5 ),
        .I5(\food_x_reg[4]_P_i_121_n_4 ),
        .O(\food_x[4]_P_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_47 
       (.I0(\food_x[4]_P_i_43_n_0 ),
        .I1(\food_x_reg[4]_P_i_54_n_6 ),
        .I2(\food_x[4]_P_i_122_n_0 ),
        .I3(\food_x_reg[4]_P_i_53_n_7 ),
        .I4(\food_x_reg[4]_P_i_56_n_6 ),
        .I5(\food_x_reg[4]_P_i_121_n_5 ),
        .O(\food_x[4]_P_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \food_x[4]_P_i_48 
       (.I0(\food_x[4]_P_i_44_n_0 ),
        .I1(\food_x_reg[4]_P_i_54_n_7 ),
        .I2(\food_x[4]_P_i_124_n_0 ),
        .I3(\food_x_reg[4]_P_i_123_n_4 ),
        .I4(\food_x_reg[4]_P_i_56_n_7 ),
        .I5(\food_x_reg[4]_P_i_121_n_6 ),
        .O(\food_x[4]_P_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_5 
       (.I0(random_x[2]),
        .I1(\food_x_reg[4]_P_i_8_n_7 ),
        .O(\food_x[4]_P_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_50 
       (.I0(\food_x_reg[4]_P_i_33_n_5 ),
        .I1(\food_x_reg[4]_P_i_31_n_7 ),
        .I2(\food_x_reg[4]_P_i_37_n_4 ),
        .O(\food_x[4]_P_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_51 
       (.I0(\food_x_reg[4]_P_i_33_n_6 ),
        .I1(\food_x_reg[4]_P_i_49_n_4 ),
        .I2(\food_x_reg[4]_P_i_37_n_5 ),
        .O(\food_x[4]_P_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_52 
       (.I0(\food_x_reg[4]_P_i_33_n_7 ),
        .I1(\food_x_reg[4]_P_i_49_n_5 ),
        .I2(\food_x_reg[4]_P_i_37_n_6 ),
        .O(\food_x[4]_P_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \food_x[4]_P_i_55 
       (.I0(\food_x_reg[4]_P_i_53_n_4 ),
        .I1(\food_x_reg[4]_P_i_49_n_6 ),
        .I2(\food_x_reg[4]_P_i_37_n_7 ),
        .O(\food_x[4]_P_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_x[4]_P_i_57 
       (.I0(random_x[29]),
        .I1(random_x[24]),
        .O(\food_x[4]_P_i_57_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_58 
       (.I0(random_x[28]),
        .I1(random_x[23]),
        .I2(random_x[30]),
        .O(\food_x[4]_P_i_58_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_59 
       (.I0(random_x[27]),
        .I1(random_x[22]),
        .I2(random_x[29]),
        .O(\food_x[4]_P_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_6 
       (.I0(random_x[1]),
        .I1(\food_x_reg[4]_P_i_9_n_4 ),
        .O(\food_x[4]_P_i_6_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_60 
       (.I0(random_x[26]),
        .I1(random_x[21]),
        .I2(random_x[28]),
        .O(\food_x[4]_P_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \food_x[4]_P_i_61 
       (.I0(random_x[24]),
        .I1(random_x[29]),
        .I2(random_x[30]),
        .I3(random_x[25]),
        .O(\food_x[4]_P_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \food_x[4]_P_i_62 
       (.I0(random_x[30]),
        .I1(random_x[23]),
        .I2(random_x[28]),
        .I3(random_x[24]),
        .I4(random_x[29]),
        .O(\food_x[4]_P_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_63 
       (.I0(\food_x[4]_P_i_59_n_0 ),
        .I1(random_x[28]),
        .I2(random_x[23]),
        .I3(random_x[30]),
        .O(\food_x[4]_P_i_63_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_64 
       (.I0(random_x[27]),
        .I1(random_x[22]),
        .I2(random_x[29]),
        .I3(\food_x[4]_P_i_60_n_0 ),
        .O(\food_x[4]_P_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_65 
       (.I0(random_x[16]),
        .I1(random_x[19]),
        .O(\food_x[4]_P_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_66 
       (.I0(random_x[15]),
        .I1(random_x[18]),
        .O(\food_x[4]_P_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_67 
       (.I0(random_x[14]),
        .I1(random_x[17]),
        .O(\food_x[4]_P_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_68 
       (.I0(random_x[13]),
        .I1(random_x[16]),
        .O(\food_x[4]_P_i_68_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_69 
       (.I0(random_x[22]),
        .I1(random_x[20]),
        .I2(random_x[18]),
        .O(\food_x[4]_P_i_69_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_x[4]_P_i_7 
       (.I0(random_x[0]),
        .O(\food_x[4]_P_i_7_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_70 
       (.I0(random_x[19]),
        .I1(random_x[21]),
        .I2(random_x[17]),
        .O(\food_x[4]_P_i_70_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_71 
       (.I0(random_x[18]),
        .I1(random_x[20]),
        .I2(random_x[16]),
        .O(\food_x[4]_P_i_71_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_72 
       (.I0(random_x[17]),
        .I1(random_x[19]),
        .I2(random_x[15]),
        .O(\food_x[4]_P_i_72_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_73 
       (.I0(random_x[19]),
        .I1(random_x[23]),
        .I2(random_x[21]),
        .I3(\food_x[4]_P_i_69_n_0 ),
        .O(\food_x[4]_P_i_73_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_74 
       (.I0(random_x[22]),
        .I1(random_x[20]),
        .I2(random_x[18]),
        .I3(\food_x[4]_P_i_70_n_0 ),
        .O(\food_x[4]_P_i_74_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_75 
       (.I0(random_x[19]),
        .I1(random_x[21]),
        .I2(random_x[17]),
        .I3(\food_x[4]_P_i_71_n_0 ),
        .O(\food_x[4]_P_i_75_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_76 
       (.I0(random_x[18]),
        .I1(random_x[20]),
        .I2(random_x[16]),
        .I3(\food_x[4]_P_i_72_n_0 ),
        .O(\food_x[4]_P_i_76_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_77 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[13]),
        .O(\food_x[4]_P_i_77_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_78 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[12]),
        .O(\food_x[4]_P_i_78_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_79 
       (.I0(random_x[11]),
        .I1(random_x[7]),
        .I2(random_x[5]),
        .O(\food_x[4]_P_i_79_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_80 
       (.I0(random_x[10]),
        .I1(random_x[6]),
        .I2(random_x[4]),
        .O(\food_x[4]_P_i_80_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_81 
       (.I0(random_x[8]),
        .I1(random_x[10]),
        .I2(random_x[14]),
        .I3(\food_x[4]_P_i_77_n_0 ),
        .O(\food_x[4]_P_i_81_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_82 
       (.I0(random_x[7]),
        .I1(random_x[9]),
        .I2(random_x[13]),
        .I3(\food_x[4]_P_i_78_n_0 ),
        .O(\food_x[4]_P_i_82_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_83 
       (.I0(random_x[6]),
        .I1(random_x[8]),
        .I2(random_x[12]),
        .I3(\food_x[4]_P_i_79_n_0 ),
        .O(\food_x[4]_P_i_83_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_84 
       (.I0(random_x[11]),
        .I1(random_x[7]),
        .I2(random_x[5]),
        .I3(\food_x[4]_P_i_80_n_0 ),
        .O(\food_x[4]_P_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_85 
       (.I0(random_x[12]),
        .I1(random_x[15]),
        .O(\food_x[4]_P_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_86 
       (.I0(random_x[11]),
        .I1(random_x[14]),
        .O(\food_x[4]_P_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_87 
       (.I0(random_x[10]),
        .I1(random_x[13]),
        .O(\food_x[4]_P_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[4]_P_i_88 
       (.I0(random_x[9]),
        .I1(random_x[12]),
        .O(\food_x[4]_P_i_88_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_89 
       (.I0(random_x[25]),
        .I1(random_x[20]),
        .I2(random_x[27]),
        .O(\food_x[4]_P_i_89_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_90 
       (.I0(random_x[26]),
        .I1(random_x[19]),
        .I2(random_x[24]),
        .O(\food_x[4]_P_i_90_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_91 
       (.I0(random_x[25]),
        .I1(random_x[23]),
        .I2(random_x[18]),
        .O(\food_x[4]_P_i_91_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[4]_P_i_92 
       (.I0(random_x[17]),
        .I1(random_x[24]),
        .I2(random_x[22]),
        .O(\food_x[4]_P_i_92_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_93 
       (.I0(random_x[26]),
        .I1(random_x[21]),
        .I2(random_x[28]),
        .I3(\food_x[4]_P_i_89_n_0 ),
        .O(\food_x[4]_P_i_93_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_94 
       (.I0(random_x[25]),
        .I1(random_x[20]),
        .I2(random_x[27]),
        .I3(\food_x[4]_P_i_90_n_0 ),
        .O(\food_x[4]_P_i_94_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_95 
       (.I0(random_x[26]),
        .I1(random_x[19]),
        .I2(random_x[24]),
        .I3(\food_x[4]_P_i_91_n_0 ),
        .O(\food_x[4]_P_i_95_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[4]_P_i_96 
       (.I0(random_x[25]),
        .I1(random_x[23]),
        .I2(random_x[18]),
        .I3(\food_x[4]_P_i_92_n_0 ),
        .O(\food_x[4]_P_i_96_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_97 
       (.I0(random_x[16]),
        .I1(random_x[18]),
        .I2(random_x[14]),
        .O(\food_x[4]_P_i_97_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_98 
       (.I0(random_x[15]),
        .I1(random_x[17]),
        .I2(random_x[13]),
        .O(\food_x[4]_P_i_98_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \food_x[4]_P_i_99 
       (.I0(random_x[14]),
        .I1(random_x[16]),
        .I2(random_x[12]),
        .O(\food_x[4]_P_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \food_x[5]_C_i_1 
       (.I0(p_2_in[5]),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_x_reg[5]_C_n_0 ),
        .O(\food_x[5]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4D4FB2A0)) 
    \food_x[5]_P_i_1 
       (.I0(\food_x[5]_P_i_2_n_0 ),
        .I1(\food_x[5]_P_i_3_n_0 ),
        .I2(\food_x_reg[5]_P_i_4_n_7 ),
        .I3(\food_x_reg[5]_P_i_4_n_5 ),
        .I4(\food_x_reg[5]_P_i_4_n_6 ),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'h66969969)) 
    \food_x[5]_P_i_10 
       (.I0(\food_x_reg[4]_P_i_8_n_6 ),
        .I1(\food_x_reg[5]_P_i_13_n_7 ),
        .I2(\food_x_reg[4]_P_i_8_n_4 ),
        .I3(\food_x_reg[4]_P_i_8_n_7 ),
        .I4(\food_x_reg[4]_P_i_9_n_4 ),
        .O(\food_x[5]_P_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \food_x[5]_P_i_11 
       (.I0(\food_x_reg[4]_P_i_9_n_4 ),
        .I1(\food_x_reg[4]_P_i_8_n_5 ),
        .I2(\food_x_reg[4]_P_i_8_n_4 ),
        .I3(\food_x_reg[4]_P_i_8_n_7 ),
        .O(\food_x[5]_P_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_x[5]_P_i_12 
       (.I0(\food_x_reg[4]_P_i_8_n_5 ),
        .I1(\food_x_reg[4]_P_i_9_n_4 ),
        .O(\food_x[5]_P_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \food_x[5]_P_i_14 
       (.I0(\food_x_reg[4]_P_i_27_n_4 ),
        .I1(\food_x[5]_P_i_15_n_0 ),
        .I2(\food_x[5]_P_i_16_n_0 ),
        .I3(\food_x_reg[4]_P_i_29_n_4 ),
        .I4(\food_x_reg[4]_P_i_39_n_6 ),
        .I5(\food_x_reg[4]_P_i_105_n_7 ),
        .O(\food_x[5]_P_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \food_x[5]_P_i_15 
       (.I0(\food_x_reg[4]_P_i_29_n_5 ),
        .I1(\food_x_reg[4]_P_i_30_n_4 ),
        .I2(\food_x_reg[4]_P_i_39_n_7 ),
        .O(\food_x[5]_P_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \food_x[5]_P_i_16 
       (.I0(\food_x_reg[4]_P_i_39_n_5 ),
        .I1(\food_x_reg[5]_P_i_17_n_7 ),
        .I2(\food_x_reg[4]_P_i_105_n_6 ),
        .I3(\food_x_reg[5]_P_i_18_n_7 ),
        .O(\food_x[5]_P_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[5]_P_i_19 
       (.I0(random_x[17]),
        .I1(random_x[20]),
        .O(\food_x[5]_P_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80000002)) 
    \food_x[5]_P_i_2 
       (.I0(\food_x_reg[4]_P_i_2_n_7 ),
        .I1(\food_x_reg[4]_P_i_2_n_5 ),
        .I2(\food_x_reg[4]_P_i_2_n_6 ),
        .I3(\food_x[4]_P_i_3_n_0 ),
        .I4(\food_x_reg[4]_P_i_2_n_4 ),
        .O(\food_x[5]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \food_x[5]_P_i_20 
       (.I0(random_x[26]),
        .I1(random_x[30]),
        .I2(random_x[25]),
        .O(\food_x[5]_P_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \food_x[5]_P_i_3 
       (.I0(\food_x_reg[4]_P_i_2_n_4 ),
        .I1(\food_x_reg[4]_P_i_2_n_5 ),
        .I2(\food_x_reg[4]_P_i_2_n_6 ),
        .O(\food_x[5]_P_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[5]_P_i_5 
       (.I0(random_x[6]),
        .I1(\food_x_reg[5]_P_i_8_n_5 ),
        .O(\food_x[5]_P_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[5]_P_i_6 
       (.I0(random_x[5]),
        .I1(\food_x_reg[5]_P_i_8_n_6 ),
        .O(\food_x[5]_P_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \food_x[5]_P_i_7 
       (.I0(random_x[4]),
        .I1(\food_x_reg[5]_P_i_8_n_7 ),
        .O(\food_x[5]_P_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \food_x[5]_P_i_9 
       (.I0(\food_x_reg[4]_P_i_8_n_5 ),
        .I1(\food_x_reg[4]_P_i_9_n_4 ),
        .O(\food_x[5]_P_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[0]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_3),
        .D(\food_x[0]_C_i_1_n_0 ),
        .Q(\food_x_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[0]_LDC 
       (.CLR(DBB_n_3),
        .D(\<const1> ),
        .G(DBB_n_5),
        .GE(VCC_2),
        .Q(\food_x_reg[0]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[0]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(p_2_in[0]),
        .PRE(DBB_n_5),
        .Q(\food_x_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[1]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_6),
        .D(\food_x[1]_C_i_1_n_0 ),
        .Q(\food_x_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[1]_LDC 
       (.CLR(DBB_n_6),
        .D(\<const1> ),
        .G(DBB_n_7),
        .GE(VCC_2),
        .Q(\food_x_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[1]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_x[1]_P_i_1_n_0 ),
        .PRE(DBB_n_7),
        .Q(\food_x_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[2]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_8),
        .D(\food_x[2]_C_i_1_n_0 ),
        .Q(\food_x_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[2]_LDC 
       (.CLR(DBB_n_8),
        .D(\<const1> ),
        .G(DBB_n_9),
        .GE(VCC_2),
        .Q(\food_x_reg[2]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[2]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(p_2_in[2]),
        .PRE(DBB_n_9),
        .Q(\food_x_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[3]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_10),
        .D(\food_x[3]_C_i_1_n_0 ),
        .Q(\food_x_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[3]_LDC 
       (.CLR(DBB_n_10),
        .D(\<const1> ),
        .G(DBB_n_11),
        .GE(VCC_2),
        .Q(\food_x_reg[3]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[3]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(p_2_in[3]),
        .PRE(DBB_n_11),
        .Q(\food_x_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[4]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_12),
        .D(\food_x[4]_C_i_1_n_0 ),
        .Q(\food_x_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[4]_LDC 
       (.CLR(DBB_n_12),
        .D(\<const1> ),
        .G(DBB_n_13),
        .GE(VCC_2),
        .Q(\food_x_reg[4]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[4]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(p_2_in[4]),
        .PRE(DBB_n_13),
        .Q(\food_x_reg[4]_P_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_105 
       (.CI(\food_x_reg[4]_P_i_30_n_0 ),
        .CO(\food_x_reg[4]_P_i_105_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\food_x[4]_P_i_156_n_0 }),
        .O({\food_x_reg[4]_P_i_105_n_6 ,\food_x_reg[4]_P_i_105_n_7 }),
        .S({\<const0> ,\<const0> ,\food_x[4]_P_i_157_n_0 ,\food_x[4]_P_i_158_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_111 
       (.CI(\food_x_reg[4]_P_i_159_n_0 ),
        .CO({\food_x_reg[4]_P_i_111_n_0 ,\food_x_reg[4]_P_i_111_n_1 ,\food_x_reg[4]_P_i_111_n_2 ,\food_x_reg[4]_P_i_111_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_160_n_0 ,\food_x[4]_P_i_161_n_0 ,\food_x[4]_P_i_162_n_0 ,\food_x[4]_P_i_163_n_0 }),
        .S({\food_x[4]_P_i_164_n_0 ,\food_x[4]_P_i_165_n_0 ,\food_x[4]_P_i_166_n_0 ,\food_x[4]_P_i_167_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_121 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_121_n_0 ,\food_x_reg[4]_P_i_121_n_1 ,\food_x_reg[4]_P_i_121_n_2 ,\food_x_reg[4]_P_i_121_n_3 }),
        .CYINIT(\<const0> ),
        .DI({random_x[6:4],\<const0> }),
        .O({\food_x_reg[4]_P_i_121_n_4 ,\food_x_reg[4]_P_i_121_n_5 ,\food_x_reg[4]_P_i_121_n_6 ,\food_x_reg[4]_P_i_121_n_7 }),
        .S({\food_x[4]_P_i_175_n_0 ,\food_x[4]_P_i_176_n_0 ,\food_x[4]_P_i_177_n_0 ,random_x[3]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_123 
       (.CI(\food_x_reg[4]_P_i_172_n_0 ),
        .CO({\food_x_reg[4]_P_i_123_n_0 ,\food_x_reg[4]_P_i_123_n_1 ,\food_x_reg[4]_P_i_123_n_2 ,\food_x_reg[4]_P_i_123_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[4:1]),
        .O({\food_x_reg[4]_P_i_123_n_4 ,\food_x_reg[4]_P_i_123_n_5 ,\food_x_reg[4]_P_i_123_n_6 ,\food_x_reg[4]_P_i_123_n_7 }),
        .S({\food_x[4]_P_i_178_n_0 ,\food_x[4]_P_i_179_n_0 ,\food_x[4]_P_i_180_n_0 ,\food_x[4]_P_i_181_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_125 
       (.CI(\food_x_reg[4]_P_i_174_n_0 ),
        .CO({\food_x_reg[4]_P_i_125_n_0 ,\food_x_reg[4]_P_i_125_n_1 ,\food_x_reg[4]_P_i_125_n_2 ,\food_x_reg[4]_P_i_125_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_182_n_0 ,\food_x[4]_P_i_183_n_0 ,\food_x[4]_P_i_184_n_0 ,\food_x[4]_P_i_185_n_0 }),
        .O({\food_x_reg[4]_P_i_125_n_4 ,\food_x_reg[4]_P_i_125_n_5 ,\food_x_reg[4]_P_i_125_n_6 ,\food_x_reg[4]_P_i_125_n_7 }),
        .S({\food_x[4]_P_i_186_n_0 ,\food_x[4]_P_i_187_n_0 ,\food_x[4]_P_i_188_n_0 ,\food_x[4]_P_i_189_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_127 
       (.CI(\food_x_reg[4]_P_i_173_n_0 ),
        .CO({\food_x_reg[4]_P_i_127_n_0 ,\food_x_reg[4]_P_i_127_n_1 ,\food_x_reg[4]_P_i_127_n_2 ,\food_x_reg[4]_P_i_127_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_190_n_0 ,\food_x[4]_P_i_191_n_0 ,\food_x[4]_P_i_192_n_0 ,\food_x[4]_P_i_193_n_0 }),
        .O({\food_x_reg[4]_P_i_127_n_4 ,\food_x_reg[4]_P_i_127_n_5 ,\food_x_reg[4]_P_i_127_n_6 ,\food_x_reg[4]_P_i_127_n_7 }),
        .S({\food_x[4]_P_i_194_n_0 ,\food_x[4]_P_i_195_n_0 ,\food_x[4]_P_i_196_n_0 ,\food_x[4]_P_i_197_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_159 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_159_n_0 ,\food_x_reg[4]_P_i_159_n_1 ,\food_x_reg[4]_P_i_159_n_2 ,\food_x_reg[4]_P_i_159_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_198_n_0 ,\food_x[4]_P_i_199_n_0 ,\food_x[4]_P_i_200_n_0 ,\food_x[4]_P_i_201_n_0 }),
        .S({\food_x[4]_P_i_202_n_0 ,\food_x[4]_P_i_203_n_0 ,\food_x[4]_P_i_204_n_0 ,\food_x[4]_P_i_205_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_170 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_170_n_0 ,\food_x_reg[4]_P_i_170_n_1 ,\food_x_reg[4]_P_i_170_n_2 ,\food_x_reg[4]_P_i_170_n_3 }),
        .CYINIT(\<const0> ),
        .DI({random_x[4:2],\<const0> }),
        .O(\food_x_reg[4]_P_i_170_n_7 ),
        .S({\food_x[4]_P_i_208_n_0 ,\food_x[4]_P_i_209_n_0 ,\food_x[4]_P_i_210_n_0 ,random_x[1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_172 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_172_n_0 ,\food_x_reg[4]_P_i_172_n_1 ,\food_x_reg[4]_P_i_172_n_2 ,\food_x_reg[4]_P_i_172_n_3 }),
        .CYINIT(\<const0> ),
        .DI({random_x[0],\<const0> ,\<const0> ,\<const1> }),
        .O({\food_x_reg[4]_P_i_172_n_4 ,\food_x_reg[4]_P_i_172_n_5 ,\food_x_reg[4]_P_i_172_n_6 ,\NLW_food_x_reg[4]_P_i_172_O_UNCONNECTED [0]}),
        .S({\food_x[4]_P_i_211_n_0 ,\food_x[4]_P_i_212_n_0 ,\food_x[4]_P_i_213_n_0 ,random_x[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_173 
       (.CI(\food_x_reg[4]_P_i_214_n_0 ),
        .CO({\food_x_reg[4]_P_i_173_n_0 ,\food_x_reg[4]_P_i_173_n_1 ,\food_x_reg[4]_P_i_173_n_2 ,\food_x_reg[4]_P_i_173_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_215_n_0 ,\food_x[4]_P_i_216_n_0 ,\food_x[4]_P_i_217_n_0 ,\food_x[4]_P_i_218_n_0 }),
        .O({\food_x_reg[4]_P_i_173_n_4 ,\food_x_reg[4]_P_i_173_n_5 ,\food_x_reg[4]_P_i_173_n_6 ,\food_x_reg[4]_P_i_173_n_7 }),
        .S({\food_x[4]_P_i_219_n_0 ,\food_x[4]_P_i_220_n_0 ,\food_x[4]_P_i_221_n_0 ,\food_x[4]_P_i_222_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_174 
       (.CI(\food_x_reg[4]_P_i_206_n_0 ),
        .CO({\food_x_reg[4]_P_i_174_n_0 ,\food_x_reg[4]_P_i_174_n_1 ,\food_x_reg[4]_P_i_174_n_2 ,\food_x_reg[4]_P_i_174_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_223_n_0 ,\food_x[4]_P_i_224_n_0 ,\food_x[4]_P_i_225_n_0 ,\food_x[4]_P_i_226_n_0 }),
        .O({\food_x_reg[4]_P_i_174_n_4 ,\food_x_reg[4]_P_i_174_n_5 ,\food_x_reg[4]_P_i_174_n_6 ,\food_x_reg[4]_P_i_174_n_7 }),
        .S({\food_x[4]_P_i_227_n_0 ,\food_x[4]_P_i_228_n_0 ,\food_x[4]_P_i_229_n_0 ,\food_x[4]_P_i_230_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_18 
       (.CI(\food_x_reg[4]_P_i_40_n_0 ),
        .CO({\food_x_reg[4]_P_i_18_n_0 ,\food_x_reg[4]_P_i_18_n_1 ,\food_x_reg[4]_P_i_18_n_2 ,\food_x_reg[4]_P_i_18_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_41_n_0 ,\food_x[4]_P_i_42_n_0 ,\food_x[4]_P_i_43_n_0 ,\food_x[4]_P_i_44_n_0 }),
        .S({\food_x[4]_P_i_45_n_0 ,\food_x[4]_P_i_46_n_0 ,\food_x[4]_P_i_47_n_0 ,\food_x[4]_P_i_48_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_2 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_2_n_0 ,\food_x_reg[4]_P_i_2_n_1 ,\food_x_reg[4]_P_i_2_n_2 ,\food_x_reg[4]_P_i_2_n_3 }),
        .CYINIT(\<const1> ),
        .DI(random_x[3:0]),
        .O({\food_x_reg[4]_P_i_2_n_4 ,\food_x_reg[4]_P_i_2_n_5 ,\food_x_reg[4]_P_i_2_n_6 ,\food_x_reg[4]_P_i_2_n_7 }),
        .S({\food_x[4]_P_i_4_n_0 ,\food_x[4]_P_i_5_n_0 ,\food_x[4]_P_i_6_n_0 ,\food_x[4]_P_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_206 
       (.CI(\food_x_reg[4]_P_i_231_n_0 ),
        .CO({\food_x_reg[4]_P_i_206_n_0 ,\food_x_reg[4]_P_i_206_n_1 ,\food_x_reg[4]_P_i_206_n_2 ,\food_x_reg[4]_P_i_206_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_232_n_0 ,\food_x[4]_P_i_233_n_0 ,\food_x[4]_P_i_234_n_0 ,\food_x[4]_P_i_235_n_0 }),
        .O({\food_x_reg[4]_P_i_206_n_4 ,\food_x_reg[4]_P_i_206_n_5 ,\food_x_reg[4]_P_i_206_n_6 ,\food_x_reg[4]_P_i_206_n_7 }),
        .S({\food_x[4]_P_i_236_n_0 ,\food_x[4]_P_i_237_n_0 ,\food_x[4]_P_i_238_n_0 ,\food_x[4]_P_i_239_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_214 
       (.CI(\<const0> ),
        .CO({\food_x_reg[4]_P_i_214_n_0 ,\food_x_reg[4]_P_i_214_n_1 ,\food_x_reg[4]_P_i_214_n_2 ,\food_x_reg[4]_P_i_214_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_240_n_0 ,random_x[0],\<const0> ,\<const1> }),
        .O({\food_x_reg[4]_P_i_214_n_4 ,\food_x_reg[4]_P_i_214_n_5 ,\food_x_reg[4]_P_i_214_n_6 ,\NLW_food_x_reg[4]_P_i_214_O_UNCONNECTED [0]}),
        .S({\food_x[4]_P_i_241_n_0 ,\food_x[4]_P_i_242_n_0 ,\food_x[4]_P_i_243_n_0 ,random_x[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_231 
       (.CI(\food_x_reg[4]_P_i_170_n_0 ),
        .CO({\food_x_reg[4]_P_i_231_n_0 ,\food_x_reg[4]_P_i_231_n_1 ,\food_x_reg[4]_P_i_231_n_2 ,\food_x_reg[4]_P_i_231_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_244_n_0 ,random_x[7:5]}),
        .O({\food_x_reg[4]_P_i_231_n_4 ,\NLW_food_x_reg[4]_P_i_231_O_UNCONNECTED [2:0]}),
        .S({\food_x[4]_P_i_245_n_0 ,\food_x[4]_P_i_246_n_0 ,\food_x[4]_P_i_247_n_0 ,\food_x[4]_P_i_248_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_27 
       (.CI(\food_x_reg[4]_P_i_35_n_0 ),
        .CO({\food_x_reg[4]_P_i_27_n_0 ,\food_x_reg[4]_P_i_27_n_1 ,\food_x_reg[4]_P_i_27_n_2 ,\food_x_reg[4]_P_i_27_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_57_n_0 ,\food_x[4]_P_i_58_n_0 ,\food_x[4]_P_i_59_n_0 ,\food_x[4]_P_i_60_n_0 }),
        .O({\food_x_reg[4]_P_i_27_n_4 ,\food_x_reg[4]_P_i_27_n_5 ,\food_x_reg[4]_P_i_27_n_6 ,\food_x_reg[4]_P_i_27_n_7 }),
        .S({\food_x[4]_P_i_61_n_0 ,\food_x[4]_P_i_62_n_0 ,\food_x[4]_P_i_63_n_0 ,\food_x[4]_P_i_64_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_29 
       (.CI(\food_x_reg[4]_P_i_33_n_0 ),
        .CO({\food_x_reg[4]_P_i_29_n_0 ,\food_x_reg[4]_P_i_29_n_1 ,\food_x_reg[4]_P_i_29_n_2 ,\food_x_reg[4]_P_i_29_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[16:13]),
        .O({\food_x_reg[4]_P_i_29_n_4 ,\food_x_reg[4]_P_i_29_n_5 ,\food_x_reg[4]_P_i_29_n_6 ,\food_x_reg[4]_P_i_29_n_7 }),
        .S({\food_x[4]_P_i_65_n_0 ,\food_x[4]_P_i_66_n_0 ,\food_x[4]_P_i_67_n_0 ,\food_x[4]_P_i_68_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_30 
       (.CI(\food_x_reg[4]_P_i_37_n_0 ),
        .CO({\food_x_reg[4]_P_i_30_n_0 ,\food_x_reg[4]_P_i_30_n_1 ,\food_x_reg[4]_P_i_30_n_2 ,\food_x_reg[4]_P_i_30_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_69_n_0 ,\food_x[4]_P_i_70_n_0 ,\food_x[4]_P_i_71_n_0 ,\food_x[4]_P_i_72_n_0 }),
        .O({\food_x_reg[4]_P_i_30_n_4 ,\food_x_reg[4]_P_i_30_n_5 ,\food_x_reg[4]_P_i_30_n_6 ,\food_x_reg[4]_P_i_30_n_7 }),
        .S({\food_x[4]_P_i_73_n_0 ,\food_x[4]_P_i_74_n_0 ,\food_x[4]_P_i_75_n_0 ,\food_x[4]_P_i_76_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_31 
       (.CI(\food_x_reg[4]_P_i_49_n_0 ),
        .CO({\food_x_reg[4]_P_i_31_n_0 ,\food_x_reg[4]_P_i_31_n_1 ,\food_x_reg[4]_P_i_31_n_2 ,\food_x_reg[4]_P_i_31_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_77_n_0 ,\food_x[4]_P_i_78_n_0 ,\food_x[4]_P_i_79_n_0 ,\food_x[4]_P_i_80_n_0 }),
        .O({\food_x_reg[4]_P_i_31_n_4 ,\food_x_reg[4]_P_i_31_n_5 ,\food_x_reg[4]_P_i_31_n_6 ,\food_x_reg[4]_P_i_31_n_7 }),
        .S({\food_x[4]_P_i_81_n_0 ,\food_x[4]_P_i_82_n_0 ,\food_x[4]_P_i_83_n_0 ,\food_x[4]_P_i_84_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_33 
       (.CI(\food_x_reg[4]_P_i_53_n_0 ),
        .CO({\food_x_reg[4]_P_i_33_n_0 ,\food_x_reg[4]_P_i_33_n_1 ,\food_x_reg[4]_P_i_33_n_2 ,\food_x_reg[4]_P_i_33_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[12:9]),
        .O({\food_x_reg[4]_P_i_33_n_4 ,\food_x_reg[4]_P_i_33_n_5 ,\food_x_reg[4]_P_i_33_n_6 ,\food_x_reg[4]_P_i_33_n_7 }),
        .S({\food_x[4]_P_i_85_n_0 ,\food_x[4]_P_i_86_n_0 ,\food_x[4]_P_i_87_n_0 ,\food_x[4]_P_i_88_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_35 
       (.CI(\food_x_reg[4]_P_i_54_n_0 ),
        .CO({\food_x_reg[4]_P_i_35_n_0 ,\food_x_reg[4]_P_i_35_n_1 ,\food_x_reg[4]_P_i_35_n_2 ,\food_x_reg[4]_P_i_35_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_89_n_0 ,\food_x[4]_P_i_90_n_0 ,\food_x[4]_P_i_91_n_0 ,\food_x[4]_P_i_92_n_0 }),
        .O({\food_x_reg[4]_P_i_35_n_4 ,\food_x_reg[4]_P_i_35_n_5 ,\food_x_reg[4]_P_i_35_n_6 ,\food_x_reg[4]_P_i_35_n_7 }),
        .S({\food_x[4]_P_i_93_n_0 ,\food_x[4]_P_i_94_n_0 ,\food_x[4]_P_i_95_n_0 ,\food_x[4]_P_i_96_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_37 
       (.CI(\food_x_reg[4]_P_i_56_n_0 ),
        .CO({\food_x_reg[4]_P_i_37_n_0 ,\food_x_reg[4]_P_i_37_n_1 ,\food_x_reg[4]_P_i_37_n_2 ,\food_x_reg[4]_P_i_37_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_97_n_0 ,\food_x[4]_P_i_98_n_0 ,\food_x[4]_P_i_99_n_0 ,\food_x[4]_P_i_100_n_0 }),
        .O({\food_x_reg[4]_P_i_37_n_4 ,\food_x_reg[4]_P_i_37_n_5 ,\food_x_reg[4]_P_i_37_n_6 ,\food_x_reg[4]_P_i_37_n_7 }),
        .S({\food_x[4]_P_i_101_n_0 ,\food_x[4]_P_i_102_n_0 ,\food_x[4]_P_i_103_n_0 ,\food_x[4]_P_i_104_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_39 
       (.CI(\food_x_reg[4]_P_i_31_n_0 ),
        .CO({\food_x_reg[4]_P_i_39_n_2 ,\food_x_reg[4]_P_i_39_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\food_x[4]_P_i_106_n_0 ,\food_x[4]_P_i_107_n_0 }),
        .O({\food_x_reg[4]_P_i_39_n_5 ,\food_x_reg[4]_P_i_39_n_6 ,\food_x_reg[4]_P_i_39_n_7 }),
        .S({\<const0> ,\food_x[4]_P_i_108_n_0 ,\food_x[4]_P_i_109_n_0 ,\food_x[4]_P_i_110_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_40 
       (.CI(\food_x_reg[4]_P_i_111_n_0 ),
        .CO({\food_x_reg[4]_P_i_40_n_0 ,\food_x_reg[4]_P_i_40_n_1 ,\food_x_reg[4]_P_i_40_n_2 ,\food_x_reg[4]_P_i_40_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_112_n_0 ,\food_x[4]_P_i_113_n_0 ,\food_x[4]_P_i_114_n_0 ,\food_x[4]_P_i_115_n_0 }),
        .S({\food_x[4]_P_i_116_n_0 ,\food_x[4]_P_i_117_n_0 ,\food_x[4]_P_i_118_n_0 ,\food_x[4]_P_i_119_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_49 
       (.CI(\food_x_reg[4]_P_i_121_n_0 ),
        .CO({\food_x_reg[4]_P_i_49_n_0 ,\food_x_reg[4]_P_i_49_n_1 ,\food_x_reg[4]_P_i_49_n_2 ,\food_x_reg[4]_P_i_49_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_128_n_0 ,\food_x[4]_P_i_129_n_0 ,\food_x[4]_P_i_130_n_0 ,\food_x[4]_P_i_131_n_0 }),
        .O({\food_x_reg[4]_P_i_49_n_4 ,\food_x_reg[4]_P_i_49_n_5 ,\food_x_reg[4]_P_i_49_n_6 ,\food_x_reg[4]_P_i_49_n_7 }),
        .S({\food_x[4]_P_i_132_n_0 ,\food_x[4]_P_i_133_n_0 ,\food_x[4]_P_i_134_n_0 ,\food_x[4]_P_i_135_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_53 
       (.CI(\food_x_reg[4]_P_i_123_n_0 ),
        .CO({\food_x_reg[4]_P_i_53_n_0 ,\food_x_reg[4]_P_i_53_n_1 ,\food_x_reg[4]_P_i_53_n_2 ,\food_x_reg[4]_P_i_53_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[8:5]),
        .O({\food_x_reg[4]_P_i_53_n_4 ,\food_x_reg[4]_P_i_53_n_5 ,\food_x_reg[4]_P_i_53_n_6 ,\food_x_reg[4]_P_i_53_n_7 }),
        .S({\food_x[4]_P_i_136_n_0 ,\food_x[4]_P_i_137_n_0 ,\food_x[4]_P_i_138_n_0 ,\food_x[4]_P_i_139_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_54 
       (.CI(\food_x_reg[4]_P_i_125_n_0 ),
        .CO({\food_x_reg[4]_P_i_54_n_0 ,\food_x_reg[4]_P_i_54_n_1 ,\food_x_reg[4]_P_i_54_n_2 ,\food_x_reg[4]_P_i_54_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_140_n_0 ,\food_x[4]_P_i_141_n_0 ,\food_x[4]_P_i_142_n_0 ,\food_x[4]_P_i_143_n_0 }),
        .O({\food_x_reg[4]_P_i_54_n_4 ,\food_x_reg[4]_P_i_54_n_5 ,\food_x_reg[4]_P_i_54_n_6 ,\food_x_reg[4]_P_i_54_n_7 }),
        .S({\food_x[4]_P_i_144_n_0 ,\food_x[4]_P_i_145_n_0 ,\food_x[4]_P_i_146_n_0 ,\food_x[4]_P_i_147_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_56 
       (.CI(\food_x_reg[4]_P_i_127_n_0 ),
        .CO({\food_x_reg[4]_P_i_56_n_0 ,\food_x_reg[4]_P_i_56_n_1 ,\food_x_reg[4]_P_i_56_n_2 ,\food_x_reg[4]_P_i_56_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_148_n_0 ,\food_x[4]_P_i_149_n_0 ,\food_x[4]_P_i_150_n_0 ,\food_x[4]_P_i_151_n_0 }),
        .O({\food_x_reg[4]_P_i_56_n_4 ,\food_x_reg[4]_P_i_56_n_5 ,\food_x_reg[4]_P_i_56_n_6 ,\food_x_reg[4]_P_i_56_n_7 }),
        .S({\food_x[4]_P_i_152_n_0 ,\food_x[4]_P_i_153_n_0 ,\food_x[4]_P_i_154_n_0 ,\food_x[4]_P_i_155_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_8 
       (.CI(\food_x_reg[4]_P_i_9_n_0 ),
        .CO({\food_x_reg[4]_P_i_8_n_0 ,\food_x_reg[4]_P_i_8_n_1 ,\food_x_reg[4]_P_i_8_n_2 ,\food_x_reg[4]_P_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_10_n_0 ,\food_x[4]_P_i_11_n_0 ,\food_x[4]_P_i_12_n_0 ,\food_x[4]_P_i_13_n_0 }),
        .O({\food_x_reg[4]_P_i_8_n_4 ,\food_x_reg[4]_P_i_8_n_5 ,\food_x_reg[4]_P_i_8_n_6 ,\food_x_reg[4]_P_i_8_n_7 }),
        .S({\food_x[4]_P_i_14_n_0 ,\food_x[4]_P_i_15_n_0 ,\food_x[4]_P_i_16_n_0 ,\food_x[4]_P_i_17_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[4]_P_i_9 
       (.CI(\food_x_reg[4]_P_i_18_n_0 ),
        .CO({\food_x_reg[4]_P_i_9_n_0 ,\food_x_reg[4]_P_i_9_n_1 ,\food_x_reg[4]_P_i_9_n_2 ,\food_x_reg[4]_P_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\food_x[4]_P_i_19_n_0 ,\food_x[4]_P_i_20_n_0 ,\food_x[4]_P_i_21_n_0 ,\food_x[4]_P_i_22_n_0 }),
        .O({\food_x_reg[4]_P_i_9_n_4 ,\NLW_food_x_reg[4]_P_i_9_O_UNCONNECTED [2:0]}),
        .S({\food_x[4]_P_i_23_n_0 ,\food_x[4]_P_i_24_n_0 ,\food_x[4]_P_i_25_n_0 ,\food_x[4]_P_i_26_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \food_x_reg[5]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_14),
        .D(\food_x[5]_C_i_1_n_0 ),
        .Q(\food_x_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_x_reg[5]_LDC 
       (.CLR(DBB_n_14),
        .D(\<const1> ),
        .G(DBB_n_15),
        .GE(VCC_2),
        .Q(\food_x_reg[5]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_x_reg[5]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(p_2_in[5]),
        .PRE(DBB_n_15),
        .Q(\food_x_reg[5]_P_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[5]_P_i_13 
       (.CI(\food_x_reg[4]_P_i_8_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\food_x_reg[5]_P_i_13_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\food_x[5]_P_i_14_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[5]_P_i_17 
       (.CI(\food_x_reg[4]_P_i_29_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\food_x_reg[5]_P_i_17_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\food_x[5]_P_i_19_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[5]_P_i_18 
       (.CI(\food_x_reg[4]_P_i_27_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\food_x_reg[5]_P_i_18_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\food_x[5]_P_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[5]_P_i_4 
       (.CI(\food_x_reg[4]_P_i_2_n_0 ),
        .CO({\food_x_reg[5]_P_i_4_n_2 ,\food_x_reg[5]_P_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,random_x[5:4]}),
        .O({\food_x_reg[5]_P_i_4_n_5 ,\food_x_reg[5]_P_i_4_n_6 ,\food_x_reg[5]_P_i_4_n_7 }),
        .S({\<const0> ,\food_x[5]_P_i_5_n_0 ,\food_x[5]_P_i_6_n_0 ,\food_x[5]_P_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_x_reg[5]_P_i_8 
       (.CI(\<const0> ),
        .CO({\food_x_reg[5]_P_i_8_n_2 ,\food_x_reg[5]_P_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\food_x[5]_P_i_9_n_0 ,\<const0> }),
        .O({\food_x_reg[5]_P_i_8_n_5 ,\food_x_reg[5]_P_i_8_n_6 ,\food_x_reg[5]_P_i_8_n_7 }),
        .S({\<const0> ,\food_x[5]_P_i_10_n_0 ,\food_x[5]_P_i_11_n_0 ,\food_x[5]_P_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h7F40)) 
    \food_y[0]_C_i_1 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_y_reg[0]_C_n_0 ),
        .O(\food_y[0]_C_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_y[0]_P_i_1 
       (.I0(\random_y_reg_n_0_[0] ),
        .O(\food_y[0]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    \food_y[1]_C_i_1 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg_n_0_[1] ),
        .I2(food_x13_out),
        .I3(food_x1),
        .I4(\food_y_reg[1]_C_n_0 ),
        .O(\food_y[1]_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \food_y[1]_P_i_1 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg_n_0_[1] ),
        .O(\food_y[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFFFF6A000000)) 
    \food_y[2]_C_i_1 
       (.I0(\random_y_reg_n_0_[2] ),
        .I1(\random_y_reg_n_0_[1] ),
        .I2(\random_y_reg_n_0_[0] ),
        .I3(food_x13_out),
        .I4(food_x1),
        .I5(\food_y_reg[2]_C_n_0 ),
        .O(\food_y[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \food_y[2]_P_i_1 
       (.I0(\random_y_reg_n_0_[2] ),
        .I1(\random_y_reg_n_0_[1] ),
        .I2(\random_y_reg_n_0_[0] ),
        .O(\food_y[2]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \food_y[3]_C_i_1 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg_n_0_[2] ),
        .I2(\random_y_reg_n_0_[0] ),
        .I3(\random_y_reg_n_0_[1] ),
        .I4(\food_y[5]_P_i_1_n_0 ),
        .I5(\food_y_reg[3]_C_n_0 ),
        .O(\food_y[3]_C_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \food_y[3]_P_i_1 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg_n_0_[2] ),
        .I2(\random_y_reg_n_0_[0] ),
        .I3(\random_y_reg_n_0_[1] ),
        .O(\food_y[3]_P_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \food_y[4]_C_i_1 
       (.I0(\food_y[4]_P_i_1_n_0 ),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_y_reg[4]_C_n_0 ),
        .O(\food_y[4]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \food_y[4]_P_i_1 
       (.I0(\random_y_reg_n_0_[4] ),
        .I1(\random_y_reg_n_0_[3] ),
        .I2(\random_y_reg_n_0_[1] ),
        .I3(\random_y_reg_n_0_[0] ),
        .I4(\random_y_reg_n_0_[2] ),
        .O(\food_y[4]_P_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \food_y[5]_C_i_1 
       (.I0(\food_y[5]_P_i_2_n_0 ),
        .I1(food_x13_out),
        .I2(food_x1),
        .I3(\food_y_reg[5]_C_n_0 ),
        .O(\food_y[5]_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \food_y[5]_P_i_1 
       (.I0(food_x13_out),
        .I1(food_x1),
        .O(\food_y[5]_P_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_y[5]_P_i_10 
       (.I0(head_y[30]),
        .O(\food_y[5]_P_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_11 
       (.I0(head_y[27]),
        .I1(head_y[28]),
        .I2(head_y[29]),
        .O(\food_y[5]_P_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_12 
       (.I0(head_y[24]),
        .I1(head_y[25]),
        .I2(head_y[26]),
        .O(\food_y[5]_P_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_14 
       (.I0(head_x_reg[21]),
        .I1(head_x_reg[22]),
        .I2(head_x_reg[23]),
        .O(\food_y[5]_P_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_15 
       (.I0(head_x_reg[18]),
        .I1(head_x_reg[19]),
        .I2(head_x_reg[20]),
        .O(\food_y[5]_P_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_16 
       (.I0(head_x_reg[15]),
        .I1(head_x_reg[16]),
        .I2(head_x_reg[17]),
        .O(\food_y[5]_P_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_17 
       (.I0(head_x_reg[12]),
        .I1(head_x_reg[13]),
        .I2(head_x_reg[14]),
        .O(\food_y[5]_P_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_19 
       (.I0(head_y[21]),
        .I1(head_y[22]),
        .I2(head_y[23]),
        .O(\food_y[5]_P_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \food_y[5]_P_i_2 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg_n_0_[1] ),
        .I2(\random_y_reg_n_0_[0] ),
        .I3(\random_y_reg_n_0_[2] ),
        .I4(\random_y_reg_n_0_[4] ),
        .O(\food_y[5]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_20 
       (.I0(head_y[18]),
        .I1(head_y[19]),
        .I2(head_y[20]),
        .O(\food_y[5]_P_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_21 
       (.I0(head_y[15]),
        .I1(head_y[16]),
        .I2(head_y[17]),
        .O(\food_y[5]_P_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_22 
       (.I0(head_y[12]),
        .I1(head_y[13]),
        .I2(head_y[14]),
        .O(\food_y[5]_P_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_23 
       (.I0(head_x_reg[9]),
        .I1(head_x_reg[10]),
        .I2(head_x_reg[11]),
        .O(\food_y[5]_P_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_24 
       (.I0(head_x_reg[8]),
        .I1(head_x_reg[7]),
        .I2(head_x_reg[6]),
        .O(\food_y[5]_P_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \food_y[5]_P_i_25 
       (.I0(\vga_green_reg[3]_i_30_n_0 ),
        .I1(head_x_reg[3]),
        .I2(head_x_reg[5]),
        .I3(\food_y[5]_P_i_31_n_0 ),
        .I4(head_x_reg[4]),
        .I5(\vga_green_reg[3]_i_31_n_0 ),
        .O(\food_y[5]_P_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \food_y[5]_P_i_26 
       (.I0(\vga_green_reg[3]_i_17_n_0 ),
        .I1(head_x_reg[2]),
        .I2(head_x_reg[1]),
        .I3(\vga_green_reg[3]_i_14_n_0 ),
        .I4(head_x_reg[0]),
        .I5(\vga_green_reg[3]_i_32_n_0 ),
        .O(\food_y[5]_P_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_27 
       (.I0(head_y[9]),
        .I1(head_y[10]),
        .I2(head_y[11]),
        .O(\food_y[5]_P_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_28 
       (.I0(head_y[8]),
        .I1(head_y[7]),
        .I2(head_y[6]),
        .O(\food_y[5]_P_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \food_y[5]_P_i_29 
       (.I0(\vga_green_reg[3]_i_36_n_0 ),
        .I1(head_y[3]),
        .I2(head_y[5]),
        .I3(\food_y[5]_P_i_32_n_0 ),
        .I4(head_y[4]),
        .I5(\vga_green_reg[3]_i_37_n_0 ),
        .O(\food_y[5]_P_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \food_y[5]_P_i_30 
       (.I0(\vga_green_reg[3]_i_27_n_0 ),
        .I1(head_y[2]),
        .I2(head_y[1]),
        .I3(\vga_green_reg[3]_i_23_n_0 ),
        .I4(head_y[0]),
        .I5(\vga_green_reg[3]_i_38_n_0 ),
        .O(\food_y[5]_P_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \food_y[5]_P_i_31 
       (.I0(\food_x_reg[5]_P_n_0 ),
        .I1(\food_x_reg[5]_LDC_n_0 ),
        .I2(\food_x_reg[5]_C_n_0 ),
        .O(\food_y[5]_P_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \food_y[5]_P_i_32 
       (.I0(\food_y_reg[5]_P_n_0 ),
        .I1(\food_y_reg[5]_LDC_n_0 ),
        .I2(\food_y_reg[5]_C_n_0 ),
        .O(\food_y[5]_P_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \food_y[5]_P_i_6 
       (.I0(head_x_reg[30]),
        .O(\food_y[5]_P_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_7 
       (.I0(head_x_reg[27]),
        .I1(head_x_reg[28]),
        .I2(head_x_reg[29]),
        .O(\food_y[5]_P_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \food_y[5]_P_i_8 
       (.I0(head_x_reg[24]),
        .I1(head_x_reg[25]),
        .I2(head_x_reg[26]),
        .O(\food_y[5]_P_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[0]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_4),
        .D(\food_y[0]_C_i_1_n_0 ),
        .Q(\food_y_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[0]_LDC 
       (.CLR(DBB_n_4),
        .D(\<const1> ),
        .G(DBB_n_16),
        .GE(VCC_2),
        .Q(\food_y_reg[0]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[0]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[0]_P_i_1_n_0 ),
        .PRE(DBB_n_16),
        .Q(\food_y_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[1]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_17),
        .D(\food_y[1]_C_i_1_n_0 ),
        .Q(\food_y_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[1]_LDC 
       (.CLR(DBB_n_17),
        .D(\<const1> ),
        .G(DBB_n_18),
        .GE(VCC_2),
        .Q(\food_y_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[1]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[1]_P_i_1_n_0 ),
        .PRE(DBB_n_18),
        .Q(\food_y_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[2]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_19),
        .D(\food_y[2]_C_i_1_n_0 ),
        .Q(\food_y_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[2]_LDC 
       (.CLR(DBB_n_19),
        .D(\<const1> ),
        .G(DBB_n_20),
        .GE(VCC_2),
        .Q(\food_y_reg[2]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[2]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[2]_P_i_1_n_0 ),
        .PRE(DBB_n_20),
        .Q(\food_y_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[3]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_21),
        .D(\food_y[3]_C_i_1_n_0 ),
        .Q(\food_y_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[3]_LDC 
       (.CLR(DBB_n_21),
        .D(\<const1> ),
        .G(DBB_n_22),
        .GE(VCC_2),
        .Q(\food_y_reg[3]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[3]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[3]_P_i_1_n_0 ),
        .PRE(DBB_n_22),
        .Q(\food_y_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[4]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_23),
        .D(\food_y[4]_C_i_1_n_0 ),
        .Q(\food_y_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[4]_LDC 
       (.CLR(DBB_n_23),
        .D(\<const1> ),
        .G(DBB_n_26),
        .GE(VCC_2),
        .Q(\food_y_reg[4]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[4]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[4]_P_i_1_n_0 ),
        .PRE(DBB_n_26),
        .Q(\food_y_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \food_y_reg[5]_C 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(DBB_n_24),
        .D(\food_y[5]_C_i_1_n_0 ),
        .Q(\food_y_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \food_y_reg[5]_LDC 
       (.CLR(DBB_n_24),
        .D(\<const1> ),
        .G(DBB_n_25),
        .GE(VCC_2),
        .Q(\food_y_reg[5]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \food_y_reg[5]_P 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .D(\food_y[5]_P_i_2_n_0 ),
        .PRE(DBB_n_25),
        .Q(\food_y_reg[5]_P_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_13 
       (.CI(\<const0> ),
        .CO({\food_y_reg[5]_P_i_13_n_0 ,\food_y_reg[5]_P_i_13_n_1 ,\food_y_reg[5]_P_i_13_n_2 ,\food_y_reg[5]_P_i_13_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\food_y[5]_P_i_23_n_0 ,\food_y[5]_P_i_24_n_0 ,\food_y[5]_P_i_25_n_0 ,\food_y[5]_P_i_26_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_18 
       (.CI(\<const0> ),
        .CO({\food_y_reg[5]_P_i_18_n_0 ,\food_y_reg[5]_P_i_18_n_1 ,\food_y_reg[5]_P_i_18_n_2 ,\food_y_reg[5]_P_i_18_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\food_y[5]_P_i_27_n_0 ,\food_y[5]_P_i_28_n_0 ,\food_y[5]_P_i_29_n_0 ,\food_y[5]_P_i_30_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_3 
       (.CI(\food_y_reg[5]_P_i_5_n_0 ),
        .CO({food_x13_out,\food_y_reg[5]_P_i_3_n_2 ,\food_y_reg[5]_P_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\food_y[5]_P_i_6_n_0 ,\food_y[5]_P_i_7_n_0 ,\food_y[5]_P_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_4 
       (.CI(\food_y_reg[5]_P_i_9_n_0 ),
        .CO({food_x1,\food_y_reg[5]_P_i_4_n_2 ,\food_y_reg[5]_P_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\food_y[5]_P_i_10_n_0 ,\food_y[5]_P_i_11_n_0 ,\food_y[5]_P_i_12_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_5 
       (.CI(\food_y_reg[5]_P_i_13_n_0 ),
        .CO({\food_y_reg[5]_P_i_5_n_0 ,\food_y_reg[5]_P_i_5_n_1 ,\food_y_reg[5]_P_i_5_n_2 ,\food_y_reg[5]_P_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\food_y[5]_P_i_14_n_0 ,\food_y[5]_P_i_15_n_0 ,\food_y[5]_P_i_16_n_0 ,\food_y[5]_P_i_17_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \food_y_reg[5]_P_i_9 
       (.CI(\food_y_reg[5]_P_i_18_n_0 ),
        .CO({\food_y_reg[5]_P_i_9_n_0 ,\food_y_reg[5]_P_i_9_n_1 ,\food_y_reg[5]_P_i_9_n_2 ,\food_y_reg[5]_P_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\food_y[5]_P_i_19_n_0 ,\food_y[5]_P_i_20_n_0 ,\food_y[5]_P_i_21_n_0 ,\food_y[5]_P_i_22_n_0 }));
  LUT5 #(
    .INIT(32'h22222202)) 
    game_active_i_1
       (.I0(game_active),
        .I1(game_active_i_3_n_0),
        .I2(game_active_i_4_n_0),
        .I3(game_active_i_5_n_0),
        .I4(game_active_i_6_n_0),
        .O(game_active_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    game_active_i_10
       (.I0(head_y[8]),
        .I1(direction[1]),
        .I2(\head_y_reg[8]_i_2_n_4 ),
        .I3(head_y[14]),
        .I4(\head_y_reg[16]_i_2_n_6 ),
        .I5(game_active_i_30_n_0),
        .O(game_active_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    game_active_i_11
       (.I0(head_y[2]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_6 ),
        .I3(head_y[24]),
        .I4(\head_y_reg[24]_i_2_n_4 ),
        .I5(game_active_i_31_n_0),
        .O(game_active_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFAFBBEEFAFABBEE)) 
    game_active_i_12
       (.I0(game_active_i_32_n_0),
        .I1(\head_y_reg[4]_i_2_n_7 ),
        .I2(head_y[1]),
        .I3(\head_y_reg[8]_i_2_n_7 ),
        .I4(direction[1]),
        .I5(head_y[5]),
        .O(game_active_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    game_active_i_13
       (.I0(game_active_reg_i_33_n_6),
        .I1(game_active_reg_i_20_n_7),
        .I2(game_active_reg_i_17_n_7),
        .I3(game_active_reg_i_33_n_7),
        .O(game_active_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    game_active_i_16
       (.I0(game_active_reg_i_17_n_6),
        .I1(game_active_reg_i_20_n_4),
        .I2(game_active_reg_i_43_n_4),
        .I3(game_active_reg_i_18_n_5),
        .O(game_active_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    game_active_i_19
       (.I0(game_active_reg_i_33_n_4),
        .I1(game_active_reg_i_43_n_7),
        .I2(game_active_reg_i_20_n_5),
        .I3(game_active_reg_i_43_n_5),
        .I4(game_active_i_51_n_0),
        .O(game_active_i_19_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    game_active_i_22
       (.I0(game_active_reg_i_18_n_6),
        .I1(game_active_reg_i_15_n_6),
        .I2(game_active_reg_i_33_n_5),
        .I3(\head_x_reg[1]_i_1_n_7 ),
        .O(game_active_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    game_active_i_23
       (.I0(\head_y_reg[8]_i_2_n_6 ),
        .I1(head_y[6]),
        .I2(\head_y_reg[4]_i_2_n_4 ),
        .I3(direction[1]),
        .I4(head_y[4]),
        .O(game_active_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_24
       (.I0(\head_y_reg[20]_i_2_n_4 ),
        .I1(head_y[20]),
        .I2(\head_y_reg[20]_i_2_n_7 ),
        .I3(direction[1]),
        .I4(head_y[17]),
        .O(game_active_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_25
       (.I0(\head_y_reg[28]_i_2_n_7 ),
        .I1(head_y[25]),
        .I2(\head_y_reg[12]_i_2_n_5 ),
        .I3(direction[1]),
        .I4(head_y[11]),
        .O(game_active_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_26
       (.I0(\head_y_reg[30]_i_2_n_6 ),
        .I1(head_y[30]),
        .I2(\head_y_reg[28]_i_2_n_6 ),
        .I3(direction[1]),
        .I4(head_y[26]),
        .O(game_active_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    game_active_i_27
       (.I0(\head_y_reg[16]_i_2_n_4 ),
        .I1(head_y[16]),
        .I2(head_y[0]),
        .I3(direction[1]),
        .O(game_active_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_28
       (.I0(\head_y_reg[30]_i_2_n_7 ),
        .I1(head_y[29]),
        .I2(\head_y_reg[8]_i_2_n_5 ),
        .I3(direction[1]),
        .I4(head_y[7]),
        .O(game_active_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_29
       (.I0(\head_y_reg[16]_i_2_n_5 ),
        .I1(head_y[15]),
        .I2(\head_y_reg[12]_i_2_n_4 ),
        .I3(direction[1]),
        .I4(head_y[12]),
        .O(game_active_i_29_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    game_active_i_3
       (.I0(game_active_i_7_n_0),
        .I1(game_active_i_8_n_0),
        .I2(game_active_i_9_n_0),
        .I3(game_active_i_10_n_0),
        .I4(game_active_i_11_n_0),
        .I5(game_active_i_12_n_0),
        .O(game_active_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_30
       (.I0(\head_y_reg[24]_i_2_n_5 ),
        .I1(head_y[23]),
        .I2(\head_y_reg[12]_i_2_n_6 ),
        .I3(direction[1]),
        .I4(head_y[10]),
        .O(game_active_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_31
       (.I0(\head_y_reg[20]_i_2_n_5 ),
        .I1(head_y[19]),
        .I2(\head_y_reg[20]_i_2_n_6 ),
        .I3(direction[1]),
        .I4(head_y[18]),
        .O(game_active_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    game_active_i_32
       (.I0(\head_y_reg[16]_i_2_n_7 ),
        .I1(head_y[13]),
        .I2(\head_y_reg[12]_i_2_n_7 ),
        .I3(direction[1]),
        .I4(head_y[9]),
        .O(game_active_i_32_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_34
       (.I0(head_x_reg[6]),
        .I1(head_x_reg[7]),
        .O(game_active_i_34_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_35
       (.I0(head_x_reg[5]),
        .I1(head_x_reg[6]),
        .O(game_active_i_35_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_36
       (.I0(head_x_reg[4]),
        .I1(head_x_reg[5]),
        .O(game_active_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_37
       (.I0(head_x_reg[3]),
        .I1(head_x_reg[4]),
        .O(game_active_i_37_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    game_active_i_38
       (.I0(head_x_reg[1]),
        .O(game_active_i_38_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_39
       (.I0(head_x_reg[2]),
        .I1(head_x_reg[3]),
        .O(game_active_i_39_n_0));
  LUT4 #(
    .INIT(16'h4001)) 
    game_active_i_4
       (.I0(game_active_i_13_n_0),
        .I1(game_active_reg_i_14_n_7),
        .I2(game_active_reg_i_15_n_5),
        .I3(game_active_reg_i_14_n_6),
        .O(game_active_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_40
       (.I0(head_x_reg[1]),
        .I1(head_x_reg[2]),
        .O(game_active_i_40_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    game_active_i_41
       (.I0(head_x_reg[1]),
        .I1(direction[0]),
        .I2(direction[1]),
        .O(game_active_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    game_active_i_42
       (.I0(direction[1]),
        .I1(head_x_reg[0]),
        .O(game_active_i_42_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_44
       (.I0(head_x_reg[22]),
        .I1(head_x_reg[23]),
        .O(game_active_i_44_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_45
       (.I0(head_x_reg[21]),
        .I1(head_x_reg[22]),
        .O(game_active_i_45_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_46
       (.I0(head_x_reg[20]),
        .I1(head_x_reg[21]),
        .O(game_active_i_46_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_47
       (.I0(head_x_reg[19]),
        .I1(head_x_reg[20]),
        .O(game_active_i_47_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_48
       (.I0(head_x_reg[30]),
        .I1(head_x_reg[29]),
        .O(game_active_i_48_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_49
       (.I0(head_x_reg[28]),
        .I1(head_x_reg[29]),
        .O(game_active_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    game_active_i_5
       (.I0(game_active_i_16_n_0),
        .I1(game_active_reg_i_17_n_5),
        .I2(game_active_reg_i_15_n_4),
        .I3(game_active_reg_i_18_n_7),
        .I4(game_active_reg_i_14_n_5),
        .I5(game_active_i_19_n_0),
        .O(game_active_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_50
       (.I0(head_x_reg[27]),
        .I1(head_x_reg[28]),
        .O(game_active_i_50_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    game_active_i_51
       (.I0(game_active_reg_i_43_n_6),
        .I1(game_active_reg_i_17_n_4),
        .I2(game_active_reg_i_21_n_7),
        .I3(game_active_reg_i_21_n_5),
        .O(game_active_i_51_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_52
       (.I0(head_x_reg[10]),
        .I1(head_x_reg[11]),
        .O(game_active_i_52_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_53
       (.I0(head_x_reg[9]),
        .I1(head_x_reg[10]),
        .O(game_active_i_53_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_54
       (.I0(head_x_reg[8]),
        .I1(head_x_reg[9]),
        .O(game_active_i_54_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_55
       (.I0(head_x_reg[7]),
        .I1(head_x_reg[8]),
        .O(game_active_i_55_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_56
       (.I0(head_x_reg[14]),
        .I1(head_x_reg[15]),
        .O(game_active_i_56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_57
       (.I0(head_x_reg[13]),
        .I1(head_x_reg[14]),
        .O(game_active_i_57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_58
       (.I0(head_x_reg[12]),
        .I1(head_x_reg[13]),
        .O(game_active_i_58_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_59
       (.I0(head_x_reg[11]),
        .I1(head_x_reg[12]),
        .O(game_active_i_59_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    game_active_i_6
       (.I0(game_active_reg_i_20_n_6),
        .I1(game_active_reg_i_14_n_4),
        .I2(game_active_reg_i_21_n_4),
        .I3(game_active_reg_i_21_n_6),
        .I4(game_active_i_22_n_0),
        .O(game_active_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_60
       (.I0(head_x_reg[26]),
        .I1(head_x_reg[27]),
        .O(game_active_i_60_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_61
       (.I0(head_x_reg[25]),
        .I1(head_x_reg[26]),
        .O(game_active_i_61_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_62
       (.I0(head_x_reg[24]),
        .I1(head_x_reg[25]),
        .O(game_active_i_62_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_63
       (.I0(head_x_reg[23]),
        .I1(head_x_reg[24]),
        .O(game_active_i_63_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_64
       (.I0(head_x_reg[18]),
        .I1(head_x_reg[19]),
        .O(game_active_i_64_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_65
       (.I0(head_x_reg[17]),
        .I1(head_x_reg[18]),
        .O(game_active_i_65_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_66
       (.I0(head_x_reg[16]),
        .I1(head_x_reg[17]),
        .O(game_active_i_66_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    game_active_i_67
       (.I0(head_x_reg[15]),
        .I1(head_x_reg[16]),
        .O(game_active_i_67_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    game_active_i_7
       (.I0(new_head_y1_in[22]),
        .I1(game_active_i_23_n_0),
        .I2(game_active_i_24_n_0),
        .I3(game_active_i_25_n_0),
        .I4(game_active_i_26_n_0),
        .I5(game_active_i_27_n_0),
        .O(game_active_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    game_active_i_8
       (.I0(head_y[21]),
        .I1(direction[1]),
        .I2(\head_y_reg[24]_i_2_n_7 ),
        .I3(head_y[28]),
        .I4(\head_y_reg[28]_i_2_n_4 ),
        .I5(game_active_i_28_n_0),
        .O(game_active_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    game_active_i_9
       (.I0(head_y[3]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_5 ),
        .I3(head_y[27]),
        .I4(\head_y_reg[28]_i_2_n_5 ),
        .I5(game_active_i_29_n_0),
        .O(game_active_i_9_n_0));
  FDPE #(
    .INIT(1'b0)) 
    game_active_reg
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(game_active_i_1_n_0),
        .PRE(DBB_n_0),
        .Q(game_active));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_14
       (.CI(game_active_reg_i_15_n_0),
        .CO({game_active_reg_i_14_n_0,game_active_reg_i_14_n_1,game_active_reg_i_14_n_2,game_active_reg_i_14_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[6:3]),
        .O({game_active_reg_i_14_n_4,game_active_reg_i_14_n_5,game_active_reg_i_14_n_6,game_active_reg_i_14_n_7}),
        .S({game_active_i_34_n_0,game_active_i_35_n_0,game_active_i_36_n_0,game_active_i_37_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_15
       (.CI(\<const0> ),
        .CO({game_active_reg_i_15_n_0,game_active_reg_i_15_n_1,game_active_reg_i_15_n_2,game_active_reg_i_15_n_3}),
        .CYINIT(\<const0> ),
        .DI({head_x_reg[2:1],game_active_i_38_n_0,direction[1]}),
        .O({game_active_reg_i_15_n_4,game_active_reg_i_15_n_5,game_active_reg_i_15_n_6,NLW_game_active_reg_i_15_O_UNCONNECTED[0]}),
        .S({game_active_i_39_n_0,game_active_i_40_n_0,game_active_i_41_n_0,game_active_i_42_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_17
       (.CI(game_active_reg_i_43_n_0),
        .CO({game_active_reg_i_17_n_0,game_active_reg_i_17_n_1,game_active_reg_i_17_n_2,game_active_reg_i_17_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[22:19]),
        .O({game_active_reg_i_17_n_4,game_active_reg_i_17_n_5,game_active_reg_i_17_n_6,game_active_reg_i_17_n_7}),
        .S({game_active_i_44_n_0,game_active_i_45_n_0,game_active_i_46_n_0,game_active_i_47_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_18
       (.CI(game_active_reg_i_33_n_0),
        .CO({game_active_reg_i_18_n_2,game_active_reg_i_18_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,head_x_reg[28:27]}),
        .O({game_active_reg_i_18_n_5,game_active_reg_i_18_n_6,game_active_reg_i_18_n_7}),
        .S({\<const0> ,game_active_i_48_n_0,game_active_i_49_n_0,game_active_i_50_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_20
       (.CI(game_active_reg_i_14_n_0),
        .CO({game_active_reg_i_20_n_0,game_active_reg_i_20_n_1,game_active_reg_i_20_n_2,game_active_reg_i_20_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[10:7]),
        .O({game_active_reg_i_20_n_4,game_active_reg_i_20_n_5,game_active_reg_i_20_n_6,game_active_reg_i_20_n_7}),
        .S({game_active_i_52_n_0,game_active_i_53_n_0,game_active_i_54_n_0,game_active_i_55_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_21
       (.CI(game_active_reg_i_20_n_0),
        .CO({game_active_reg_i_21_n_0,game_active_reg_i_21_n_1,game_active_reg_i_21_n_2,game_active_reg_i_21_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[14:11]),
        .O({game_active_reg_i_21_n_4,game_active_reg_i_21_n_5,game_active_reg_i_21_n_6,game_active_reg_i_21_n_7}),
        .S({game_active_i_56_n_0,game_active_i_57_n_0,game_active_i_58_n_0,game_active_i_59_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_33
       (.CI(game_active_reg_i_17_n_0),
        .CO({game_active_reg_i_33_n_0,game_active_reg_i_33_n_1,game_active_reg_i_33_n_2,game_active_reg_i_33_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[26:23]),
        .O({game_active_reg_i_33_n_4,game_active_reg_i_33_n_5,game_active_reg_i_33_n_6,game_active_reg_i_33_n_7}),
        .S({game_active_i_60_n_0,game_active_i_61_n_0,game_active_i_62_n_0,game_active_i_63_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 game_active_reg_i_43
       (.CI(game_active_reg_i_21_n_0),
        .CO({game_active_reg_i_43_n_0,game_active_reg_i_43_n_1,game_active_reg_i_43_n_2,game_active_reg_i_43_n_3}),
        .CYINIT(\<const0> ),
        .DI(head_x_reg[18:15]),
        .O({game_active_reg_i_43_n_4,game_active_reg_i_43_n_5,game_active_reg_i_43_n_6,game_active_reg_i_43_n_7}),
        .S({game_active_i_64_n_0,game_active_i_65_n_0,game_active_i_66_n_0,game_active_i_67_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \game_score[0]_i_2 
       (.I0(game_score_reg[0]),
        .O(\game_score[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[0] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[0]_i_1_n_7 ),
        .Q(game_score_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\game_score_reg[0]_i_1_n_0 ,\game_score_reg[0]_i_1_n_1 ,\game_score_reg[0]_i_1_n_2 ,\game_score_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\game_score_reg[0]_i_1_n_4 ,\game_score_reg[0]_i_1_n_5 ,\game_score_reg[0]_i_1_n_6 ,\game_score_reg[0]_i_1_n_7 }),
        .S({game_score_reg[3:1],\game_score[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[10] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[8]_i_1_n_5 ),
        .Q(game_score_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[11] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[8]_i_1_n_4 ),
        .Q(game_score_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[12] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[12]_i_1_n_7 ),
        .Q(game_score_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[12]_i_1 
       (.CI(\game_score_reg[8]_i_1_n_0 ),
        .CO({\game_score_reg[12]_i_1_n_0 ,\game_score_reg[12]_i_1_n_1 ,\game_score_reg[12]_i_1_n_2 ,\game_score_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[12]_i_1_n_4 ,\game_score_reg[12]_i_1_n_5 ,\game_score_reg[12]_i_1_n_6 ,\game_score_reg[12]_i_1_n_7 }),
        .S(game_score_reg[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[13] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[12]_i_1_n_6 ),
        .Q(game_score_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[14] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[12]_i_1_n_5 ),
        .Q(game_score_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[15] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[12]_i_1_n_4 ),
        .Q(game_score_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[16] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[16]_i_1_n_7 ),
        .Q(game_score_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[16]_i_1 
       (.CI(\game_score_reg[12]_i_1_n_0 ),
        .CO({\game_score_reg[16]_i_1_n_0 ,\game_score_reg[16]_i_1_n_1 ,\game_score_reg[16]_i_1_n_2 ,\game_score_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[16]_i_1_n_4 ,\game_score_reg[16]_i_1_n_5 ,\game_score_reg[16]_i_1_n_6 ,\game_score_reg[16]_i_1_n_7 }),
        .S(game_score_reg[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[17] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[16]_i_1_n_6 ),
        .Q(game_score_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[18] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[16]_i_1_n_5 ),
        .Q(game_score_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[19] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[16]_i_1_n_4 ),
        .Q(game_score_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[1] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[0]_i_1_n_6 ),
        .Q(game_score_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[20] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[20]_i_1_n_7 ),
        .Q(game_score_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[20]_i_1 
       (.CI(\game_score_reg[16]_i_1_n_0 ),
        .CO({\game_score_reg[20]_i_1_n_0 ,\game_score_reg[20]_i_1_n_1 ,\game_score_reg[20]_i_1_n_2 ,\game_score_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[20]_i_1_n_4 ,\game_score_reg[20]_i_1_n_5 ,\game_score_reg[20]_i_1_n_6 ,\game_score_reg[20]_i_1_n_7 }),
        .S(game_score_reg[23:20]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[21] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[20]_i_1_n_6 ),
        .Q(game_score_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[22] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[20]_i_1_n_5 ),
        .Q(game_score_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[23] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[20]_i_1_n_4 ),
        .Q(game_score_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[24] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[24]_i_1_n_7 ),
        .Q(game_score_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[24]_i_1 
       (.CI(\game_score_reg[20]_i_1_n_0 ),
        .CO({\game_score_reg[24]_i_1_n_0 ,\game_score_reg[24]_i_1_n_1 ,\game_score_reg[24]_i_1_n_2 ,\game_score_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[24]_i_1_n_4 ,\game_score_reg[24]_i_1_n_5 ,\game_score_reg[24]_i_1_n_6 ,\game_score_reg[24]_i_1_n_7 }),
        .S(game_score_reg[27:24]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[25] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[24]_i_1_n_6 ),
        .Q(game_score_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[26] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[24]_i_1_n_5 ),
        .Q(game_score_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[27] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[24]_i_1_n_4 ),
        .Q(game_score_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[28] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[28]_i_1_n_7 ),
        .Q(game_score_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[28]_i_1 
       (.CI(\game_score_reg[24]_i_1_n_0 ),
        .CO({\game_score_reg[28]_i_1_n_1 ,\game_score_reg[28]_i_1_n_2 ,\game_score_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[28]_i_1_n_4 ,\game_score_reg[28]_i_1_n_5 ,\game_score_reg[28]_i_1_n_6 ,\game_score_reg[28]_i_1_n_7 }),
        .S(game_score_reg[31:28]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[29] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[28]_i_1_n_6 ),
        .Q(game_score_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[2] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[0]_i_1_n_5 ),
        .Q(game_score_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[30] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[28]_i_1_n_5 ),
        .Q(game_score_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[31] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[28]_i_1_n_4 ),
        .Q(game_score_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[3] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[0]_i_1_n_4 ),
        .Q(game_score_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[4] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[4]_i_1_n_7 ),
        .Q(game_score_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[4]_i_1 
       (.CI(\game_score_reg[0]_i_1_n_0 ),
        .CO({\game_score_reg[4]_i_1_n_0 ,\game_score_reg[4]_i_1_n_1 ,\game_score_reg[4]_i_1_n_2 ,\game_score_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[4]_i_1_n_4 ,\game_score_reg[4]_i_1_n_5 ,\game_score_reg[4]_i_1_n_6 ,\game_score_reg[4]_i_1_n_7 }),
        .S(game_score_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[5] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[4]_i_1_n_6 ),
        .Q(game_score_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[6] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[4]_i_1_n_5 ),
        .Q(game_score_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[7] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[4]_i_1_n_4 ),
        .Q(game_score_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[8] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[8]_i_1_n_7 ),
        .Q(game_score_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \game_score_reg[8]_i_1 
       (.CI(\game_score_reg[4]_i_1_n_0 ),
        .CO({\game_score_reg[8]_i_1_n_0 ,\game_score_reg[8]_i_1_n_1 ,\game_score_reg[8]_i_1_n_2 ,\game_score_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\game_score_reg[8]_i_1_n_4 ,\game_score_reg[8]_i_1_n_5 ,\game_score_reg[8]_i_1_n_6 ,\game_score_reg[8]_i_1_n_7 }),
        .S(game_score_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \game_score_reg[9] 
       (.C(head_y0_BUFG),
        .CE(\food_y[5]_P_i_1_n_0 ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\game_score_reg[8]_i_1_n_6 ),
        .Q(game_score_reg[9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \h_cntr_reg[0]_i_1 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .I2(h_cntr_reg_reg[9]),
        .I3(h_cntr_reg_reg[8]),
        .I4(\h_cntr_reg[0]_i_3_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \h_cntr_reg[0]_i_3 
       (.I0(\h_cntr_reg[0]_i_5_n_0 ),
        .I1(h_cntr_reg_reg[4]),
        .I2(h_cntr_reg_reg[5]),
        .I3(h_cntr_reg_reg[11]),
        .I4(h_cntr_reg_reg[10]),
        .I5(\h_cntr_reg[0]_i_6_n_0 ),
        .O(\h_cntr_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cntr_reg[0]_i_4 
       (.I0(h_cntr_reg_reg[0]),
        .O(\h_cntr_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \h_cntr_reg[0]_i_5 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\h_cntr_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \h_cntr_reg[0]_i_6 
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(\h_cntr_reg[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[0] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(h_cntr_reg_reg[0]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \h_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\h_cntr_reg_reg[0]_i_2_n_0 ,\h_cntr_reg_reg[0]_i_2_n_1 ,\h_cntr_reg_reg[0]_i_2_n_2 ,\h_cntr_reg_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\h_cntr_reg_reg[0]_i_2_n_4 ,\h_cntr_reg_reg[0]_i_2_n_5 ,\h_cntr_reg_reg[0]_i_2_n_6 ,\h_cntr_reg_reg[0]_i_2_n_7 }),
        .S({h_cntr_reg_reg[3:1],\h_cntr_reg[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[10] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(h_cntr_reg_reg[10]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[11] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(h_cntr_reg_reg[11]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[1] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(h_cntr_reg_reg[1]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[2] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(h_cntr_reg_reg[2]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(h_cntr_reg_reg[3]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[4] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(h_cntr_reg_reg[4]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \h_cntr_reg_reg[4]_i_1 
       (.CI(\h_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\h_cntr_reg_reg[4]_i_1_n_0 ,\h_cntr_reg_reg[4]_i_1_n_1 ,\h_cntr_reg_reg[4]_i_1_n_2 ,\h_cntr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[4]_i_1_n_4 ,\h_cntr_reg_reg[4]_i_1_n_5 ,\h_cntr_reg_reg[4]_i_1_n_6 ,\h_cntr_reg_reg[4]_i_1_n_7 }),
        .S(h_cntr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[5] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(h_cntr_reg_reg[5]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[6] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(h_cntr_reg_reg[6]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[7] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(h_cntr_reg_reg[7]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[8] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(h_cntr_reg_reg[8]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \h_cntr_reg_reg[8]_i_1 
       (.CI(\h_cntr_reg_reg[4]_i_1_n_0 ),
        .CO({\h_cntr_reg_reg[8]_i_1_n_1 ,\h_cntr_reg_reg[8]_i_1_n_2 ,\h_cntr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[8]_i_1_n_4 ,\h_cntr_reg_reg[8]_i_1_n_5 ,\h_cntr_reg_reg[8]_i_1_n_6 ,\h_cntr_reg_reg[8]_i_1_n_7 }),
        .S(h_cntr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[9] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(h_cntr_reg_reg[9]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    h_sync_dly_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(h_sync_reg),
        .Q(VGA_HS_O_OBUF),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    h_sync_reg_i_1
       (.I0(geqOp33_in),
        .I1(ltOp32_in),
        .O(h_sync_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    h_sync_reg_i_10
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(h_sync_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    h_sync_reg_i_11
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(h_sync_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_sync_reg_i_12
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(h_sync_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_sync_reg_i_13
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(h_sync_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    h_sync_reg_i_14
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(h_sync_reg_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    h_sync_reg_i_15
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(h_sync_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    h_sync_reg_i_16
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(h_sync_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    h_sync_reg_i_17
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(h_sync_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    h_sync_reg_i_18
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(h_sync_reg_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_sync_reg_i_5
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(h_sync_reg_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h_sync_reg_i_7
       (.I0(h_cntr_reg_reg[11]),
        .O(h_sync_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_sync_reg_i_8
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(h_sync_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    h_sync_reg_i_9
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(h_sync_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    h_sync_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(h_sync_reg0),
        .Q(h_sync_reg),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h_sync_reg_reg_i_2
       (.CI(h_sync_reg_reg_i_4_n_0),
        .CO(geqOp33_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,h_cntr_reg_reg[11]}),
        .S({\<const0> ,\<const0> ,\<const0> ,h_sync_reg_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h_sync_reg_reg_i_3
       (.CI(h_sync_reg_reg_i_6_n_0),
        .CO({ltOp32_in,h_sync_reg_reg_i_3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,h_sync_reg_i_7_n_0,\<const0> }),
        .S({\<const0> ,\<const0> ,h_sync_reg_i_8_n_0,h_sync_reg_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h_sync_reg_reg_i_4
       (.CI(\<const0> ),
        .CO({h_sync_reg_reg_i_4_n_0,h_sync_reg_reg_i_4_n_1,h_sync_reg_reg_i_4_n_2,h_sync_reg_reg_i_4_n_3}),
        .CYINIT(\h_cntr_reg[0]_i_6_n_0 ),
        .DI({\<const0> ,\<const0> ,h_cntr_reg_reg[5],h_cntr_reg_reg[3]}),
        .S({h_sync_reg_i_10_n_0,h_sync_reg_i_11_n_0,h_sync_reg_i_12_n_0,h_sync_reg_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h_sync_reg_reg_i_6
       (.CI(\<const0> ),
        .CO({h_sync_reg_reg_i_6_n_0,h_sync_reg_reg_i_6_n_1,h_sync_reg_reg_i_6_n_2,h_sync_reg_reg_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,h_sync_reg_i_14_n_0}),
        .S({h_sync_reg_i_15_n_0,h_sync_reg_i_16_n_0,h_sync_reg_i_17_n_0,h_sync_reg_i_18_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    \head_x[0]_i_1 
       (.I0(direction[1]),
        .I1(head_x_reg[0]),
        .O(\head_x[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[12]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[12]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[12]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[12]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[12]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[15]),
        .O(\head_x[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[12]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[14]),
        .O(\head_x[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[12]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[13]),
        .O(\head_x[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[12]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[12]),
        .O(\head_x[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[16]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[16]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[16]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[16]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[16]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[19]),
        .O(\head_x[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[16]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[18]),
        .O(\head_x[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[16]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[17]),
        .O(\head_x[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[16]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[16]),
        .O(\head_x[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[1]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[1]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[1]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[1]_i_5 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[3]),
        .O(\head_x[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[1]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[2]),
        .O(\head_x[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[1]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[1]),
        .O(\head_x[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \head_x[1]_i_8 
       (.I0(direction[1]),
        .I1(head_x_reg[0]),
        .O(\head_x[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[20]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[20]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[20]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[20]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[20]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[23]),
        .O(\head_x[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[20]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[22]),
        .O(\head_x[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[20]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[21]),
        .O(\head_x[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[20]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[20]),
        .O(\head_x[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[24]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[24]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[24]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[24]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[24]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[27]),
        .O(\head_x[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[24]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[26]),
        .O(\head_x[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[24]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[25]),
        .O(\head_x[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[24]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[24]),
        .O(\head_x[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[28]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[28]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \head_x[28]_i_4 
       (.I0(head_x_reg[30]),
        .I1(direction[0]),
        .I2(direction[1]),
        .O(\head_x[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[28]_i_5 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[29]),
        .O(\head_x[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[28]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[28]),
        .O(\head_x[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[4]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[4]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[4]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[4]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[4]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[7]),
        .O(\head_x[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[4]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[6]),
        .O(\head_x[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[4]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[5]),
        .O(\head_x[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[4]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[4]),
        .O(\head_x[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[8]_i_2 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[8]_i_3 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[8]_i_4 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \head_x[8]_i_5 
       (.I0(direction[1]),
        .I1(direction[0]),
        .O(\head_x[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[8]_i_6 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[11]),
        .O(\head_x[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[8]_i_7 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[10]),
        .O(\head_x[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[8]_i_8 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[9]),
        .O(\head_x[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \head_x[8]_i_9 
       (.I0(direction[0]),
        .I1(direction[1]),
        .I2(head_x_reg[8]),
        .O(\head_x[8]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \head_x_reg[0] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\head_x[0]_i_1_n_0 ),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_x_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[10] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[8]_i_1_n_5 ),
        .Q(head_x_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[11] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[8]_i_1_n_4 ),
        .Q(head_x_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[12] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[12]_i_1_n_7 ),
        .Q(head_x_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[12]_i_1 
       (.CI(\head_x_reg[8]_i_1_n_0 ),
        .CO({\head_x_reg[12]_i_1_n_0 ,\head_x_reg[12]_i_1_n_1 ,\head_x_reg[12]_i_1_n_2 ,\head_x_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[12]_i_2_n_0 ,\head_x[12]_i_3_n_0 ,\head_x[12]_i_4_n_0 ,\head_x[12]_i_5_n_0 }),
        .O({\head_x_reg[12]_i_1_n_4 ,\head_x_reg[12]_i_1_n_5 ,\head_x_reg[12]_i_1_n_6 ,\head_x_reg[12]_i_1_n_7 }),
        .S({\head_x[12]_i_6_n_0 ,\head_x[12]_i_7_n_0 ,\head_x[12]_i_8_n_0 ,\head_x[12]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[13] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[12]_i_1_n_6 ),
        .Q(head_x_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[14] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[12]_i_1_n_5 ),
        .Q(head_x_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[15] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[12]_i_1_n_4 ),
        .Q(head_x_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[16] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[16]_i_1_n_7 ),
        .Q(head_x_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[16]_i_1 
       (.CI(\head_x_reg[12]_i_1_n_0 ),
        .CO({\head_x_reg[16]_i_1_n_0 ,\head_x_reg[16]_i_1_n_1 ,\head_x_reg[16]_i_1_n_2 ,\head_x_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[16]_i_2_n_0 ,\head_x[16]_i_3_n_0 ,\head_x[16]_i_4_n_0 ,\head_x[16]_i_5_n_0 }),
        .O({\head_x_reg[16]_i_1_n_4 ,\head_x_reg[16]_i_1_n_5 ,\head_x_reg[16]_i_1_n_6 ,\head_x_reg[16]_i_1_n_7 }),
        .S({\head_x[16]_i_6_n_0 ,\head_x[16]_i_7_n_0 ,\head_x[16]_i_8_n_0 ,\head_x[16]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[17] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[16]_i_1_n_6 ),
        .Q(head_x_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[18] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[16]_i_1_n_5 ),
        .Q(head_x_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[19] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[16]_i_1_n_4 ),
        .Q(head_x_reg[19]));
  FDPE #(
    .INIT(1'b1)) 
    \head_x_reg[1] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\head_x_reg[1]_i_1_n_6 ),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_x_reg[1]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[1]_i_1 
       (.CI(\<const0> ),
        .CO({\head_x_reg[1]_i_1_n_0 ,\head_x_reg[1]_i_1_n_1 ,\head_x_reg[1]_i_1_n_2 ,\head_x_reg[1]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[1]_i_2_n_0 ,\head_x[1]_i_3_n_0 ,\head_x[1]_i_4_n_0 ,direction[1]}),
        .O({\head_x_reg[1]_i_1_n_4 ,\head_x_reg[1]_i_1_n_5 ,\head_x_reg[1]_i_1_n_6 ,\head_x_reg[1]_i_1_n_7 }),
        .S({\head_x[1]_i_5_n_0 ,\head_x[1]_i_6_n_0 ,\head_x[1]_i_7_n_0 ,\head_x[1]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[20] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[20]_i_1_n_7 ),
        .Q(head_x_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[20]_i_1 
       (.CI(\head_x_reg[16]_i_1_n_0 ),
        .CO({\head_x_reg[20]_i_1_n_0 ,\head_x_reg[20]_i_1_n_1 ,\head_x_reg[20]_i_1_n_2 ,\head_x_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[20]_i_2_n_0 ,\head_x[20]_i_3_n_0 ,\head_x[20]_i_4_n_0 ,\head_x[20]_i_5_n_0 }),
        .O({\head_x_reg[20]_i_1_n_4 ,\head_x_reg[20]_i_1_n_5 ,\head_x_reg[20]_i_1_n_6 ,\head_x_reg[20]_i_1_n_7 }),
        .S({\head_x[20]_i_6_n_0 ,\head_x[20]_i_7_n_0 ,\head_x[20]_i_8_n_0 ,\head_x[20]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[21] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[20]_i_1_n_6 ),
        .Q(head_x_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[22] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[20]_i_1_n_5 ),
        .Q(head_x_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[23] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[20]_i_1_n_4 ),
        .Q(head_x_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[24] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[24]_i_1_n_7 ),
        .Q(head_x_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[24]_i_1 
       (.CI(\head_x_reg[20]_i_1_n_0 ),
        .CO({\head_x_reg[24]_i_1_n_0 ,\head_x_reg[24]_i_1_n_1 ,\head_x_reg[24]_i_1_n_2 ,\head_x_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[24]_i_2_n_0 ,\head_x[24]_i_3_n_0 ,\head_x[24]_i_4_n_0 ,\head_x[24]_i_5_n_0 }),
        .O({\head_x_reg[24]_i_1_n_4 ,\head_x_reg[24]_i_1_n_5 ,\head_x_reg[24]_i_1_n_6 ,\head_x_reg[24]_i_1_n_7 }),
        .S({\head_x[24]_i_6_n_0 ,\head_x[24]_i_7_n_0 ,\head_x[24]_i_8_n_0 ,\head_x[24]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[25] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[24]_i_1_n_6 ),
        .Q(head_x_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[26] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[24]_i_1_n_5 ),
        .Q(head_x_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[27] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[24]_i_1_n_4 ),
        .Q(head_x_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[28] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[28]_i_1_n_7 ),
        .Q(head_x_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[28]_i_1 
       (.CI(\head_x_reg[24]_i_1_n_0 ),
        .CO({\head_x_reg[28]_i_1_n_2 ,\head_x_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\head_x[28]_i_2_n_0 ,\head_x[28]_i_3_n_0 }),
        .O({\head_x_reg[28]_i_1_n_5 ,\head_x_reg[28]_i_1_n_6 ,\head_x_reg[28]_i_1_n_7 }),
        .S({\<const0> ,\head_x[28]_i_4_n_0 ,\head_x[28]_i_5_n_0 ,\head_x[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[29] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[28]_i_1_n_6 ),
        .Q(head_x_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[2] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[1]_i_1_n_5 ),
        .Q(head_x_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[30] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[28]_i_1_n_5 ),
        .Q(head_x_reg[30]));
  FDPE #(
    .INIT(1'b1)) 
    \head_x_reg[3] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\head_x_reg[1]_i_1_n_4 ),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_x_reg[3]));
  FDPE #(
    .INIT(1'b1)) 
    \head_x_reg[4] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\head_x_reg[4]_i_1_n_7 ),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_x_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[4]_i_1 
       (.CI(\head_x_reg[1]_i_1_n_0 ),
        .CO({\head_x_reg[4]_i_1_n_0 ,\head_x_reg[4]_i_1_n_1 ,\head_x_reg[4]_i_1_n_2 ,\head_x_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[4]_i_2_n_0 ,\head_x[4]_i_3_n_0 ,\head_x[4]_i_4_n_0 ,\head_x[4]_i_5_n_0 }),
        .O({\head_x_reg[4]_i_1_n_4 ,\head_x_reg[4]_i_1_n_5 ,\head_x_reg[4]_i_1_n_6 ,\head_x_reg[4]_i_1_n_7 }),
        .S({\head_x[4]_i_6_n_0 ,\head_x[4]_i_7_n_0 ,\head_x[4]_i_8_n_0 ,\head_x[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[5] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[4]_i_1_n_6 ),
        .Q(head_x_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[6] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[4]_i_1_n_5 ),
        .Q(head_x_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[7] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[4]_i_1_n_4 ),
        .Q(head_x_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[8] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[8]_i_1_n_7 ),
        .Q(head_x_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \head_x_reg[8]_i_1 
       (.CI(\head_x_reg[4]_i_1_n_0 ),
        .CO({\head_x_reg[8]_i_1_n_0 ,\head_x_reg[8]_i_1_n_1 ,\head_x_reg[8]_i_1_n_2 ,\head_x_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\head_x[8]_i_2_n_0 ,\head_x[8]_i_3_n_0 ,\head_x[8]_i_4_n_0 ,\head_x[8]_i_5_n_0 }),
        .O({\head_x_reg[8]_i_1_n_4 ,\head_x_reg[8]_i_1_n_5 ,\head_x_reg[8]_i_1_n_6 ,\head_x_reg[8]_i_1_n_7 }),
        .S({\head_x[8]_i_6_n_0 ,\head_x[8]_i_7_n_0 ,\head_x[8]_i_8_n_0 ,\head_x[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_x_reg[9] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(\head_x_reg[8]_i_1_n_6 ),
        .Q(head_x_reg[9]));
  BUFG head_y0_BUFG_inst
       (.I(head_y0),
        .O(head_y0_BUFG));
  LUT6 #(
    .INIT(64'hFEEB0000FFFF0116)) 
    head_y0_BUFG_inst_i_1
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(clk_1hz_reg_n_0),
        .I5(head_y0_BUFG_inst_i_2_n_0),
        .O(head_y0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    head_y0_BUFG_inst_i_2
       (.I0(clk_4hz_reg_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[3]),
        .I3(clk_8hz_reg_n_0),
        .I4(sw_IBUF[1]),
        .I5(clk_2hz_reg_n_0),
        .O(head_y0_BUFG_inst_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[0]_i_1 
       (.I0(head_y[0]),
        .I1(direction[1]),
        .O(new_head_y1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[10]_i_1 
       (.I0(head_y[10]),
        .I1(direction[1]),
        .I2(\head_y_reg[12]_i_2_n_6 ),
        .O(new_head_y1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[11]_i_1 
       (.I0(head_y[11]),
        .I1(direction[1]),
        .I2(\head_y_reg[12]_i_2_n_5 ),
        .O(new_head_y1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[12]_i_1 
       (.I0(head_y[12]),
        .I1(direction[1]),
        .I2(\head_y_reg[12]_i_2_n_4 ),
        .O(new_head_y1_in[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[12]_i_3 
       (.I0(head_y[11]),
        .I1(head_y[12]),
        .O(\head_y[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[12]_i_4 
       (.I0(head_y[10]),
        .I1(head_y[11]),
        .O(\head_y[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[12]_i_5 
       (.I0(head_y[9]),
        .I1(head_y[10]),
        .O(\head_y[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[12]_i_6 
       (.I0(head_y[8]),
        .I1(head_y[9]),
        .O(\head_y[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[13]_i_1 
       (.I0(head_y[13]),
        .I1(direction[1]),
        .I2(\head_y_reg[16]_i_2_n_7 ),
        .O(new_head_y1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[14]_i_1 
       (.I0(head_y[14]),
        .I1(direction[1]),
        .I2(\head_y_reg[16]_i_2_n_6 ),
        .O(new_head_y1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[15]_i_1 
       (.I0(head_y[15]),
        .I1(direction[1]),
        .I2(\head_y_reg[16]_i_2_n_5 ),
        .O(new_head_y1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[16]_i_1 
       (.I0(head_y[16]),
        .I1(direction[1]),
        .I2(\head_y_reg[16]_i_2_n_4 ),
        .O(new_head_y1_in[16]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[16]_i_3 
       (.I0(head_y[15]),
        .I1(head_y[16]),
        .O(\head_y[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[16]_i_4 
       (.I0(head_y[14]),
        .I1(head_y[15]),
        .O(\head_y[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[16]_i_5 
       (.I0(head_y[13]),
        .I1(head_y[14]),
        .O(\head_y[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[16]_i_6 
       (.I0(head_y[12]),
        .I1(head_y[13]),
        .O(\head_y[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[17]_i_1 
       (.I0(head_y[17]),
        .I1(direction[1]),
        .I2(\head_y_reg[20]_i_2_n_7 ),
        .O(new_head_y1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[18]_i_1 
       (.I0(head_y[18]),
        .I1(direction[1]),
        .I2(\head_y_reg[20]_i_2_n_6 ),
        .O(new_head_y1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[19]_i_1 
       (.I0(head_y[19]),
        .I1(direction[1]),
        .I2(\head_y_reg[20]_i_2_n_5 ),
        .O(new_head_y1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[1]_i_1 
       (.I0(head_y[1]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_7 ),
        .O(new_head_y1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[20]_i_1 
       (.I0(head_y[20]),
        .I1(direction[1]),
        .I2(\head_y_reg[20]_i_2_n_4 ),
        .O(new_head_y1_in[20]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[20]_i_3 
       (.I0(head_y[19]),
        .I1(head_y[20]),
        .O(\head_y[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[20]_i_4 
       (.I0(head_y[18]),
        .I1(head_y[19]),
        .O(\head_y[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[20]_i_5 
       (.I0(head_y[17]),
        .I1(head_y[18]),
        .O(\head_y[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[20]_i_6 
       (.I0(head_y[16]),
        .I1(head_y[17]),
        .O(\head_y[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[21]_i_1 
       (.I0(head_y[21]),
        .I1(direction[1]),
        .I2(\head_y_reg[24]_i_2_n_7 ),
        .O(new_head_y1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[22]_i_1 
       (.I0(head_y[22]),
        .I1(direction[1]),
        .I2(\head_y_reg[24]_i_2_n_6 ),
        .O(new_head_y1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[23]_i_1 
       (.I0(head_y[23]),
        .I1(direction[1]),
        .I2(\head_y_reg[24]_i_2_n_5 ),
        .O(new_head_y1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[24]_i_1 
       (.I0(head_y[24]),
        .I1(direction[1]),
        .I2(\head_y_reg[24]_i_2_n_4 ),
        .O(new_head_y1_in[24]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[24]_i_3 
       (.I0(head_y[23]),
        .I1(head_y[24]),
        .O(\head_y[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[24]_i_4 
       (.I0(head_y[22]),
        .I1(head_y[23]),
        .O(\head_y[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[24]_i_5 
       (.I0(head_y[21]),
        .I1(head_y[22]),
        .O(\head_y[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[24]_i_6 
       (.I0(head_y[20]),
        .I1(head_y[21]),
        .O(\head_y[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[25]_i_1 
       (.I0(head_y[25]),
        .I1(direction[1]),
        .I2(\head_y_reg[28]_i_2_n_7 ),
        .O(new_head_y1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[26]_i_1 
       (.I0(head_y[26]),
        .I1(direction[1]),
        .I2(\head_y_reg[28]_i_2_n_6 ),
        .O(new_head_y1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[27]_i_1 
       (.I0(head_y[27]),
        .I1(direction[1]),
        .I2(\head_y_reg[28]_i_2_n_5 ),
        .O(new_head_y1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[28]_i_1 
       (.I0(head_y[28]),
        .I1(direction[1]),
        .I2(\head_y_reg[28]_i_2_n_4 ),
        .O(new_head_y1_in[28]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[28]_i_3 
       (.I0(head_y[27]),
        .I1(head_y[28]),
        .O(\head_y[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[28]_i_4 
       (.I0(head_y[26]),
        .I1(head_y[27]),
        .O(\head_y[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[28]_i_5 
       (.I0(head_y[25]),
        .I1(head_y[26]),
        .O(\head_y[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[28]_i_6 
       (.I0(head_y[24]),
        .I1(head_y[25]),
        .O(\head_y[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[29]_i_1 
       (.I0(head_y[29]),
        .I1(direction[1]),
        .I2(\head_y_reg[30]_i_2_n_7 ),
        .O(new_head_y1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[2]_i_1 
       (.I0(head_y[2]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_6 ),
        .O(new_head_y1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[30]_i_1 
       (.I0(head_y[30]),
        .I1(direction[1]),
        .I2(\head_y_reg[30]_i_2_n_6 ),
        .O(new_head_y1_in[30]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[30]_i_3 
       (.I0(head_y[29]),
        .I1(head_y[30]),
        .O(\head_y[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[30]_i_4 
       (.I0(head_y[28]),
        .I1(head_y[29]),
        .O(\head_y[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[3]_i_1 
       (.I0(head_y[3]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_5 ),
        .O(new_head_y1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[4]_i_1 
       (.I0(head_y[4]),
        .I1(direction[1]),
        .I2(\head_y_reg[4]_i_2_n_4 ),
        .O(new_head_y1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[4]_i_3 
       (.I0(head_y[3]),
        .I1(head_y[4]),
        .O(\head_y[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[4]_i_4 
       (.I0(head_y[2]),
        .I1(head_y[3]),
        .O(\head_y[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[4]_i_5 
       (.I0(head_y[1]),
        .I1(head_y[2]),
        .O(\head_y[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[4]_i_6 
       (.I0(head_y[1]),
        .I1(direction[0]),
        .O(\head_y[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[5]_i_1 
       (.I0(head_y[5]),
        .I1(direction[1]),
        .I2(\head_y_reg[8]_i_2_n_7 ),
        .O(new_head_y1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[6]_i_1 
       (.I0(head_y[6]),
        .I1(direction[1]),
        .I2(\head_y_reg[8]_i_2_n_6 ),
        .O(new_head_y1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[7]_i_1 
       (.I0(head_y[7]),
        .I1(direction[1]),
        .I2(\head_y_reg[8]_i_2_n_5 ),
        .O(new_head_y1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[8]_i_1 
       (.I0(head_y[8]),
        .I1(direction[1]),
        .I2(\head_y_reg[8]_i_2_n_4 ),
        .O(new_head_y1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[8]_i_3 
       (.I0(head_y[7]),
        .I1(head_y[8]),
        .O(\head_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[8]_i_4 
       (.I0(head_y[6]),
        .I1(head_y[7]),
        .O(\head_y[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[8]_i_5 
       (.I0(head_y[5]),
        .I1(head_y[6]),
        .O(\head_y[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \head_y[8]_i_6 
       (.I0(head_y[4]),
        .I1(head_y[5]),
        .O(\head_y[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \head_y[9]_i_1 
       (.I0(head_y[9]),
        .I1(direction[1]),
        .I2(\head_y_reg[12]_i_2_n_7 ),
        .O(new_head_y1_in[9]));
  FDCE #(
    .INIT(1'b1)) 
    \head_y_reg[0] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[0]),
        .Q(head_y[0]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[10] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[10]),
        .Q(head_y[10]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[11] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[11]),
        .Q(head_y[11]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[12] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[12]),
        .Q(head_y[12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[12]_i_2 
       (.CI(\head_y_reg[8]_i_2_n_0 ),
        .CO({\head_y_reg[12]_i_2_n_0 ,\head_y_reg[12]_i_2_n_1 ,\head_y_reg[12]_i_2_n_2 ,\head_y_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[11:8]),
        .O({\head_y_reg[12]_i_2_n_4 ,\head_y_reg[12]_i_2_n_5 ,\head_y_reg[12]_i_2_n_6 ,\head_y_reg[12]_i_2_n_7 }),
        .S({\head_y[12]_i_3_n_0 ,\head_y[12]_i_4_n_0 ,\head_y[12]_i_5_n_0 ,\head_y[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[13] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[13]),
        .Q(head_y[13]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[14] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[14]),
        .Q(head_y[14]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[15] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[15]),
        .Q(head_y[15]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[16] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[16]),
        .Q(head_y[16]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[16]_i_2 
       (.CI(\head_y_reg[12]_i_2_n_0 ),
        .CO({\head_y_reg[16]_i_2_n_0 ,\head_y_reg[16]_i_2_n_1 ,\head_y_reg[16]_i_2_n_2 ,\head_y_reg[16]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[15:12]),
        .O({\head_y_reg[16]_i_2_n_4 ,\head_y_reg[16]_i_2_n_5 ,\head_y_reg[16]_i_2_n_6 ,\head_y_reg[16]_i_2_n_7 }),
        .S({\head_y[16]_i_3_n_0 ,\head_y[16]_i_4_n_0 ,\head_y[16]_i_5_n_0 ,\head_y[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[17] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[17]),
        .Q(head_y[17]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[18] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[18]),
        .Q(head_y[18]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[19] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[19]),
        .Q(head_y[19]));
  FDPE #(
    .INIT(1'b0)) 
    \head_y_reg[1] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(new_head_y1_in[1]),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_y[1]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[20] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[20]),
        .Q(head_y[20]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[20]_i_2 
       (.CI(\head_y_reg[16]_i_2_n_0 ),
        .CO({\head_y_reg[20]_i_2_n_0 ,\head_y_reg[20]_i_2_n_1 ,\head_y_reg[20]_i_2_n_2 ,\head_y_reg[20]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[19:16]),
        .O({\head_y_reg[20]_i_2_n_4 ,\head_y_reg[20]_i_2_n_5 ,\head_y_reg[20]_i_2_n_6 ,\head_y_reg[20]_i_2_n_7 }),
        .S({\head_y[20]_i_3_n_0 ,\head_y[20]_i_4_n_0 ,\head_y[20]_i_5_n_0 ,\head_y[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[21] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[21]),
        .Q(head_y[21]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[22] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[22]),
        .Q(head_y[22]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[23] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[23]),
        .Q(head_y[23]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[24] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[24]),
        .Q(head_y[24]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[24]_i_2 
       (.CI(\head_y_reg[20]_i_2_n_0 ),
        .CO({\head_y_reg[24]_i_2_n_0 ,\head_y_reg[24]_i_2_n_1 ,\head_y_reg[24]_i_2_n_2 ,\head_y_reg[24]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[23:20]),
        .O({\head_y_reg[24]_i_2_n_4 ,\head_y_reg[24]_i_2_n_5 ,\head_y_reg[24]_i_2_n_6 ,\head_y_reg[24]_i_2_n_7 }),
        .S({\head_y[24]_i_3_n_0 ,\head_y[24]_i_4_n_0 ,\head_y[24]_i_5_n_0 ,\head_y[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[25] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[25]),
        .Q(head_y[25]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[26] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[26]),
        .Q(head_y[26]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[27] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[27]),
        .Q(head_y[27]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[28] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[28]),
        .Q(head_y[28]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[28]_i_2 
       (.CI(\head_y_reg[24]_i_2_n_0 ),
        .CO({\head_y_reg[28]_i_2_n_0 ,\head_y_reg[28]_i_2_n_1 ,\head_y_reg[28]_i_2_n_2 ,\head_y_reg[28]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[27:24]),
        .O({\head_y_reg[28]_i_2_n_4 ,\head_y_reg[28]_i_2_n_5 ,\head_y_reg[28]_i_2_n_6 ,\head_y_reg[28]_i_2_n_7 }),
        .S({\head_y[28]_i_3_n_0 ,\head_y[28]_i_4_n_0 ,\head_y[28]_i_5_n_0 ,\head_y[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[29] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[29]),
        .Q(head_y[29]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[2] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[2]),
        .Q(head_y[2]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[30] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[30]),
        .Q(head_y[30]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[30]_i_2 
       (.CI(\head_y_reg[28]_i_2_n_0 ),
        .CO(\head_y_reg[30]_i_2_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,head_y[28]}),
        .O({\head_y_reg[30]_i_2_n_6 ,\head_y_reg[30]_i_2_n_7 }),
        .S({\<const0> ,\<const0> ,\head_y[30]_i_3_n_0 ,\head_y[30]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[3] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[3]),
        .Q(head_y[3]));
  FDPE #(
    .INIT(1'b1)) 
    \head_y_reg[4] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(new_head_y1_in[4]),
        .PRE(\direction[1]_i_2_n_0 ),
        .Q(head_y[4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\head_y_reg[4]_i_2_n_0 ,\head_y_reg[4]_i_2_n_1 ,\head_y_reg[4]_i_2_n_2 ,\head_y_reg[4]_i_2_n_3 }),
        .CYINIT(head_y[0]),
        .DI({head_y[3:1],direction[0]}),
        .O({\head_y_reg[4]_i_2_n_4 ,\head_y_reg[4]_i_2_n_5 ,\head_y_reg[4]_i_2_n_6 ,\head_y_reg[4]_i_2_n_7 }),
        .S({\head_y[4]_i_3_n_0 ,\head_y[4]_i_4_n_0 ,\head_y[4]_i_5_n_0 ,\head_y[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[5] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[5]),
        .Q(head_y[5]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[6] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[6]),
        .Q(head_y[6]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[7] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[7]),
        .Q(head_y[7]));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[8] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[8]),
        .Q(head_y[8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \head_y_reg[8]_i_2 
       (.CI(\head_y_reg[4]_i_2_n_0 ),
        .CO({\head_y_reg[8]_i_2_n_0 ,\head_y_reg[8]_i_2_n_1 ,\head_y_reg[8]_i_2_n_2 ,\head_y_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(head_y[7:4]),
        .O({\head_y_reg[8]_i_2_n_4 ,\head_y_reg[8]_i_2_n_5 ,\head_y_reg[8]_i_2_n_6 ,\head_y_reg[8]_i_2_n_7 }),
        .S({\head_y[8]_i_3_n_0 ,\head_y[8]_i_4_n_0 ,\head_y[8]_i_5_n_0 ,\head_y[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \head_y_reg[9] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .CLR(\direction[1]_i_2_n_0 ),
        .D(new_head_y1_in[9]),
        .Q(head_y[9]));
  OBUF \led_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(\led_OBUF[3]_inst_i_2_n_0 ),
        .I1(\led_OBUF[3]_inst_i_3_n_0 ),
        .I2(game_score_reg[1]),
        .I3(game_score_reg[0]),
        .I4(\led_OBUF[3]_inst_i_4_n_0 ),
        .I5(\led_OBUF[3]_inst_i_5_n_0 ),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(\led_OBUF[3]_inst_i_2_n_0 ),
        .I1(\led_OBUF[3]_inst_i_3_n_0 ),
        .I2(game_score_reg[0]),
        .I3(game_score_reg[1]),
        .I4(\led_OBUF[3]_inst_i_4_n_0 ),
        .I5(\led_OBUF[3]_inst_i_5_n_0 ),
        .O(led_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \led_OBUF[3]_inst_i_2 
       (.I0(\led_OBUF[3]_inst_i_6_n_0 ),
        .I1(game_score_reg[23]),
        .I2(game_score_reg[24]),
        .I3(game_score_reg[18]),
        .I4(game_score_reg[28]),
        .I5(\led_OBUF[3]_inst_i_7_n_0 ),
        .O(\led_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[3]_inst_i_3 
       (.I0(game_score_reg[4]),
        .I1(game_score_reg[6]),
        .I2(game_score_reg[7]),
        .I3(game_score_reg[5]),
        .O(\led_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_OBUF[3]_inst_i_4 
       (.I0(game_score_reg[3]),
        .I1(game_score_reg[2]),
        .O(\led_OBUF[3]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_OBUF[3]_inst_i_5 
       (.I0(game_score_reg[14]),
        .I1(game_score_reg[11]),
        .I2(game_score_reg[8]),
        .I3(game_score_reg[13]),
        .I4(\led_OBUF[3]_inst_i_8_n_0 ),
        .O(\led_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[3]_inst_i_6 
       (.I0(game_score_reg[25]),
        .I1(game_score_reg[29]),
        .I2(game_score_reg[30]),
        .I3(game_score_reg[31]),
        .O(\led_OBUF[3]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_OBUF[3]_inst_i_7 
       (.I0(game_score_reg[21]),
        .I1(game_score_reg[19]),
        .I2(game_score_reg[22]),
        .I3(game_score_reg[16]),
        .I4(\led_OBUF[3]_inst_i_9_n_0 ),
        .O(\led_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[3]_inst_i_8 
       (.I0(game_score_reg[9]),
        .I1(game_score_reg[12]),
        .I2(game_score_reg[15]),
        .I3(game_score_reg[10]),
        .O(\led_OBUF[3]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[3]_inst_i_9 
       (.I0(game_score_reg[17]),
        .I1(game_score_reg[27]),
        .I2(game_score_reg[20]),
        .I3(game_score_reg[26]),
        .O(\led_OBUF[3]_inst_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_10__0
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(pixel_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_10__1
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(pixel_i_10__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_11__0
       (.I0(h_cntr_reg_reg[5]),
        .I1(h_cntr_reg_reg[4]),
        .O(pixel_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_11__1
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(pixel_i_11__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_12__0
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(pixel_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_13
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(pixel_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_13__0
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(pixel_i_13__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_14__0
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(pixel_i_14__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_14__1
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(pixel_i_14__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_15__0
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(pixel_i_15__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_15__1
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(pixel_i_15__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_16
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(pixel_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_16__1
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(pixel_i_16__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_17__0
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(pixel_i_17__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_18
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(pixel_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_19
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(pixel_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_20
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(pixel_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_21
       (.I0(v_cntr_reg_reg),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(pixel_i_21_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_22
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(pixel_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_23
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(pixel_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_24
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(pixel_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_25
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(pixel_i_25_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_26
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(pixel_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_27
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(pixel_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_28
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(pixel_i_28_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_7
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(pixel_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_8
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(pixel_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_8__0
       (.I0(v_cntr_reg_reg__0[11]),
        .I1(v_cntr_reg_reg__0[10]),
        .O(pixel_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_9
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[8]),
        .O(pixel_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_9__0
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(pixel_i_9__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_12
       (.CI(\<const0> ),
        .CO({pixel_reg_i_12_n_0,pixel_reg_i_12_n_1,pixel_reg_i_12_n_2,pixel_reg_i_12_n_3}),
        .CYINIT(\<const1> ),
        .DI({pixel_i_22_n_0,h_cntr_reg_reg[5],pixel_i_23_n_0,pixel_i_24_n_0}),
        .S({pixel_i_25_n_0,pixel_i_26_n_0,pixel_i_27_n_0,pixel_i_28_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_5
       (.CI(pixel_reg_i_6_n_0),
        .CO({pixel_reg_i_5_n_2,pixel_reg_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pixel_i_7_n_0,\<const0> }),
        .S({\<const0> ,\<const0> ,pixel_i_8_n_0,pixel_i_9__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_5__0
       (.CI(pixel_reg_i_7__0_n_0),
        .CO({pixel31_in,pixel_reg_i_5__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pixel_i_8__0_n_0,pixel_i_9_n_0}),
        .S({\<const0> ,\<const0> ,pixel_i_10__0_n_0,pixel_i_11__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_6
       (.CI(\<const0> ),
        .CO({pixel_reg_i_6_n_0,pixel_reg_i_6_n_1,pixel_reg_i_6_n_2,pixel_reg_i_6_n_3}),
        .CYINIT(\<const1> ),
        .DI({pixel_i_10__1_n_0,pixel_i_11__0_n_0,h_cntr_reg_reg[3],pixel_i_12__0_n_0}),
        .S({pixel_i_13__0_n_0,pixel_i_14__1_n_0,pixel_i_15__1_n_0,pixel_i_16__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_6__1
       (.CI(pixel_reg_i_12_n_0),
        .CO({pixel32_in,pixel_reg_i_6__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,h_cntr_reg_reg[11],pixel_i_13_n_0}),
        .S({\<const0> ,\<const0> ,pixel_i_14__0_n_0,pixel_i_15__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_7__0
       (.CI(\<const0> ),
        .CO({pixel_reg_i_7__0_n_0,pixel_reg_i_7__0_n_1,pixel_reg_i_7__0_n_2,pixel_reg_i_7__0_n_3}),
        .CYINIT(\<const1> ),
        .DI({v_cntr_reg_reg__0[7],pixel_i_16_n_0,v_cntr_reg_reg__0[3],pixel_i_17__0_n_0}),
        .S({pixel_i_18_n_0,pixel_i_19_n_0,pixel_i_20_n_0,pixel_i_21_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[0]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[3]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[3]_i_3_n_7 ),
        .O(\random_x[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[10]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[11]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[11]_i_3_n_5 ),
        .O(\random_x[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[11]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[11]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[11]_i_3_n_4 ),
        .O(\random_x[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[11]_i_10 
       (.I0(random_x3[9]),
        .I1(random_x3[31]),
        .I2(random_x5[9]),
        .O(\random_x[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[11]_i_11 
       (.I0(random_x3[8]),
        .I1(random_x3[31]),
        .I2(random_x5[8]),
        .O(\random_x[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[11]_i_14 
       (.I0(\random_x_reg[15]_i_26_n_7 ),
        .I1(\random_x_reg[15]_i_27_n_6 ),
        .O(\random_x[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[11]_i_15 
       (.I0(\random_x_reg[7]_i_12_n_4 ),
        .I1(\random_x_reg[15]_i_27_n_7 ),
        .O(\random_x[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[11]_i_16 
       (.I0(\random_x_reg[7]_i_12_n_5 ),
        .I1(random_x[1]),
        .O(\random_x[11]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[11]_i_17 
       (.I0(random_x[0]),
        .I1(\random_x_reg[7]_i_12_n_6 ),
        .O(\random_x[11]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[11]_i_18 
       (.I0(\random_x_reg[15]_i_27_n_6 ),
        .I1(\random_x_reg[15]_i_26_n_7 ),
        .I2(\random_x_reg[15]_i_27_n_5 ),
        .I3(\random_x_reg[15]_i_26_n_6 ),
        .O(\random_x[11]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[11]_i_19 
       (.I0(\random_x_reg[15]_i_27_n_7 ),
        .I1(\random_x_reg[7]_i_12_n_4 ),
        .I2(\random_x_reg[15]_i_27_n_6 ),
        .I3(\random_x_reg[15]_i_26_n_7 ),
        .O(\random_x[11]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[11]_i_20 
       (.I0(random_x[1]),
        .I1(\random_x_reg[7]_i_12_n_5 ),
        .I2(\random_x_reg[15]_i_27_n_7 ),
        .I3(\random_x_reg[7]_i_12_n_4 ),
        .O(\random_x[11]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[11]_i_21 
       (.I0(\random_x_reg[7]_i_12_n_6 ),
        .I1(random_x[0]),
        .I2(random_x[1]),
        .I3(\random_x_reg[7]_i_12_n_5 ),
        .O(\random_x[11]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[11]_i_22 
       (.I0(random_x3[8]),
        .O(\random_x[11]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[11]_i_23 
       (.I0(random_x3[7]),
        .O(\random_x[11]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[11]_i_24 
       (.I0(random_x3[6]),
        .O(\random_x[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[11]_i_25 
       (.I0(\random_x_reg[7]_i_12_n_6 ),
        .I1(random_x[0]),
        .O(\random_x[11]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[11]_i_4 
       (.I0(random_x5[11]),
        .I1(random_x3[31]),
        .I2(random_x3[11]),
        .O(random_x4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[11]_i_5 
       (.I0(random_x5[10]),
        .I1(random_x3[31]),
        .I2(random_x3[10]),
        .O(random_x4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[11]_i_6 
       (.I0(random_x5[9]),
        .I1(random_x3[31]),
        .I2(random_x3[9]),
        .O(random_x4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[11]_i_7 
       (.I0(random_x5[8]),
        .I1(random_x3[31]),
        .I2(random_x3[8]),
        .O(random_x4[8]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[11]_i_8 
       (.I0(random_x3[11]),
        .I1(random_x3[31]),
        .I2(random_x5[11]),
        .O(\random_x[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[11]_i_9 
       (.I0(random_x3[10]),
        .I1(random_x3[31]),
        .I2(random_x5[10]),
        .O(\random_x[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[12]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[15]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[15]_i_3_n_7 ),
        .O(\random_x[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[13]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[15]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[15]_i_3_n_6 ),
        .O(\random_x[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[14]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[15]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[15]_i_3_n_5 ),
        .O(\random_x[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[15]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[15]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[15]_i_3_n_4 ),
        .O(\random_x[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[15]_i_10 
       (.I0(random_x3[13]),
        .I1(random_x3[31]),
        .I2(random_x5[13]),
        .O(\random_x[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[15]_i_11 
       (.I0(random_x3[12]),
        .I1(random_x3[31]),
        .I2(random_x5[12]),
        .O(\random_x[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[15]_i_14 
       (.I0(\random_x_reg[19]_i_26_n_7 ),
        .I1(\random_x_reg[19]_i_27_n_6 ),
        .O(\random_x[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[15]_i_15 
       (.I0(\random_x_reg[15]_i_26_n_4 ),
        .I1(\random_x_reg[19]_i_27_n_7 ),
        .O(\random_x[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[15]_i_16 
       (.I0(\random_x_reg[15]_i_26_n_5 ),
        .I1(\random_x_reg[15]_i_27_n_4 ),
        .O(\random_x[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[15]_i_17 
       (.I0(\random_x_reg[15]_i_26_n_6 ),
        .I1(\random_x_reg[15]_i_27_n_5 ),
        .O(\random_x[15]_i_17_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \random_x[15]_i_18 
       (.I0(\random_x_reg[19]_i_26_n_6 ),
        .I1(\random_x_reg[19]_i_27_n_5 ),
        .I2(\random_x_reg[19]_i_27_n_6 ),
        .I3(\random_x_reg[19]_i_26_n_7 ),
        .O(\random_x[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[15]_i_19 
       (.I0(\random_x_reg[19]_i_27_n_7 ),
        .I1(\random_x_reg[15]_i_26_n_4 ),
        .I2(\random_x_reg[19]_i_27_n_6 ),
        .I3(\random_x_reg[19]_i_26_n_7 ),
        .O(\random_x[15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[15]_i_20 
       (.I0(\random_x_reg[15]_i_27_n_4 ),
        .I1(\random_x_reg[15]_i_26_n_5 ),
        .I2(\random_x_reg[19]_i_27_n_7 ),
        .I3(\random_x_reg[15]_i_26_n_4 ),
        .O(\random_x[15]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_x[15]_i_21 
       (.I0(\random_x_reg[15]_i_27_n_5 ),
        .I1(\random_x_reg[15]_i_26_n_6 ),
        .I2(\random_x_reg[15]_i_27_n_4 ),
        .I3(\random_x_reg[15]_i_26_n_5 ),
        .O(\random_x[15]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[15]_i_22 
       (.I0(random_x3[12]),
        .O(\random_x[15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[15]_i_23 
       (.I0(random_x3[11]),
        .O(\random_x[15]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[15]_i_24 
       (.I0(random_x3[10]),
        .O(\random_x[15]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[15]_i_25 
       (.I0(random_x3[9]),
        .O(\random_x[15]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_28 
       (.I0(random_x[8]),
        .I1(random_x[11]),
        .O(\random_x[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_29 
       (.I0(random_x[7]),
        .I1(random_x[10]),
        .O(\random_x[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_30 
       (.I0(random_x[6]),
        .I1(random_x[9]),
        .O(\random_x[15]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_31 
       (.I0(random_x[5]),
        .I1(random_x[8]),
        .O(\random_x[15]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[15]_i_32 
       (.I0(random_x[5]),
        .I1(\random_x_reg[15]_i_36_n_4 ),
        .O(\random_x[15]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[15]_i_33 
       (.I0(random_x[4]),
        .I1(\random_x_reg[15]_i_36_n_5 ),
        .O(\random_x[15]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[15]_i_34 
       (.I0(random_x[3]),
        .I1(\random_x_reg[15]_i_36_n_6 ),
        .O(\random_x[15]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[15]_i_35 
       (.I0(random_x[2]),
        .I1(random_x[0]),
        .O(\random_x[15]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_37 
       (.I0(random_x[1]),
        .I1(random_x[3]),
        .O(\random_x[15]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[15]_i_38 
       (.I0(random_x[0]),
        .I1(random_x[2]),
        .O(\random_x[15]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[15]_i_39 
       (.I0(random_x[1]),
        .O(\random_x[15]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[15]_i_4 
       (.I0(random_x5[15]),
        .I1(random_x3[31]),
        .I2(random_x3[15]),
        .O(random_x4[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[15]_i_5 
       (.I0(random_x5[14]),
        .I1(random_x3[31]),
        .I2(random_x3[14]),
        .O(random_x4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[15]_i_6 
       (.I0(random_x5[13]),
        .I1(random_x3[31]),
        .I2(random_x3[13]),
        .O(random_x4[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[15]_i_7 
       (.I0(random_x5[12]),
        .I1(random_x3[31]),
        .I2(random_x3[12]),
        .O(random_x4[12]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[15]_i_8 
       (.I0(random_x3[15]),
        .I1(random_x3[31]),
        .I2(random_x5[15]),
        .O(\random_x[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[15]_i_9 
       (.I0(random_x3[14]),
        .I1(random_x3[31]),
        .I2(random_x5[14]),
        .O(\random_x[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[16]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[19]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[19]_i_3_n_7 ),
        .O(\random_x[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[17]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[19]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[19]_i_3_n_6 ),
        .O(\random_x[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[18]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[19]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[19]_i_3_n_5 ),
        .O(\random_x[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[19]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[19]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[19]_i_3_n_4 ),
        .O(\random_x[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[19]_i_10 
       (.I0(random_x3[17]),
        .I1(random_x3[31]),
        .I2(random_x5[17]),
        .O(\random_x[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[19]_i_11 
       (.I0(random_x3[16]),
        .I1(random_x3[31]),
        .I2(random_x5[16]),
        .O(\random_x[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[19]_i_14 
       (.I0(\random_x_reg[23]_i_26_n_7 ),
        .I1(random_x[2]),
        .I2(\random_x_reg[23]_i_27_n_6 ),
        .O(\random_x[19]_i_14_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[19]_i_15 
       (.I0(\random_x_reg[19]_i_26_n_4 ),
        .I1(\random_x_reg[23]_i_27_n_7 ),
        .I2(random_x[1]),
        .O(\random_x[19]_i_15_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[19]_i_16 
       (.I0(\random_x_reg[19]_i_26_n_5 ),
        .I1(random_x[0]),
        .I2(\random_x_reg[19]_i_27_n_4 ),
        .O(\random_x[19]_i_16_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \random_x[19]_i_17 
       (.I0(\random_x_reg[19]_i_26_n_6 ),
        .I1(\random_x_reg[19]_i_27_n_5 ),
        .O(\random_x[19]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[19]_i_18 
       (.I0(\random_x_reg[23]_i_26_n_6 ),
        .I1(random_x[3]),
        .I2(\random_x_reg[23]_i_27_n_5 ),
        .I3(\random_x[19]_i_14_n_0 ),
        .O(\random_x[19]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[19]_i_19 
       (.I0(\random_x_reg[23]_i_26_n_7 ),
        .I1(random_x[2]),
        .I2(\random_x_reg[23]_i_27_n_6 ),
        .I3(\random_x[19]_i_15_n_0 ),
        .O(\random_x[19]_i_19_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[19]_i_20 
       (.I0(\random_x_reg[19]_i_26_n_4 ),
        .I1(\random_x_reg[23]_i_27_n_7 ),
        .I2(random_x[1]),
        .I3(\random_x[19]_i_16_n_0 ),
        .O(\random_x[19]_i_20_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[19]_i_21 
       (.I0(\random_x_reg[19]_i_26_n_5 ),
        .I1(random_x[0]),
        .I2(\random_x_reg[19]_i_27_n_4 ),
        .I3(\random_x[19]_i_17_n_0 ),
        .O(\random_x[19]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[19]_i_22 
       (.I0(random_x3[16]),
        .O(\random_x[19]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[19]_i_23 
       (.I0(random_x3[15]),
        .O(\random_x[19]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[19]_i_24 
       (.I0(random_x3[14]),
        .O(\random_x[19]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[19]_i_25 
       (.I0(random_x3[13]),
        .O(\random_x[19]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_28 
       (.I0(random_x[12]),
        .I1(random_x[15]),
        .O(\random_x[19]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_29 
       (.I0(random_x[11]),
        .I1(random_x[14]),
        .O(\random_x[19]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_30 
       (.I0(random_x[10]),
        .I1(random_x[13]),
        .O(\random_x[19]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_31 
       (.I0(random_x[9]),
        .I1(random_x[12]),
        .O(\random_x[19]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[19]_i_32 
       (.I0(random_x[9]),
        .I1(\random_x_reg[19]_i_36_n_4 ),
        .O(\random_x[19]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[19]_i_33 
       (.I0(random_x[8]),
        .I1(\random_x_reg[19]_i_36_n_5 ),
        .O(\random_x[19]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[19]_i_34 
       (.I0(random_x[7]),
        .I1(\random_x_reg[19]_i_36_n_6 ),
        .O(\random_x[19]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[19]_i_35 
       (.I0(random_x[6]),
        .I1(\random_x_reg[19]_i_36_n_7 ),
        .O(\random_x[19]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_37 
       (.I0(random_x[7]),
        .I1(random_x[5]),
        .O(\random_x[19]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_38 
       (.I0(random_x[4]),
        .I1(random_x[6]),
        .O(\random_x[19]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_39 
       (.I0(random_x[3]),
        .I1(random_x[5]),
        .O(\random_x[19]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[19]_i_4 
       (.I0(random_x5[19]),
        .I1(random_x3[31]),
        .I2(random_x3[19]),
        .O(random_x4[19]));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[19]_i_40 
       (.I0(random_x[2]),
        .I1(random_x[4]),
        .O(\random_x[19]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[19]_i_5 
       (.I0(random_x5[18]),
        .I1(random_x3[31]),
        .I2(random_x3[18]),
        .O(random_x4[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[19]_i_6 
       (.I0(random_x5[17]),
        .I1(random_x3[31]),
        .I2(random_x3[17]),
        .O(random_x4[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[19]_i_7 
       (.I0(random_x5[16]),
        .I1(random_x3[31]),
        .I2(random_x3[16]),
        .O(random_x4[16]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[19]_i_8 
       (.I0(random_x3[19]),
        .I1(random_x3[31]),
        .I2(random_x5[19]),
        .O(\random_x[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[19]_i_9 
       (.I0(random_x3[18]),
        .I1(random_x3[31]),
        .I2(random_x5[18]),
        .O(\random_x[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[1]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[3]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[3]_i_3_n_6 ),
        .O(\random_x[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[20]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[23]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[23]_i_3_n_7 ),
        .O(\random_x[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[21]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[23]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[23]_i_3_n_6 ),
        .O(\random_x[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[22]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[23]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[23]_i_3_n_5 ),
        .O(\random_x[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[23]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[23]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[23]_i_3_n_4 ),
        .O(\random_x[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[23]_i_10 
       (.I0(random_x3[21]),
        .I1(random_x3[31]),
        .I2(random_x5[21]),
        .O(\random_x[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[23]_i_11 
       (.I0(random_x3[20]),
        .I1(random_x3[31]),
        .I2(random_x5[20]),
        .O(\random_x[23]_i_11_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[23]_i_14 
       (.I0(\random_x_reg[30]_i_71_n_7 ),
        .I1(random_x[6]),
        .I2(\random_x_reg[30]_i_72_n_6 ),
        .O(\random_x[23]_i_14_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[23]_i_15 
       (.I0(\random_x_reg[23]_i_26_n_4 ),
        .I1(random_x[5]),
        .I2(\random_x_reg[30]_i_72_n_7 ),
        .O(\random_x[23]_i_15_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[23]_i_16 
       (.I0(\random_x_reg[23]_i_26_n_5 ),
        .I1(random_x[4]),
        .I2(\random_x_reg[23]_i_27_n_4 ),
        .O(\random_x[23]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[23]_i_17 
       (.I0(\random_x_reg[23]_i_26_n_6 ),
        .I1(random_x[3]),
        .I2(\random_x_reg[23]_i_27_n_5 ),
        .O(\random_x[23]_i_17_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[23]_i_18 
       (.I0(\random_x_reg[30]_i_71_n_6 ),
        .I1(random_x[7]),
        .I2(\random_x_reg[30]_i_72_n_5 ),
        .I3(\random_x[23]_i_14_n_0 ),
        .O(\random_x[23]_i_18_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[23]_i_19 
       (.I0(\random_x_reg[30]_i_71_n_7 ),
        .I1(random_x[6]),
        .I2(\random_x_reg[30]_i_72_n_6 ),
        .I3(\random_x[23]_i_15_n_0 ),
        .O(\random_x[23]_i_19_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[23]_i_20 
       (.I0(\random_x_reg[23]_i_26_n_4 ),
        .I1(random_x[5]),
        .I2(\random_x_reg[30]_i_72_n_7 ),
        .I3(\random_x[23]_i_16_n_0 ),
        .O(\random_x[23]_i_20_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[23]_i_21 
       (.I0(\random_x_reg[23]_i_26_n_5 ),
        .I1(random_x[4]),
        .I2(\random_x_reg[23]_i_27_n_4 ),
        .I3(\random_x[23]_i_17_n_0 ),
        .O(\random_x[23]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[23]_i_22 
       (.I0(random_x3[20]),
        .O(\random_x[23]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[23]_i_23 
       (.I0(random_x3[19]),
        .O(\random_x[23]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[23]_i_24 
       (.I0(random_x3[18]),
        .O(\random_x[23]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[23]_i_25 
       (.I0(random_x3[17]),
        .O(\random_x[23]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_28 
       (.I0(random_x[16]),
        .I1(random_x[19]),
        .O(\random_x[23]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_29 
       (.I0(random_x[15]),
        .I1(random_x[18]),
        .O(\random_x[23]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_30 
       (.I0(random_x[14]),
        .I1(random_x[17]),
        .O(\random_x[23]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_31 
       (.I0(random_x[13]),
        .I1(random_x[16]),
        .O(\random_x[23]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[23]_i_32 
       (.I0(random_x[13]),
        .I1(\random_x_reg[23]_i_36_n_4 ),
        .O(\random_x[23]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[23]_i_33 
       (.I0(random_x[12]),
        .I1(\random_x_reg[23]_i_36_n_5 ),
        .O(\random_x[23]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[23]_i_34 
       (.I0(random_x[11]),
        .I1(\random_x_reg[23]_i_36_n_6 ),
        .O(\random_x[23]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[23]_i_35 
       (.I0(random_x[10]),
        .I1(\random_x_reg[23]_i_36_n_7 ),
        .O(\random_x[23]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_37 
       (.I0(random_x[11]),
        .I1(random_x[9]),
        .O(\random_x[23]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_38 
       (.I0(random_x[10]),
        .I1(random_x[8]),
        .O(\random_x[23]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_39 
       (.I0(random_x[9]),
        .I1(random_x[7]),
        .O(\random_x[23]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[23]_i_4 
       (.I0(random_x5[23]),
        .I1(random_x3[31]),
        .I2(random_x3[23]),
        .O(random_x4[23]));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[23]_i_40 
       (.I0(random_x[8]),
        .I1(random_x[6]),
        .O(\random_x[23]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[23]_i_5 
       (.I0(random_x5[22]),
        .I1(random_x3[31]),
        .I2(random_x3[22]),
        .O(random_x4[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[23]_i_6 
       (.I0(random_x5[21]),
        .I1(random_x3[31]),
        .I2(random_x3[21]),
        .O(random_x4[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[23]_i_7 
       (.I0(random_x5[20]),
        .I1(random_x3[31]),
        .I2(random_x3[20]),
        .O(random_x4[20]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[23]_i_8 
       (.I0(random_x3[23]),
        .I1(random_x3[31]),
        .I2(random_x5[23]),
        .O(\random_x[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[23]_i_9 
       (.I0(random_x3[22]),
        .I1(random_x3[31]),
        .I2(random_x5[22]),
        .O(\random_x[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[24]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[27]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[27]_i_3_n_7 ),
        .O(\random_x[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[25]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[27]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[27]_i_3_n_6 ),
        .O(\random_x[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[26]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[27]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[27]_i_3_n_5 ),
        .O(\random_x[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[27]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[27]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[27]_i_3_n_4 ),
        .O(\random_x[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[27]_i_10 
       (.I0(random_x3[25]),
        .I1(random_x3[31]),
        .I2(random_x5[25]),
        .O(\random_x[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[27]_i_11 
       (.I0(random_x3[24]),
        .I1(random_x3[31]),
        .I2(random_x5[24]),
        .O(\random_x[27]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[27]_i_13 
       (.I0(random_x3[24]),
        .O(\random_x[27]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[27]_i_14 
       (.I0(random_x3[23]),
        .O(\random_x[27]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[27]_i_15 
       (.I0(random_x3[22]),
        .O(\random_x[27]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[27]_i_16 
       (.I0(random_x3[21]),
        .O(\random_x[27]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[27]_i_4 
       (.I0(random_x5[27]),
        .I1(random_x3[31]),
        .I2(random_x3[27]),
        .O(random_x4[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[27]_i_5 
       (.I0(random_x5[26]),
        .I1(random_x3[31]),
        .I2(random_x3[26]),
        .O(random_x4[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[27]_i_6 
       (.I0(random_x5[25]),
        .I1(random_x3[31]),
        .I2(random_x3[25]),
        .O(random_x4[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[27]_i_7 
       (.I0(random_x5[24]),
        .I1(random_x3[31]),
        .I2(random_x3[24]),
        .O(random_x4[24]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[27]_i_8 
       (.I0(random_x3[27]),
        .I1(random_x3[31]),
        .I2(random_x5[27]),
        .O(\random_x[27]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[27]_i_9 
       (.I0(random_x3[26]),
        .I1(random_x3[31]),
        .I2(random_x5[26]),
        .O(\random_x[27]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[28]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[30]_i_9_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[30]_i_10_n_7 ),
        .O(\random_x[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[29]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[30]_i_9_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[30]_i_10_n_6 ),
        .O(\random_x[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[2]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[3]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[3]_i_3_n_5 ),
        .O(\random_x[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \random_x[30]_i_1 
       (.I0(\random_x[30]_i_3_n_0 ),
        .I1(\random_x[30]_i_4_n_0 ),
        .I2(\random_x[30]_i_5_n_0 ),
        .I3(\random_x[30]_i_6_n_0 ),
        .I4(\random_x[30]_i_7_n_0 ),
        .O(random_x0));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_100 
       (.I0(random_x[17]),
        .I1(random_x[15]),
        .O(\random_x[30]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_101 
       (.I0(random_x[16]),
        .I1(random_x[14]),
        .O(\random_x[30]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_102 
       (.I0(random_x[15]),
        .I1(random_x[13]),
        .O(\random_x[30]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_103 
       (.I0(random_x[14]),
        .I1(random_x[12]),
        .O(\random_x[30]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_104 
       (.I0(random_x[13]),
        .I1(random_x[11]),
        .O(\random_x[30]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_105 
       (.I0(random_x[12]),
        .I1(random_x[10]),
        .O(\random_x[30]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_11 
       (.I0(\random_x_reg[15]_i_2_n_7 ),
        .I1(\random_x_reg[15]_i_3_n_7 ),
        .I2(\random_x_reg[7]_i_2_n_7 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[7]_i_3_n_7 ),
        .O(\random_x[30]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_12 
       (.I0(\random_x_reg[19]_i_2_n_6 ),
        .I1(\random_x_reg[19]_i_3_n_6 ),
        .I2(\random_x_reg[3]_i_2_n_5 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[3]_i_3_n_5 ),
        .O(\random_x[30]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_13 
       (.I0(\random_x_reg[27]_i_2_n_6 ),
        .I1(\random_x_reg[27]_i_3_n_6 ),
        .I2(\random_x_reg[19]_i_2_n_5 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[19]_i_3_n_5 ),
        .O(\random_x[30]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_14 
       (.I0(\random_x_reg[27]_i_2_n_7 ),
        .I1(\random_x_reg[27]_i_3_n_7 ),
        .I2(\random_x_reg[3]_i_2_n_7 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[3]_i_3_n_7 ),
        .O(\random_x[30]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[30]_i_15 
       (.I0(\random_x_reg[11]_i_3_n_4 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[11]_i_2_n_4 ),
        .O(\random_x[30]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_16 
       (.I0(\random_x_reg[7]_i_2_n_6 ),
        .I1(\random_x_reg[7]_i_3_n_6 ),
        .I2(\random_x_reg[15]_i_2_n_5 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[15]_i_3_n_5 ),
        .O(\random_x[30]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_17 
       (.I0(\random_x_reg[11]_i_3_n_6 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[11]_i_2_n_6 ),
        .I3(\random_x_reg[15]_i_3_n_4 ),
        .I4(\random_x_reg[15]_i_2_n_4 ),
        .I5(\random_x[30]_i_30_n_0 ),
        .O(\random_x[30]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_18 
       (.I0(\random_x_reg[7]_i_3_n_4 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[7]_i_2_n_4 ),
        .I3(\random_x_reg[27]_i_3_n_4 ),
        .I4(\random_x_reg[27]_i_2_n_4 ),
        .I5(\random_x[30]_i_31_n_0 ),
        .O(\random_x[30]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_19 
       (.I0(\random_x_reg[11]_i_3_n_5 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[11]_i_2_n_5 ),
        .I3(\random_x_reg[23]_i_3_n_5 ),
        .I4(\random_x_reg[23]_i_2_n_5 ),
        .I5(\random_x[30]_i_32_n_0 ),
        .O(\random_x[30]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[30]_i_2 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[30]_i_9_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[30]_i_10_n_5 ),
        .O(\random_x[30]_i_2_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_21 
       (.I0(\random_x_reg[30]_i_42_n_6 ),
        .I1(random_x[15]),
        .I2(\random_x_reg[30]_i_43_n_5 ),
        .O(\random_x[30]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \random_x[30]_i_22 
       (.I0(\random_x_reg[30]_i_43_n_4 ),
        .I1(random_x[16]),
        .I2(\random_x_reg[30]_i_42_n_5 ),
        .I3(\random_x_reg[30]_i_42_n_4 ),
        .I4(\random_x_reg[30]_i_44_n_7 ),
        .I5(random_x[17]),
        .O(\random_x[30]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_23 
       (.I0(\random_x[30]_i_21_n_0 ),
        .I1(random_x[16]),
        .I2(\random_x_reg[30]_i_43_n_4 ),
        .I3(\random_x_reg[30]_i_42_n_5 ),
        .O(\random_x[30]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \random_x[30]_i_24 
       (.I0(random_x3[30]),
        .I1(random_x5[30]),
        .I2(random_x3[31]),
        .O(random_x4[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[30]_i_25 
       (.I0(random_x5[29]),
        .I1(random_x3[31]),
        .I2(random_x3[29]),
        .O(random_x4[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[30]_i_26 
       (.I0(random_x5[28]),
        .I1(random_x3[31]),
        .I2(random_x3[28]),
        .O(random_x4[28]));
  LUT3 #(
    .INIT(8'h27)) 
    \random_x[30]_i_27 
       (.I0(random_x3[31]),
        .I1(random_x5[30]),
        .I2(random_x3[30]),
        .O(\random_x[30]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[30]_i_28 
       (.I0(random_x3[29]),
        .I1(random_x3[31]),
        .I2(random_x5[29]),
        .O(\random_x[30]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[30]_i_29 
       (.I0(random_x3[28]),
        .I1(random_x3[31]),
        .I2(random_x5[28]),
        .O(\random_x[30]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_3 
       (.I0(\random_x_reg[23]_i_3_n_4 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[23]_i_2_n_4 ),
        .I3(\random_x_reg[3]_i_3_n_4 ),
        .I4(\random_x_reg[3]_i_2_n_4 ),
        .I5(\random_x[30]_i_11_n_0 ),
        .O(\random_x[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_30 
       (.I0(\random_x_reg[23]_i_2_n_7 ),
        .I1(\random_x_reg[23]_i_3_n_7 ),
        .I2(\random_x_reg[23]_i_2_n_6 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[23]_i_3_n_6 ),
        .O(\random_x[30]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_31 
       (.I0(\random_x_reg[11]_i_2_n_7 ),
        .I1(\random_x_reg[11]_i_3_n_7 ),
        .I2(\random_x_reg[15]_i_2_n_6 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[15]_i_3_n_6 ),
        .O(\random_x[30]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_x[30]_i_32 
       (.I0(\random_x_reg[30]_i_9_n_5 ),
        .I1(\random_x_reg[30]_i_10_n_5 ),
        .I2(\random_x_reg[30]_i_9_n_7 ),
        .I3(\random_x_reg[30]_i_10_n_0 ),
        .I4(\random_x_reg[30]_i_10_n_7 ),
        .O(\random_x[30]_i_32_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_34 
       (.I0(\random_x_reg[30]_i_42_n_7 ),
        .I1(random_x[14]),
        .I2(\random_x_reg[30]_i_43_n_6 ),
        .O(\random_x[30]_i_34_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_35 
       (.I0(\random_x_reg[30]_i_55_n_4 ),
        .I1(random_x[13]),
        .I2(\random_x_reg[30]_i_43_n_7 ),
        .O(\random_x[30]_i_35_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_36 
       (.I0(\random_x_reg[30]_i_55_n_5 ),
        .I1(random_x[12]),
        .I2(\random_x_reg[30]_i_56_n_4 ),
        .O(\random_x[30]_i_36_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_37 
       (.I0(\random_x_reg[30]_i_55_n_6 ),
        .I1(random_x[11]),
        .I2(\random_x_reg[30]_i_56_n_5 ),
        .O(\random_x[30]_i_37_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_38 
       (.I0(\random_x_reg[30]_i_42_n_6 ),
        .I1(random_x[15]),
        .I2(\random_x_reg[30]_i_43_n_5 ),
        .I3(\random_x[30]_i_34_n_0 ),
        .O(\random_x[30]_i_38_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_39 
       (.I0(\random_x_reg[30]_i_42_n_7 ),
        .I1(random_x[14]),
        .I2(\random_x_reg[30]_i_43_n_6 ),
        .I3(\random_x[30]_i_35_n_0 ),
        .O(\random_x[30]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_4 
       (.I0(\random_x_reg[7]_i_3_n_5 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[7]_i_2_n_5 ),
        .I3(\random_x_reg[19]_i_3_n_7 ),
        .I4(\random_x_reg[19]_i_2_n_7 ),
        .I5(\random_x[30]_i_12_n_0 ),
        .O(\random_x[30]_i_4_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_40 
       (.I0(\random_x_reg[30]_i_55_n_4 ),
        .I1(random_x[13]),
        .I2(\random_x_reg[30]_i_43_n_7 ),
        .I3(\random_x[30]_i_36_n_0 ),
        .O(\random_x[30]_i_40_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_41 
       (.I0(\random_x_reg[30]_i_55_n_5 ),
        .I1(random_x[12]),
        .I2(\random_x_reg[30]_i_56_n_4 ),
        .I3(\random_x[30]_i_37_n_0 ),
        .O(\random_x[30]_i_41_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_47 
       (.I0(\random_x_reg[30]_i_55_n_7 ),
        .I1(random_x[10]),
        .I2(\random_x_reg[30]_i_56_n_6 ),
        .O(\random_x[30]_i_47_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_48 
       (.I0(\random_x_reg[30]_i_71_n_4 ),
        .I1(random_x[9]),
        .I2(\random_x_reg[30]_i_56_n_7 ),
        .O(\random_x[30]_i_48_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_49 
       (.I0(\random_x_reg[30]_i_71_n_5 ),
        .I1(random_x[8]),
        .I2(\random_x_reg[30]_i_72_n_4 ),
        .O(\random_x[30]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \random_x[30]_i_5 
       (.I0(\random_x_reg[19]_i_3_n_4 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[19]_i_2_n_4 ),
        .I3(\random_x_reg[3]_i_3_n_6 ),
        .I4(\random_x_reg[3]_i_2_n_6 ),
        .I5(\random_x[30]_i_13_n_0 ),
        .O(\random_x[30]_i_5_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_x[30]_i_50 
       (.I0(\random_x_reg[30]_i_71_n_6 ),
        .I1(random_x[7]),
        .I2(\random_x_reg[30]_i_72_n_5 ),
        .O(\random_x[30]_i_50_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_51 
       (.I0(\random_x_reg[30]_i_55_n_6 ),
        .I1(random_x[11]),
        .I2(\random_x_reg[30]_i_56_n_5 ),
        .I3(\random_x[30]_i_47_n_0 ),
        .O(\random_x[30]_i_51_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_52 
       (.I0(\random_x_reg[30]_i_55_n_7 ),
        .I1(random_x[10]),
        .I2(\random_x_reg[30]_i_56_n_6 ),
        .I3(\random_x[30]_i_48_n_0 ),
        .O(\random_x[30]_i_52_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_53 
       (.I0(\random_x_reg[30]_i_71_n_4 ),
        .I1(random_x[9]),
        .I2(\random_x_reg[30]_i_56_n_7 ),
        .I3(\random_x[30]_i_49_n_0 ),
        .O(\random_x[30]_i_53_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_x[30]_i_54 
       (.I0(\random_x_reg[30]_i_71_n_5 ),
        .I1(random_x[8]),
        .I2(\random_x_reg[30]_i_72_n_4 ),
        .I3(\random_x[30]_i_50_n_0 ),
        .O(\random_x[30]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_57 
       (.I0(random_x[27]),
        .I1(random_x[30]),
        .O(\random_x[30]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_58 
       (.I0(random_x[26]),
        .I1(random_x[29]),
        .O(\random_x[30]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_59 
       (.I0(random_x[25]),
        .I1(random_x[28]),
        .O(\random_x[30]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_x[30]_i_6 
       (.I0(\random_x_reg[27]_i_3_n_5 ),
        .I1(\random_x_reg[30]_i_10_n_0 ),
        .I2(\random_x_reg[27]_i_2_n_5 ),
        .I3(\random_x_reg[30]_i_10_n_6 ),
        .I4(\random_x_reg[30]_i_9_n_6 ),
        .I5(\random_x[30]_i_14_n_0 ),
        .O(\random_x[30]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_60 
       (.I0(random_x[25]),
        .I1(\random_x_reg[30]_i_81_n_4 ),
        .O(\random_x[30]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_61 
       (.I0(random_x[24]),
        .I1(\random_x_reg[30]_i_81_n_5 ),
        .O(\random_x[30]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_62 
       (.I0(random_x[23]),
        .I1(\random_x_reg[30]_i_81_n_6 ),
        .O(\random_x[30]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_63 
       (.I0(random_x[22]),
        .I1(\random_x_reg[30]_i_81_n_7 ),
        .O(\random_x[30]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_64 
       (.I0(random_x[26]),
        .I1(\random_x_reg[30]_i_82_n_7 ),
        .O(\random_x[30]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_65 
       (.I0(random_x3[30]),
        .O(\random_x[30]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_66 
       (.I0(random_x3[29]),
        .O(\random_x[30]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_67 
       (.I0(random_x3[28]),
        .O(\random_x[30]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_68 
       (.I0(random_x3[27]),
        .O(\random_x[30]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_69 
       (.I0(random_x3[26]),
        .O(\random_x[30]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \random_x[30]_i_7 
       (.I0(random_x3[31]),
        .I1(\random_x[30]_i_15_n_0 ),
        .I2(\random_x[30]_i_16_n_0 ),
        .I3(\random_x[30]_i_17_n_0 ),
        .I4(\random_x[30]_i_18_n_0 ),
        .I5(\random_x[30]_i_19_n_0 ),
        .O(\random_x[30]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[30]_i_70 
       (.I0(random_x3[25]),
        .O(\random_x[30]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_73 
       (.I0(random_x[24]),
        .I1(random_x[27]),
        .O(\random_x[30]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_74 
       (.I0(random_x[23]),
        .I1(random_x[26]),
        .O(\random_x[30]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_75 
       (.I0(random_x[22]),
        .I1(random_x[25]),
        .O(\random_x[30]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_76 
       (.I0(random_x[21]),
        .I1(random_x[24]),
        .O(\random_x[30]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_77 
       (.I0(random_x[21]),
        .I1(\random_x_reg[30]_i_91_n_4 ),
        .O(\random_x[30]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_78 
       (.I0(random_x[20]),
        .I1(\random_x_reg[30]_i_91_n_5 ),
        .O(\random_x[30]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_79 
       (.I0(random_x[19]),
        .I1(\random_x_reg[30]_i_91_n_6 ),
        .O(\random_x[30]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_80 
       (.I0(random_x[18]),
        .I1(\random_x_reg[30]_i_91_n_7 ),
        .O(\random_x[30]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_83 
       (.I0(random_x[20]),
        .I1(random_x[23]),
        .O(\random_x[30]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_84 
       (.I0(random_x[19]),
        .I1(random_x[22]),
        .O(\random_x[30]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_85 
       (.I0(random_x[18]),
        .I1(random_x[21]),
        .O(\random_x[30]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_86 
       (.I0(random_x[17]),
        .I1(random_x[20]),
        .O(\random_x[30]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_87 
       (.I0(random_x[17]),
        .I1(\random_x_reg[30]_i_97_n_4 ),
        .O(\random_x[30]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_88 
       (.I0(random_x[16]),
        .I1(\random_x_reg[30]_i_97_n_5 ),
        .O(\random_x[30]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_89 
       (.I0(random_x[15]),
        .I1(\random_x_reg[30]_i_97_n_6 ),
        .O(\random_x[30]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_x[30]_i_90 
       (.I0(random_x[14]),
        .I1(\random_x_reg[30]_i_97_n_7 ),
        .O(\random_x[30]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_92 
       (.I0(random_x[23]),
        .I1(random_x[21]),
        .O(\random_x[30]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_93 
       (.I0(random_x[20]),
        .I1(random_x[22]),
        .O(\random_x[30]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_94 
       (.I0(random_x[19]),
        .I1(random_x[21]),
        .O(\random_x[30]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_95 
       (.I0(random_x[18]),
        .I1(random_x[20]),
        .O(\random_x[30]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_96 
       (.I0(random_x[24]),
        .I1(random_x[22]),
        .O(\random_x[30]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_98 
       (.I0(random_x[19]),
        .I1(random_x[17]),
        .O(\random_x[30]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[30]_i_99 
       (.I0(random_x[18]),
        .I1(random_x[16]),
        .O(\random_x[30]_i_99_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[3]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[3]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[3]_i_3_n_4 ),
        .O(\random_x[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[3]_i_10 
       (.I0(random_x3[1]),
        .I1(random_x3[31]),
        .I2(random_x5[1]),
        .O(\random_x[3]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[3]_i_11 
       (.I0(random_x3[0]),
        .O(\random_x[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[3]_i_12 
       (.I0(random_x[0]),
        .I1(random_x[3]),
        .O(\random_x[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[3]_i_13 
       (.I0(random_x[2]),
        .O(\random_x[3]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[3]_i_14 
       (.I0(random_x[1]),
        .O(\random_x[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[3]_i_4 
       (.I0(random_x5[3]),
        .I1(random_x3[31]),
        .I2(random_x3[3]),
        .O(random_x4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[3]_i_5 
       (.I0(random_x5[2]),
        .I1(random_x3[31]),
        .I2(random_x3[2]),
        .O(random_x4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[3]_i_6 
       (.I0(random_x5[1]),
        .I1(random_x3[31]),
        .I2(random_x3[1]),
        .O(random_x4[1]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[3]_i_8 
       (.I0(random_x3[3]),
        .I1(random_x3[31]),
        .I2(random_x5[3]),
        .O(\random_x[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[3]_i_9 
       (.I0(random_x3[2]),
        .I1(random_x3[31]),
        .I2(random_x5[2]),
        .O(\random_x[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[4]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[7]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[7]_i_3_n_7 ),
        .O(\random_x[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[5]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[7]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[7]_i_3_n_6 ),
        .O(\random_x[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[6]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[7]_i_2_n_5 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[7]_i_3_n_5 ),
        .O(\random_x[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[7]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[7]_i_2_n_4 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[7]_i_3_n_4 ),
        .O(\random_x[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h09F9)) 
    \random_x[7]_i_10 
       (.I0(\random_x_reg[7]_i_12_n_6 ),
        .I1(random_x[0]),
        .I2(random_x3[31]),
        .I3(random_x5[5]),
        .O(\random_x[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[7]_i_11 
       (.I0(random_x3[4]),
        .I1(random_x3[31]),
        .I2(random_x5[4]),
        .O(\random_x[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[7]_i_14 
       (.I0(random_x[4]),
        .I1(random_x[7]),
        .O(\random_x[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[7]_i_15 
       (.I0(random_x[3]),
        .I1(random_x[6]),
        .O(\random_x[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[7]_i_16 
       (.I0(random_x[2]),
        .I1(random_x[5]),
        .O(\random_x[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_x[7]_i_17 
       (.I0(random_x[1]),
        .I1(random_x[4]),
        .O(\random_x[7]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[7]_i_18 
       (.I0(random_x3[0]),
        .O(\random_x[7]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[7]_i_19 
       (.I0(random_x3[4]),
        .O(\random_x[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[7]_i_20 
       (.I0(random_x3[3]),
        .O(\random_x[7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[7]_i_21 
       (.I0(random_x3[2]),
        .O(\random_x[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_x[7]_i_22 
       (.I0(random_x3[1]),
        .O(\random_x[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[7]_i_4 
       (.I0(random_x5[7]),
        .I1(random_x3[31]),
        .I2(random_x3[7]),
        .O(random_x4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[7]_i_5 
       (.I0(random_x5[6]),
        .I1(random_x3[31]),
        .I2(random_x3[6]),
        .O(random_x4[6]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \random_x[7]_i_6 
       (.I0(random_x5[5]),
        .I1(random_x3[31]),
        .I2(random_x[0]),
        .I3(\random_x_reg[7]_i_12_n_6 ),
        .O(random_x4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_x[7]_i_7 
       (.I0(random_x5[4]),
        .I1(random_x3[31]),
        .I2(random_x3[4]),
        .O(random_x4[4]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[7]_i_8 
       (.I0(random_x3[7]),
        .I1(random_x3[31]),
        .I2(random_x5[7]),
        .O(\random_x[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_x[7]_i_9 
       (.I0(random_x3[6]),
        .I1(random_x3[31]),
        .I2(random_x5[6]),
        .O(\random_x[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[8]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[11]_i_2_n_7 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[11]_i_3_n_7 ),
        .O(\random_x[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_x[9]_i_1 
       (.I0(random_x3[31]),
        .I1(\random_x_reg[11]_i_2_n_6 ),
        .I2(\random_x_reg[30]_i_10_n_0 ),
        .I3(\random_x_reg[11]_i_3_n_6 ),
        .O(\random_x[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[0] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[0]_i_1_n_0 ),
        .Q(random_x[0]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[10] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[10]_i_1_n_0 ),
        .Q(random_x[10]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[11] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[11]_i_1_n_0 ),
        .Q(random_x[11]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[11]_i_12 
       (.CI(\<const0> ),
        .CO({\random_x_reg[11]_i_12_n_0 ,\random_x_reg[11]_i_12_n_1 ,\random_x_reg[11]_i_12_n_2 ,\random_x_reg[11]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[11]_i_14_n_0 ,\random_x[11]_i_15_n_0 ,\random_x[11]_i_16_n_0 ,\random_x[11]_i_17_n_0 }),
        .O(random_x3[9:6]),
        .S({\random_x[11]_i_18_n_0 ,\random_x[11]_i_19_n_0 ,\random_x[11]_i_20_n_0 ,\random_x[11]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[11]_i_13 
       (.CI(\random_x_reg[7]_i_13_n_0 ),
        .CO({\random_x_reg[11]_i_13_n_0 ,\random_x_reg[11]_i_13_n_1 ,\random_x_reg[11]_i_13_n_2 ,\random_x_reg[11]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[8:5]),
        .S({\random_x[11]_i_22_n_0 ,\random_x[11]_i_23_n_0 ,\random_x[11]_i_24_n_0 ,\random_x[11]_i_25_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[11]_i_2 
       (.CI(\random_x_reg[7]_i_2_n_0 ),
        .CO({\random_x_reg[11]_i_2_n_0 ,\random_x_reg[11]_i_2_n_1 ,\random_x_reg[11]_i_2_n_2 ,\random_x_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[11:8]),
        .O({\random_x_reg[11]_i_2_n_4 ,\random_x_reg[11]_i_2_n_5 ,\random_x_reg[11]_i_2_n_6 ,\random_x_reg[11]_i_2_n_7 }),
        .S({\random_x[11]_i_8_n_0 ,\random_x[11]_i_9_n_0 ,\random_x[11]_i_10_n_0 ,\random_x[11]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[11]_i_3 
       (.CI(\random_x_reg[7]_i_3_n_0 ),
        .CO({\random_x_reg[11]_i_3_n_0 ,\random_x_reg[11]_i_3_n_1 ,\random_x_reg[11]_i_3_n_2 ,\random_x_reg[11]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[11]_i_3_n_4 ,\random_x_reg[11]_i_3_n_5 ,\random_x_reg[11]_i_3_n_6 ,\random_x_reg[11]_i_3_n_7 }),
        .S({\random_x_reg[11]_i_2_n_4 ,\random_x_reg[11]_i_2_n_5 ,\random_x_reg[11]_i_2_n_6 ,\random_x_reg[11]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[12] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[12]_i_1_n_0 ),
        .Q(random_x[12]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[13] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[13]_i_1_n_0 ),
        .Q(random_x[13]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[14] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[14]_i_1_n_0 ),
        .Q(random_x[14]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[15] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[15]_i_1_n_0 ),
        .Q(random_x[15]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_12 
       (.CI(\random_x_reg[11]_i_12_n_0 ),
        .CO({\random_x_reg[15]_i_12_n_0 ,\random_x_reg[15]_i_12_n_1 ,\random_x_reg[15]_i_12_n_2 ,\random_x_reg[15]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[15]_i_14_n_0 ,\random_x[15]_i_15_n_0 ,\random_x[15]_i_16_n_0 ,\random_x[15]_i_17_n_0 }),
        .O(random_x3[13:10]),
        .S({\random_x[15]_i_18_n_0 ,\random_x[15]_i_19_n_0 ,\random_x[15]_i_20_n_0 ,\random_x[15]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_13 
       (.CI(\random_x_reg[11]_i_13_n_0 ),
        .CO({\random_x_reg[15]_i_13_n_0 ,\random_x_reg[15]_i_13_n_1 ,\random_x_reg[15]_i_13_n_2 ,\random_x_reg[15]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[12:9]),
        .S({\random_x[15]_i_22_n_0 ,\random_x[15]_i_23_n_0 ,\random_x[15]_i_24_n_0 ,\random_x[15]_i_25_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_2 
       (.CI(\random_x_reg[11]_i_2_n_0 ),
        .CO({\random_x_reg[15]_i_2_n_0 ,\random_x_reg[15]_i_2_n_1 ,\random_x_reg[15]_i_2_n_2 ,\random_x_reg[15]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[15:12]),
        .O({\random_x_reg[15]_i_2_n_4 ,\random_x_reg[15]_i_2_n_5 ,\random_x_reg[15]_i_2_n_6 ,\random_x_reg[15]_i_2_n_7 }),
        .S({\random_x[15]_i_8_n_0 ,\random_x[15]_i_9_n_0 ,\random_x[15]_i_10_n_0 ,\random_x[15]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_26 
       (.CI(\random_x_reg[7]_i_12_n_0 ),
        .CO({\random_x_reg[15]_i_26_n_0 ,\random_x_reg[15]_i_26_n_1 ,\random_x_reg[15]_i_26_n_2 ,\random_x_reg[15]_i_26_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[8:5]),
        .O({\random_x_reg[15]_i_26_n_4 ,\random_x_reg[15]_i_26_n_5 ,\random_x_reg[15]_i_26_n_6 ,\random_x_reg[15]_i_26_n_7 }),
        .S({\random_x[15]_i_28_n_0 ,\random_x[15]_i_29_n_0 ,\random_x[15]_i_30_n_0 ,\random_x[15]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_27 
       (.CI(\<const0> ),
        .CO({\random_x_reg[15]_i_27_n_0 ,\random_x_reg[15]_i_27_n_1 ,\random_x_reg[15]_i_27_n_2 ,\random_x_reg[15]_i_27_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[5:2]),
        .O({\random_x_reg[15]_i_27_n_4 ,\random_x_reg[15]_i_27_n_5 ,\random_x_reg[15]_i_27_n_6 ,\random_x_reg[15]_i_27_n_7 }),
        .S({\random_x[15]_i_32_n_0 ,\random_x[15]_i_33_n_0 ,\random_x[15]_i_34_n_0 ,\random_x[15]_i_35_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_3 
       (.CI(\random_x_reg[11]_i_3_n_0 ),
        .CO({\random_x_reg[15]_i_3_n_0 ,\random_x_reg[15]_i_3_n_1 ,\random_x_reg[15]_i_3_n_2 ,\random_x_reg[15]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[15]_i_3_n_4 ,\random_x_reg[15]_i_3_n_5 ,\random_x_reg[15]_i_3_n_6 ,\random_x_reg[15]_i_3_n_7 }),
        .S({\random_x_reg[15]_i_2_n_4 ,\random_x_reg[15]_i_2_n_5 ,\random_x_reg[15]_i_2_n_6 ,\random_x_reg[15]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[15]_i_36 
       (.CI(\<const0> ),
        .CO({\random_x_reg[15]_i_36_n_0 ,\random_x_reg[15]_i_36_n_1 ,\random_x_reg[15]_i_36_n_2 ,\random_x_reg[15]_i_36_n_3 }),
        .CYINIT(\<const0> ),
        .DI({random_x[1:0],\<const0> ,\<const1> }),
        .O({\random_x_reg[15]_i_36_n_4 ,\random_x_reg[15]_i_36_n_5 ,\random_x_reg[15]_i_36_n_6 ,\NLW_random_x_reg[15]_i_36_O_UNCONNECTED [0]}),
        .S({\random_x[15]_i_37_n_0 ,\random_x[15]_i_38_n_0 ,\random_x[15]_i_39_n_0 ,random_x[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[16] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[16]_i_1_n_0 ),
        .Q(random_x[16]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[17] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[17]_i_1_n_0 ),
        .Q(random_x[17]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[18] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[18]_i_1_n_0 ),
        .Q(random_x[18]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[19] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[19]_i_1_n_0 ),
        .Q(random_x[19]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_12 
       (.CI(\random_x_reg[15]_i_12_n_0 ),
        .CO({\random_x_reg[19]_i_12_n_0 ,\random_x_reg[19]_i_12_n_1 ,\random_x_reg[19]_i_12_n_2 ,\random_x_reg[19]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[19]_i_14_n_0 ,\random_x[19]_i_15_n_0 ,\random_x[19]_i_16_n_0 ,\random_x[19]_i_17_n_0 }),
        .O(random_x3[17:14]),
        .S({\random_x[19]_i_18_n_0 ,\random_x[19]_i_19_n_0 ,\random_x[19]_i_20_n_0 ,\random_x[19]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_13 
       (.CI(\random_x_reg[15]_i_13_n_0 ),
        .CO({\random_x_reg[19]_i_13_n_0 ,\random_x_reg[19]_i_13_n_1 ,\random_x_reg[19]_i_13_n_2 ,\random_x_reg[19]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[16:13]),
        .S({\random_x[19]_i_22_n_0 ,\random_x[19]_i_23_n_0 ,\random_x[19]_i_24_n_0 ,\random_x[19]_i_25_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_2 
       (.CI(\random_x_reg[15]_i_2_n_0 ),
        .CO({\random_x_reg[19]_i_2_n_0 ,\random_x_reg[19]_i_2_n_1 ,\random_x_reg[19]_i_2_n_2 ,\random_x_reg[19]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[19:16]),
        .O({\random_x_reg[19]_i_2_n_4 ,\random_x_reg[19]_i_2_n_5 ,\random_x_reg[19]_i_2_n_6 ,\random_x_reg[19]_i_2_n_7 }),
        .S({\random_x[19]_i_8_n_0 ,\random_x[19]_i_9_n_0 ,\random_x[19]_i_10_n_0 ,\random_x[19]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_26 
       (.CI(\random_x_reg[15]_i_26_n_0 ),
        .CO({\random_x_reg[19]_i_26_n_0 ,\random_x_reg[19]_i_26_n_1 ,\random_x_reg[19]_i_26_n_2 ,\random_x_reg[19]_i_26_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[12:9]),
        .O({\random_x_reg[19]_i_26_n_4 ,\random_x_reg[19]_i_26_n_5 ,\random_x_reg[19]_i_26_n_6 ,\random_x_reg[19]_i_26_n_7 }),
        .S({\random_x[19]_i_28_n_0 ,\random_x[19]_i_29_n_0 ,\random_x[19]_i_30_n_0 ,\random_x[19]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_27 
       (.CI(\random_x_reg[15]_i_27_n_0 ),
        .CO({\random_x_reg[19]_i_27_n_0 ,\random_x_reg[19]_i_27_n_1 ,\random_x_reg[19]_i_27_n_2 ,\random_x_reg[19]_i_27_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[9:6]),
        .O({\random_x_reg[19]_i_27_n_4 ,\random_x_reg[19]_i_27_n_5 ,\random_x_reg[19]_i_27_n_6 ,\random_x_reg[19]_i_27_n_7 }),
        .S({\random_x[19]_i_32_n_0 ,\random_x[19]_i_33_n_0 ,\random_x[19]_i_34_n_0 ,\random_x[19]_i_35_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_3 
       (.CI(\random_x_reg[15]_i_3_n_0 ),
        .CO({\random_x_reg[19]_i_3_n_0 ,\random_x_reg[19]_i_3_n_1 ,\random_x_reg[19]_i_3_n_2 ,\random_x_reg[19]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[19]_i_3_n_4 ,\random_x_reg[19]_i_3_n_5 ,\random_x_reg[19]_i_3_n_6 ,\random_x_reg[19]_i_3_n_7 }),
        .S({\random_x_reg[19]_i_2_n_4 ,\random_x_reg[19]_i_2_n_5 ,\random_x_reg[19]_i_2_n_6 ,\random_x_reg[19]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[19]_i_36 
       (.CI(\random_x_reg[15]_i_36_n_0 ),
        .CO({\random_x_reg[19]_i_36_n_0 ,\random_x_reg[19]_i_36_n_1 ,\random_x_reg[19]_i_36_n_2 ,\random_x_reg[19]_i_36_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[5:2]),
        .O({\random_x_reg[19]_i_36_n_4 ,\random_x_reg[19]_i_36_n_5 ,\random_x_reg[19]_i_36_n_6 ,\random_x_reg[19]_i_36_n_7 }),
        .S({\random_x[19]_i_37_n_0 ,\random_x[19]_i_38_n_0 ,\random_x[19]_i_39_n_0 ,\random_x[19]_i_40_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \random_x_reg[1] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[1]_i_1_n_0 ),
        .Q(random_x[1]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[20] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[20]_i_1_n_0 ),
        .Q(random_x[20]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[21] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[21]_i_1_n_0 ),
        .Q(random_x[21]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[22] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[22]_i_1_n_0 ),
        .Q(random_x[22]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[23] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[23]_i_1_n_0 ),
        .Q(random_x[23]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_12 
       (.CI(\random_x_reg[19]_i_12_n_0 ),
        .CO({\random_x_reg[23]_i_12_n_0 ,\random_x_reg[23]_i_12_n_1 ,\random_x_reg[23]_i_12_n_2 ,\random_x_reg[23]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[23]_i_14_n_0 ,\random_x[23]_i_15_n_0 ,\random_x[23]_i_16_n_0 ,\random_x[23]_i_17_n_0 }),
        .O(random_x3[21:18]),
        .S({\random_x[23]_i_18_n_0 ,\random_x[23]_i_19_n_0 ,\random_x[23]_i_20_n_0 ,\random_x[23]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_13 
       (.CI(\random_x_reg[19]_i_13_n_0 ),
        .CO({\random_x_reg[23]_i_13_n_0 ,\random_x_reg[23]_i_13_n_1 ,\random_x_reg[23]_i_13_n_2 ,\random_x_reg[23]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[20:17]),
        .S({\random_x[23]_i_22_n_0 ,\random_x[23]_i_23_n_0 ,\random_x[23]_i_24_n_0 ,\random_x[23]_i_25_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_2 
       (.CI(\random_x_reg[19]_i_2_n_0 ),
        .CO({\random_x_reg[23]_i_2_n_0 ,\random_x_reg[23]_i_2_n_1 ,\random_x_reg[23]_i_2_n_2 ,\random_x_reg[23]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[23:20]),
        .O({\random_x_reg[23]_i_2_n_4 ,\random_x_reg[23]_i_2_n_5 ,\random_x_reg[23]_i_2_n_6 ,\random_x_reg[23]_i_2_n_7 }),
        .S({\random_x[23]_i_8_n_0 ,\random_x[23]_i_9_n_0 ,\random_x[23]_i_10_n_0 ,\random_x[23]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_26 
       (.CI(\random_x_reg[19]_i_26_n_0 ),
        .CO({\random_x_reg[23]_i_26_n_0 ,\random_x_reg[23]_i_26_n_1 ,\random_x_reg[23]_i_26_n_2 ,\random_x_reg[23]_i_26_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[16:13]),
        .O({\random_x_reg[23]_i_26_n_4 ,\random_x_reg[23]_i_26_n_5 ,\random_x_reg[23]_i_26_n_6 ,\random_x_reg[23]_i_26_n_7 }),
        .S({\random_x[23]_i_28_n_0 ,\random_x[23]_i_29_n_0 ,\random_x[23]_i_30_n_0 ,\random_x[23]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_27 
       (.CI(\random_x_reg[19]_i_27_n_0 ),
        .CO({\random_x_reg[23]_i_27_n_0 ,\random_x_reg[23]_i_27_n_1 ,\random_x_reg[23]_i_27_n_2 ,\random_x_reg[23]_i_27_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[13:10]),
        .O({\random_x_reg[23]_i_27_n_4 ,\random_x_reg[23]_i_27_n_5 ,\random_x_reg[23]_i_27_n_6 ,\random_x_reg[23]_i_27_n_7 }),
        .S({\random_x[23]_i_32_n_0 ,\random_x[23]_i_33_n_0 ,\random_x[23]_i_34_n_0 ,\random_x[23]_i_35_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_3 
       (.CI(\random_x_reg[19]_i_3_n_0 ),
        .CO({\random_x_reg[23]_i_3_n_0 ,\random_x_reg[23]_i_3_n_1 ,\random_x_reg[23]_i_3_n_2 ,\random_x_reg[23]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[23]_i_3_n_4 ,\random_x_reg[23]_i_3_n_5 ,\random_x_reg[23]_i_3_n_6 ,\random_x_reg[23]_i_3_n_7 }),
        .S({\random_x_reg[23]_i_2_n_4 ,\random_x_reg[23]_i_2_n_5 ,\random_x_reg[23]_i_2_n_6 ,\random_x_reg[23]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[23]_i_36 
       (.CI(\random_x_reg[19]_i_36_n_0 ),
        .CO({\random_x_reg[23]_i_36_n_0 ,\random_x_reg[23]_i_36_n_1 ,\random_x_reg[23]_i_36_n_2 ,\random_x_reg[23]_i_36_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[9:6]),
        .O({\random_x_reg[23]_i_36_n_4 ,\random_x_reg[23]_i_36_n_5 ,\random_x_reg[23]_i_36_n_6 ,\random_x_reg[23]_i_36_n_7 }),
        .S({\random_x[23]_i_37_n_0 ,\random_x[23]_i_38_n_0 ,\random_x[23]_i_39_n_0 ,\random_x[23]_i_40_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[24] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[24]_i_1_n_0 ),
        .Q(random_x[24]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[25] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[25]_i_1_n_0 ),
        .Q(random_x[25]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[26] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[26]_i_1_n_0 ),
        .Q(random_x[26]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[27] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[27]_i_1_n_0 ),
        .Q(random_x[27]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[27]_i_12 
       (.CI(\random_x_reg[23]_i_13_n_0 ),
        .CO({\random_x_reg[27]_i_12_n_0 ,\random_x_reg[27]_i_12_n_1 ,\random_x_reg[27]_i_12_n_2 ,\random_x_reg[27]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[24:21]),
        .S({\random_x[27]_i_13_n_0 ,\random_x[27]_i_14_n_0 ,\random_x[27]_i_15_n_0 ,\random_x[27]_i_16_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[27]_i_2 
       (.CI(\random_x_reg[23]_i_2_n_0 ),
        .CO({\random_x_reg[27]_i_2_n_0 ,\random_x_reg[27]_i_2_n_1 ,\random_x_reg[27]_i_2_n_2 ,\random_x_reg[27]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[27:24]),
        .O({\random_x_reg[27]_i_2_n_4 ,\random_x_reg[27]_i_2_n_5 ,\random_x_reg[27]_i_2_n_6 ,\random_x_reg[27]_i_2_n_7 }),
        .S({\random_x[27]_i_8_n_0 ,\random_x[27]_i_9_n_0 ,\random_x[27]_i_10_n_0 ,\random_x[27]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[27]_i_3 
       (.CI(\random_x_reg[23]_i_3_n_0 ),
        .CO({\random_x_reg[27]_i_3_n_0 ,\random_x_reg[27]_i_3_n_1 ,\random_x_reg[27]_i_3_n_2 ,\random_x_reg[27]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[27]_i_3_n_4 ,\random_x_reg[27]_i_3_n_5 ,\random_x_reg[27]_i_3_n_6 ,\random_x_reg[27]_i_3_n_7 }),
        .S({\random_x_reg[27]_i_2_n_4 ,\random_x_reg[27]_i_2_n_5 ,\random_x_reg[27]_i_2_n_6 ,\random_x_reg[27]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[28] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[28]_i_1_n_0 ),
        .Q(random_x[28]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[29] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[29]_i_1_n_0 ),
        .Q(random_x[29]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[2] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[2]_i_1_n_0 ),
        .Q(random_x[2]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[30] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[30]_i_2_n_0 ),
        .Q(random_x[30]),
        .R(random_x0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_10 
       (.CI(\random_x_reg[27]_i_3_n_0 ),
        .CO({\random_x_reg[30]_i_10_n_0 ,\random_x_reg[30]_i_10_n_1 ,\random_x_reg[30]_i_10_n_2 ,\random_x_reg[30]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[30]_i_10_n_5 ,\random_x_reg[30]_i_10_n_6 ,\random_x_reg[30]_i_10_n_7 }),
        .S({\random_x_reg[30]_i_9_n_0 ,\random_x_reg[30]_i_9_n_5 ,\random_x_reg[30]_i_9_n_6 ,\random_x_reg[30]_i_9_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_20 
       (.CI(\random_x_reg[30]_i_33_n_0 ),
        .CO({\random_x_reg[30]_i_20_n_0 ,\random_x_reg[30]_i_20_n_1 ,\random_x_reg[30]_i_20_n_2 ,\random_x_reg[30]_i_20_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[30]_i_34_n_0 ,\random_x[30]_i_35_n_0 ,\random_x[30]_i_36_n_0 ,\random_x[30]_i_37_n_0 }),
        .O(random_x3[29:26]),
        .S({\random_x[30]_i_38_n_0 ,\random_x[30]_i_39_n_0 ,\random_x[30]_i_40_n_0 ,\random_x[30]_i_41_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_33 
       (.CI(\random_x_reg[23]_i_12_n_0 ),
        .CO({\random_x_reg[30]_i_33_n_0 ,\random_x_reg[30]_i_33_n_1 ,\random_x_reg[30]_i_33_n_2 ,\random_x_reg[30]_i_33_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_x[30]_i_47_n_0 ,\random_x[30]_i_48_n_0 ,\random_x[30]_i_49_n_0 ,\random_x[30]_i_50_n_0 }),
        .O(random_x3[25:22]),
        .S({\random_x[30]_i_51_n_0 ,\random_x[30]_i_52_n_0 ,\random_x[30]_i_53_n_0 ,\random_x[30]_i_54_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_42 
       (.CI(\random_x_reg[30]_i_55_n_0 ),
        .CO({\random_x_reg[30]_i_42_n_1 ,\random_x_reg[30]_i_42_n_2 ,\random_x_reg[30]_i_42_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,random_x[27:25]}),
        .O({\random_x_reg[30]_i_42_n_4 ,\random_x_reg[30]_i_42_n_5 ,\random_x_reg[30]_i_42_n_6 ,\random_x_reg[30]_i_42_n_7 }),
        .S({random_x[28],\random_x[30]_i_57_n_0 ,\random_x[30]_i_58_n_0 ,\random_x[30]_i_59_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_43 
       (.CI(\random_x_reg[30]_i_56_n_0 ),
        .CO({\random_x_reg[30]_i_43_n_0 ,\random_x_reg[30]_i_43_n_1 ,\random_x_reg[30]_i_43_n_2 ,\random_x_reg[30]_i_43_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[25:22]),
        .O({\random_x_reg[30]_i_43_n_4 ,\random_x_reg[30]_i_43_n_5 ,\random_x_reg[30]_i_43_n_6 ,\random_x_reg[30]_i_43_n_7 }),
        .S({\random_x[30]_i_60_n_0 ,\random_x[30]_i_61_n_0 ,\random_x[30]_i_62_n_0 ,\random_x[30]_i_63_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_44 
       (.CI(\random_x_reg[30]_i_43_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\random_x_reg[30]_i_44_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\random_x[30]_i_64_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_45 
       (.CI(\random_x_reg[30]_i_46_n_0 ),
        .CO(\random_x_reg[30]_i_45_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[30:29]),
        .S({\<const0> ,\<const0> ,\random_x[30]_i_65_n_0 ,\random_x[30]_i_66_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_46 
       (.CI(\random_x_reg[27]_i_12_n_0 ),
        .CO({\random_x_reg[30]_i_46_n_0 ,\random_x_reg[30]_i_46_n_1 ,\random_x_reg[30]_i_46_n_2 ,\random_x_reg[30]_i_46_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[28:25]),
        .S({\random_x[30]_i_67_n_0 ,\random_x[30]_i_68_n_0 ,\random_x[30]_i_69_n_0 ,\random_x[30]_i_70_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_55 
       (.CI(\random_x_reg[30]_i_71_n_0 ),
        .CO({\random_x_reg[30]_i_55_n_0 ,\random_x_reg[30]_i_55_n_1 ,\random_x_reg[30]_i_55_n_2 ,\random_x_reg[30]_i_55_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[24:21]),
        .O({\random_x_reg[30]_i_55_n_4 ,\random_x_reg[30]_i_55_n_5 ,\random_x_reg[30]_i_55_n_6 ,\random_x_reg[30]_i_55_n_7 }),
        .S({\random_x[30]_i_73_n_0 ,\random_x[30]_i_74_n_0 ,\random_x[30]_i_75_n_0 ,\random_x[30]_i_76_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_56 
       (.CI(\random_x_reg[30]_i_72_n_0 ),
        .CO({\random_x_reg[30]_i_56_n_0 ,\random_x_reg[30]_i_56_n_1 ,\random_x_reg[30]_i_56_n_2 ,\random_x_reg[30]_i_56_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[21:18]),
        .O({\random_x_reg[30]_i_56_n_4 ,\random_x_reg[30]_i_56_n_5 ,\random_x_reg[30]_i_56_n_6 ,\random_x_reg[30]_i_56_n_7 }),
        .S({\random_x[30]_i_77_n_0 ,\random_x[30]_i_78_n_0 ,\random_x[30]_i_79_n_0 ,\random_x[30]_i_80_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_71 
       (.CI(\random_x_reg[23]_i_26_n_0 ),
        .CO({\random_x_reg[30]_i_71_n_0 ,\random_x_reg[30]_i_71_n_1 ,\random_x_reg[30]_i_71_n_2 ,\random_x_reg[30]_i_71_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[20:17]),
        .O({\random_x_reg[30]_i_71_n_4 ,\random_x_reg[30]_i_71_n_5 ,\random_x_reg[30]_i_71_n_6 ,\random_x_reg[30]_i_71_n_7 }),
        .S({\random_x[30]_i_83_n_0 ,\random_x[30]_i_84_n_0 ,\random_x[30]_i_85_n_0 ,\random_x[30]_i_86_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_72 
       (.CI(\random_x_reg[23]_i_27_n_0 ),
        .CO({\random_x_reg[30]_i_72_n_0 ,\random_x_reg[30]_i_72_n_1 ,\random_x_reg[30]_i_72_n_2 ,\random_x_reg[30]_i_72_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[17:14]),
        .O({\random_x_reg[30]_i_72_n_4 ,\random_x_reg[30]_i_72_n_5 ,\random_x_reg[30]_i_72_n_6 ,\random_x_reg[30]_i_72_n_7 }),
        .S({\random_x[30]_i_87_n_0 ,\random_x[30]_i_88_n_0 ,\random_x[30]_i_89_n_0 ,\random_x[30]_i_90_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_8 
       (.CI(\random_x_reg[30]_i_20_n_0 ),
        .CO(\random_x_reg[30]_i_8_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\random_x[30]_i_21_n_0 }),
        .O(random_x3[31:30]),
        .S({\<const0> ,\<const0> ,\random_x[30]_i_22_n_0 ,\random_x[30]_i_23_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_81 
       (.CI(\random_x_reg[30]_i_91_n_0 ),
        .CO({\random_x_reg[30]_i_81_n_0 ,\random_x_reg[30]_i_81_n_1 ,\random_x_reg[30]_i_81_n_2 ,\random_x_reg[30]_i_81_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[21:18]),
        .O({\random_x_reg[30]_i_81_n_4 ,\random_x_reg[30]_i_81_n_5 ,\random_x_reg[30]_i_81_n_6 ,\random_x_reg[30]_i_81_n_7 }),
        .S({\random_x[30]_i_92_n_0 ,\random_x[30]_i_93_n_0 ,\random_x[30]_i_94_n_0 ,\random_x[30]_i_95_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_82 
       (.CI(\random_x_reg[30]_i_81_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\random_x_reg[30]_i_82_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\random_x[30]_i_96_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_9 
       (.CI(\random_x_reg[27]_i_2_n_0 ),
        .CO({\random_x_reg[30]_i_9_n_0 ,\NLW_random_x_reg[30]_i_9_CO_UNCONNECTED [2],\random_x_reg[30]_i_9_n_2 ,\random_x_reg[30]_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,random_x4[30:28]}),
        .O({\random_x_reg[30]_i_9_n_5 ,\random_x_reg[30]_i_9_n_6 ,\random_x_reg[30]_i_9_n_7 }),
        .S({\<const1> ,\random_x[30]_i_27_n_0 ,\random_x[30]_i_28_n_0 ,\random_x[30]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_91 
       (.CI(\random_x_reg[30]_i_97_n_0 ),
        .CO({\random_x_reg[30]_i_91_n_0 ,\random_x_reg[30]_i_91_n_1 ,\random_x_reg[30]_i_91_n_2 ,\random_x_reg[30]_i_91_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[17:14]),
        .O({\random_x_reg[30]_i_91_n_4 ,\random_x_reg[30]_i_91_n_5 ,\random_x_reg[30]_i_91_n_6 ,\random_x_reg[30]_i_91_n_7 }),
        .S({\random_x[30]_i_98_n_0 ,\random_x[30]_i_99_n_0 ,\random_x[30]_i_100_n_0 ,\random_x[30]_i_101_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[30]_i_97 
       (.CI(\random_x_reg[23]_i_36_n_0 ),
        .CO({\random_x_reg[30]_i_97_n_0 ,\random_x_reg[30]_i_97_n_1 ,\random_x_reg[30]_i_97_n_2 ,\random_x_reg[30]_i_97_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[13:10]),
        .O({\random_x_reg[30]_i_97_n_4 ,\random_x_reg[30]_i_97_n_5 ,\random_x_reg[30]_i_97_n_6 ,\random_x_reg[30]_i_97_n_7 }),
        .S({\random_x[30]_i_102_n_0 ,\random_x[30]_i_103_n_0 ,\random_x[30]_i_104_n_0 ,\random_x[30]_i_105_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \random_x_reg[3] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[3]_i_1_n_0 ),
        .Q(random_x[3]),
        .R(random_x0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\random_x_reg[3]_i_2_n_0 ,\random_x_reg[3]_i_2_n_1 ,\random_x_reg[3]_i_2_n_2 ,\random_x_reg[3]_i_2_n_3 }),
        .CYINIT(\<const1> ),
        .DI({random_x4[3:1],random_x3[0]}),
        .O({\random_x_reg[3]_i_2_n_4 ,\random_x_reg[3]_i_2_n_5 ,\random_x_reg[3]_i_2_n_6 ,\random_x_reg[3]_i_2_n_7 }),
        .S({\random_x[3]_i_8_n_0 ,\random_x[3]_i_9_n_0 ,\random_x[3]_i_10_n_0 ,\random_x[3]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\random_x_reg[3]_i_3_n_0 ,\random_x_reg[3]_i_3_n_1 ,\random_x_reg[3]_i_3_n_2 ,\random_x_reg[3]_i_3_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[3]_i_3_n_4 ,\random_x_reg[3]_i_3_n_5 ,\random_x_reg[3]_i_3_n_6 ,\random_x_reg[3]_i_3_n_7 }),
        .S({\random_x_reg[3]_i_2_n_4 ,\random_x_reg[3]_i_2_n_5 ,\random_x_reg[3]_i_2_n_6 ,\random_x_reg[3]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[3]_i_7 
       (.CI(\<const0> ),
        .CO({\random_x_reg[3]_i_7_n_0 ,\random_x_reg[3]_i_7_n_1 ,\random_x_reg[3]_i_7_n_2 ,\random_x_reg[3]_i_7_n_3 }),
        .CYINIT(\<const0> ),
        .DI({random_x[0],\<const0> ,\<const0> ,\<const1> }),
        .O(random_x3[3:0]),
        .S({\random_x[3]_i_12_n_0 ,\random_x[3]_i_13_n_0 ,\random_x[3]_i_14_n_0 ,random_x[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[4] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[4]_i_1_n_0 ),
        .Q(random_x[4]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[5] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[5]_i_1_n_0 ),
        .Q(random_x[5]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[6] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[6]_i_1_n_0 ),
        .Q(random_x[6]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[7] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[7]_i_1_n_0 ),
        .Q(random_x[7]),
        .R(random_x0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[7]_i_12 
       (.CI(\random_x_reg[3]_i_7_n_0 ),
        .CO({\random_x_reg[7]_i_12_n_0 ,\random_x_reg[7]_i_12_n_1 ,\random_x_reg[7]_i_12_n_2 ,\random_x_reg[7]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x[4:1]),
        .O({\random_x_reg[7]_i_12_n_4 ,\random_x_reg[7]_i_12_n_5 ,\random_x_reg[7]_i_12_n_6 ,random_x3[4]}),
        .S({\random_x[7]_i_14_n_0 ,\random_x[7]_i_15_n_0 ,\random_x[7]_i_16_n_0 ,\random_x[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[7]_i_13 
       (.CI(\<const0> ),
        .CO({\random_x_reg[7]_i_13_n_0 ,\random_x_reg[7]_i_13_n_1 ,\random_x_reg[7]_i_13_n_2 ,\random_x_reg[7]_i_13_n_3 }),
        .CYINIT(\random_x[7]_i_18_n_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_x5[4:1]),
        .S({\random_x[7]_i_19_n_0 ,\random_x[7]_i_20_n_0 ,\random_x[7]_i_21_n_0 ,\random_x[7]_i_22_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[7]_i_2 
       (.CI(\random_x_reg[3]_i_2_n_0 ),
        .CO({\random_x_reg[7]_i_2_n_0 ,\random_x_reg[7]_i_2_n_1 ,\random_x_reg[7]_i_2_n_2 ,\random_x_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_x4[7:4]),
        .O({\random_x_reg[7]_i_2_n_4 ,\random_x_reg[7]_i_2_n_5 ,\random_x_reg[7]_i_2_n_6 ,\random_x_reg[7]_i_2_n_7 }),
        .S({\random_x[7]_i_8_n_0 ,\random_x[7]_i_9_n_0 ,\random_x[7]_i_10_n_0 ,\random_x[7]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_x_reg[7]_i_3 
       (.CI(\random_x_reg[3]_i_3_n_0 ),
        .CO({\random_x_reg[7]_i_3_n_0 ,\random_x_reg[7]_i_3_n_1 ,\random_x_reg[7]_i_3_n_2 ,\random_x_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_x_reg[7]_i_3_n_4 ,\random_x_reg[7]_i_3_n_5 ,\random_x_reg[7]_i_3_n_6 ,\random_x_reg[7]_i_3_n_7 }),
        .S({\random_x_reg[7]_i_2_n_4 ,\random_x_reg[7]_i_2_n_5 ,\random_x_reg[7]_i_2_n_6 ,\random_x_reg[7]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[8] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[8]_i_1_n_0 ),
        .Q(random_x[8]),
        .R(random_x0));
  FDRE #(
    .INIT(1'b0)) 
    \random_x_reg[9] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(\random_x[9]_i_1_n_0 ),
        .Q(random_x[9]),
        .R(random_x0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[0]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[3]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[3]_i_3_n_7 ),
        .O(A[0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[10]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[11]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[11]_i_3_n_5 ),
        .O(A[10]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[11]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[11]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[11]_i_3_n_4 ),
        .O(A[11]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[11]_i_10 
       (.I0(random_y3[9]),
        .I1(random_y3[31]),
        .I2(random_y5[9]),
        .O(\random_y[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[11]_i_11 
       (.I0(random_y3[8]),
        .I1(random_y3[31]),
        .I2(random_y5[8]),
        .O(\random_y[11]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_14 
       (.I0(random_y3[8]),
        .O(\random_y[11]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_15 
       (.I0(random_y3[7]),
        .O(\random_y[11]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_16 
       (.I0(random_y3[6]),
        .O(\random_y[11]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_17 
       (.I0(random_y3[5]),
        .O(\random_y[11]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_18 
       (.I0(\random_y_reg[15]_i_18_n_5 ),
        .O(\random_y[11]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[11]_i_19 
       (.I0(\random_y_reg[15]_i_18_n_6 ),
        .O(\random_y[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[11]_i_20 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg[7]_i_18_n_6 ),
        .O(\random_y[11]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[11]_i_4 
       (.I0(random_y5[11]),
        .I1(random_y3[31]),
        .I2(random_y3[11]),
        .O(random_y4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[11]_i_5 
       (.I0(random_y5[10]),
        .I1(random_y3[31]),
        .I2(random_y3[10]),
        .O(random_y4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[11]_i_6 
       (.I0(random_y5[9]),
        .I1(random_y3[31]),
        .I2(random_y3[9]),
        .O(random_y4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[11]_i_7 
       (.I0(random_y5[8]),
        .I1(random_y3[31]),
        .I2(random_y3[8]),
        .O(random_y4[8]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[11]_i_8 
       (.I0(random_y3[11]),
        .I1(random_y3[31]),
        .I2(random_y5[11]),
        .O(\random_y[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[11]_i_9 
       (.I0(random_y3[10]),
        .I1(random_y3[31]),
        .I2(random_y5[10]),
        .O(\random_y[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[12]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[15]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[15]_i_3_n_7 ),
        .O(A[12]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[13]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[15]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[15]_i_3_n_6 ),
        .O(A[13]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[14]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[15]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[15]_i_3_n_5 ),
        .O(A[14]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[15]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[15]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[15]_i_3_n_4 ),
        .O(A[15]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[15]_i_10 
       (.I0(random_y3[13]),
        .I1(random_y3[31]),
        .I2(random_y5[13]),
        .O(\random_y[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[15]_i_11 
       (.I0(random_y3[12]),
        .I1(random_y3[31]),
        .I2(random_y5[12]),
        .O(\random_y[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[15]_i_14 
       (.I0(random_y3[12]),
        .O(\random_y[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[15]_i_15 
       (.I0(random_y3[11]),
        .O(\random_y[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[15]_i_16 
       (.I0(random_y3[10]),
        .O(\random_y[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[15]_i_17 
       (.I0(random_y3[9]),
        .O(\random_y[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[15]_i_19 
       (.I0(\random_y_reg[19]_i_28_n_7 ),
        .I1(\random_y_reg[19]_i_29_n_6 ),
        .O(\random_y[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[15]_i_20 
       (.I0(\random_y_reg[7]_i_18_n_4 ),
        .I1(\random_y_reg[19]_i_29_n_7 ),
        .O(\random_y[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[15]_i_21 
       (.I0(\random_y_reg_n_0_[1] ),
        .I1(\random_y_reg[7]_i_18_n_5 ),
        .O(\random_y[15]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[15]_i_22 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg[7]_i_18_n_6 ),
        .O(\random_y[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[15]_i_23 
       (.I0(\random_y_reg[19]_i_29_n_6 ),
        .I1(\random_y_reg[19]_i_28_n_7 ),
        .I2(\random_y_reg[19]_i_29_n_5 ),
        .I3(\random_y_reg[19]_i_28_n_6 ),
        .O(\random_y[15]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[15]_i_24 
       (.I0(\random_y_reg[19]_i_29_n_7 ),
        .I1(\random_y_reg[7]_i_18_n_4 ),
        .I2(\random_y_reg[19]_i_29_n_6 ),
        .I3(\random_y_reg[19]_i_28_n_7 ),
        .O(\random_y[15]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[15]_i_25 
       (.I0(\random_y_reg[7]_i_18_n_5 ),
        .I1(\random_y_reg_n_0_[1] ),
        .I2(\random_y_reg[19]_i_29_n_7 ),
        .I3(\random_y_reg[7]_i_18_n_4 ),
        .O(\random_y[15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[15]_i_26 
       (.I0(\random_y_reg[7]_i_18_n_6 ),
        .I1(\random_y_reg_n_0_[0] ),
        .I2(\random_y_reg[7]_i_18_n_5 ),
        .I3(\random_y_reg_n_0_[1] ),
        .O(\random_y[15]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[15]_i_4 
       (.I0(random_y5[15]),
        .I1(random_y3[31]),
        .I2(random_y3[15]),
        .O(random_y4[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[15]_i_5 
       (.I0(random_y5[14]),
        .I1(random_y3[31]),
        .I2(random_y3[14]),
        .O(random_y4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[15]_i_6 
       (.I0(random_y5[13]),
        .I1(random_y3[31]),
        .I2(random_y3[13]),
        .O(random_y4[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[15]_i_7 
       (.I0(random_y5[12]),
        .I1(random_y3[31]),
        .I2(random_y3[12]),
        .O(random_y4[12]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[15]_i_8 
       (.I0(random_y3[15]),
        .I1(random_y3[31]),
        .I2(random_y5[15]),
        .O(\random_y[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[15]_i_9 
       (.I0(random_y3[14]),
        .I1(random_y3[31]),
        .I2(random_y5[14]),
        .O(\random_y[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[16]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[19]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[19]_i_3_n_7 ),
        .O(A[16]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[17]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[19]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[19]_i_3_n_6 ),
        .O(A[17]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[18]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[19]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[19]_i_3_n_5 ),
        .O(A[18]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[19]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[19]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[19]_i_3_n_4 ),
        .O(A[19]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[19]_i_10 
       (.I0(random_y3[17]),
        .I1(random_y3[31]),
        .I2(random_y5[17]),
        .O(\random_y[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[19]_i_11 
       (.I0(random_y3[16]),
        .I1(random_y3[31]),
        .I2(random_y5[16]),
        .O(\random_y[19]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_14 
       (.I0(random_y3[16]),
        .O(\random_y[19]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_15 
       (.I0(random_y3[15]),
        .O(\random_y[19]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_16 
       (.I0(random_y3[14]),
        .O(\random_y[19]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_17 
       (.I0(random_y3[13]),
        .O(\random_y[19]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_18 
       (.I0(\random_y_reg[23]_i_18_n_7 ),
        .O(\random_y[19]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[19]_i_20 
       (.I0(\random_y_reg[23]_i_27_n_7 ),
        .I1(\random_y_reg[23]_i_28_n_6 ),
        .O(\random_y[19]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[19]_i_21 
       (.I0(\random_y_reg[19]_i_28_n_4 ),
        .I1(\random_y_reg[23]_i_28_n_7 ),
        .O(\random_y[19]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[19]_i_22 
       (.I0(\random_y_reg[19]_i_28_n_5 ),
        .I1(\random_y_reg[19]_i_29_n_4 ),
        .O(\random_y[19]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[19]_i_23 
       (.I0(\random_y_reg[19]_i_28_n_6 ),
        .I1(\random_y_reg[19]_i_29_n_5 ),
        .O(\random_y[19]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \random_y[19]_i_24 
       (.I0(\random_y_reg[23]_i_27_n_6 ),
        .I1(\random_y_reg[23]_i_28_n_5 ),
        .I2(\random_y_reg[23]_i_28_n_6 ),
        .I3(\random_y_reg[23]_i_27_n_7 ),
        .O(\random_y[19]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[19]_i_25 
       (.I0(\random_y_reg[23]_i_28_n_7 ),
        .I1(\random_y_reg[19]_i_28_n_4 ),
        .I2(\random_y_reg[23]_i_28_n_6 ),
        .I3(\random_y_reg[23]_i_27_n_7 ),
        .O(\random_y[19]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[19]_i_26 
       (.I0(\random_y_reg[19]_i_29_n_4 ),
        .I1(\random_y_reg[19]_i_28_n_5 ),
        .I2(\random_y_reg[23]_i_28_n_7 ),
        .I3(\random_y_reg[19]_i_28_n_4 ),
        .O(\random_y[19]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \random_y[19]_i_27 
       (.I0(\random_y_reg[19]_i_29_n_5 ),
        .I1(\random_y_reg[19]_i_28_n_6 ),
        .I2(\random_y_reg[19]_i_29_n_4 ),
        .I3(\random_y_reg[19]_i_28_n_5 ),
        .O(\random_y[19]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_30 
       (.I0(\random_y_reg_n_0_[8] ),
        .I1(\random_y_reg_n_0_[11] ),
        .O(\random_y[19]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_31 
       (.I0(\random_y_reg_n_0_[7] ),
        .I1(\random_y_reg_n_0_[10] ),
        .O(\random_y[19]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_32 
       (.I0(\random_y_reg_n_0_[6] ),
        .I1(\random_y_reg_n_0_[9] ),
        .O(\random_y[19]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_33 
       (.I0(\random_y_reg_n_0_[5] ),
        .I1(\random_y_reg_n_0_[8] ),
        .O(\random_y[19]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[19]_i_34 
       (.I0(\random_y_reg_n_0_[5] ),
        .I1(\random_y_reg[19]_i_38_n_4 ),
        .O(\random_y[19]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[19]_i_35 
       (.I0(\random_y_reg_n_0_[4] ),
        .I1(\random_y_reg[19]_i_38_n_5 ),
        .O(\random_y[19]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[19]_i_36 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg[19]_i_38_n_6 ),
        .O(\random_y[19]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[19]_i_37 
       (.I0(\random_y_reg_n_0_[2] ),
        .I1(\random_y_reg_n_0_[0] ),
        .O(\random_y[19]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_39 
       (.I0(\random_y_reg_n_0_[1] ),
        .I1(\random_y_reg_n_0_[3] ),
        .O(\random_y[19]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[19]_i_4 
       (.I0(random_y5[19]),
        .I1(random_y3[31]),
        .I2(random_y3[19]),
        .O(random_y4[19]));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[19]_i_40 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg_n_0_[2] ),
        .O(\random_y[19]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[19]_i_41 
       (.I0(\random_y_reg_n_0_[1] ),
        .O(\random_y[19]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[19]_i_5 
       (.I0(random_y5[18]),
        .I1(random_y3[31]),
        .I2(random_y3[18]),
        .O(random_y4[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[19]_i_6 
       (.I0(random_y5[17]),
        .I1(random_y3[31]),
        .I2(random_y3[17]),
        .O(random_y4[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[19]_i_7 
       (.I0(random_y5[16]),
        .I1(random_y3[31]),
        .I2(random_y3[16]),
        .O(random_y4[16]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[19]_i_8 
       (.I0(random_y3[19]),
        .I1(random_y3[31]),
        .I2(random_y5[19]),
        .O(\random_y[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[19]_i_9 
       (.I0(random_y3[18]),
        .I1(random_y3[31]),
        .I2(random_y5[18]),
        .O(\random_y[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[1]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[3]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[3]_i_3_n_6 ),
        .O(A[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[20]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[23]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[23]_i_3_n_7 ),
        .O(A[20]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[21]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[23]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[23]_i_3_n_6 ),
        .O(A[21]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[22]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[23]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[23]_i_3_n_5 ),
        .O(A[22]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[23]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[23]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[23]_i_3_n_4 ),
        .O(A[23]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[23]_i_10 
       (.I0(random_y3[21]),
        .I1(random_y3[31]),
        .I2(random_y5[21]),
        .O(\random_y[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[23]_i_11 
       (.I0(random_y3[20]),
        .I1(random_y3[31]),
        .I2(random_y5[20]),
        .O(\random_y[23]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[23]_i_14 
       (.I0(random_y3[20]),
        .O(\random_y[23]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[23]_i_15 
       (.I0(random_y3[19]),
        .O(\random_y[23]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[23]_i_16 
       (.I0(random_y3[18]),
        .O(\random_y[23]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[23]_i_17 
       (.I0(random_y3[17]),
        .O(\random_y[23]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[23]_i_19 
       (.I0(\random_y_reg[30]_i_93_n_7 ),
        .I1(\random_y_reg[30]_i_94_n_6 ),
        .I2(\random_y_reg_n_0_[2] ),
        .O(\random_y[23]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[23]_i_20 
       (.I0(\random_y_reg[23]_i_27_n_4 ),
        .I1(\random_y_reg[30]_i_94_n_7 ),
        .I2(\random_y_reg_n_0_[1] ),
        .O(\random_y[23]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[23]_i_21 
       (.I0(\random_y_reg[23]_i_27_n_5 ),
        .I1(\random_y_reg_n_0_[0] ),
        .I2(\random_y_reg[23]_i_28_n_4 ),
        .O(\random_y[23]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_y[23]_i_22 
       (.I0(\random_y_reg[23]_i_27_n_6 ),
        .I1(\random_y_reg[23]_i_28_n_5 ),
        .O(\random_y[23]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[23]_i_23 
       (.I0(\random_y_reg[30]_i_93_n_6 ),
        .I1(\random_y_reg[30]_i_94_n_5 ),
        .I2(\random_y_reg_n_0_[3] ),
        .I3(\random_y[23]_i_19_n_0 ),
        .O(\random_y[23]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[23]_i_24 
       (.I0(\random_y_reg[30]_i_93_n_7 ),
        .I1(\random_y_reg[30]_i_94_n_6 ),
        .I2(\random_y_reg_n_0_[2] ),
        .I3(\random_y[23]_i_20_n_0 ),
        .O(\random_y[23]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[23]_i_25 
       (.I0(\random_y_reg[23]_i_27_n_4 ),
        .I1(\random_y_reg[30]_i_94_n_7 ),
        .I2(\random_y_reg_n_0_[1] ),
        .I3(\random_y[23]_i_21_n_0 ),
        .O(\random_y[23]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[23]_i_26 
       (.I0(\random_y_reg[23]_i_27_n_5 ),
        .I1(\random_y_reg_n_0_[0] ),
        .I2(\random_y_reg[23]_i_28_n_4 ),
        .I3(\random_y[23]_i_22_n_0 ),
        .O(\random_y[23]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_29 
       (.I0(\random_y_reg_n_0_[12] ),
        .I1(\random_y_reg_n_0_[15] ),
        .O(\random_y[23]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_30 
       (.I0(\random_y_reg_n_0_[11] ),
        .I1(\random_y_reg_n_0_[14] ),
        .O(\random_y[23]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_31 
       (.I0(\random_y_reg_n_0_[10] ),
        .I1(\random_y_reg_n_0_[13] ),
        .O(\random_y[23]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_32 
       (.I0(\random_y_reg_n_0_[9] ),
        .I1(\random_y_reg_n_0_[12] ),
        .O(\random_y[23]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[23]_i_33 
       (.I0(\random_y_reg_n_0_[9] ),
        .I1(\random_y_reg[23]_i_37_n_4 ),
        .O(\random_y[23]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[23]_i_34 
       (.I0(\random_y_reg_n_0_[8] ),
        .I1(\random_y_reg[23]_i_37_n_5 ),
        .O(\random_y[23]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[23]_i_35 
       (.I0(\random_y_reg_n_0_[7] ),
        .I1(\random_y_reg[23]_i_37_n_6 ),
        .O(\random_y[23]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[23]_i_36 
       (.I0(\random_y_reg_n_0_[6] ),
        .I1(\random_y_reg[23]_i_37_n_7 ),
        .O(\random_y[23]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_38 
       (.I0(\random_y_reg_n_0_[5] ),
        .I1(\random_y_reg_n_0_[7] ),
        .O(\random_y[23]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_39 
       (.I0(\random_y_reg_n_0_[4] ),
        .I1(\random_y_reg_n_0_[6] ),
        .O(\random_y[23]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[23]_i_4 
       (.I0(random_y5[23]),
        .I1(random_y3[31]),
        .I2(random_y3[23]),
        .O(random_y4[23]));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_40 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg_n_0_[5] ),
        .O(\random_y[23]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[23]_i_41 
       (.I0(\random_y_reg_n_0_[2] ),
        .I1(\random_y_reg_n_0_[4] ),
        .O(\random_y[23]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[23]_i_5 
       (.I0(random_y5[22]),
        .I1(random_y3[31]),
        .I2(random_y3[22]),
        .O(random_y4[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[23]_i_6 
       (.I0(random_y5[21]),
        .I1(random_y3[31]),
        .I2(random_y3[21]),
        .O(random_y4[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[23]_i_7 
       (.I0(random_y5[20]),
        .I1(random_y3[31]),
        .I2(random_y3[20]),
        .O(random_y4[20]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[23]_i_8 
       (.I0(random_y3[23]),
        .I1(random_y3[31]),
        .I2(random_y5[23]),
        .O(\random_y[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[23]_i_9 
       (.I0(random_y3[22]),
        .I1(random_y3[31]),
        .I2(random_y5[22]),
        .O(\random_y[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[24]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[27]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[27]_i_3_n_7 ),
        .O(A[24]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[25]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[27]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[27]_i_3_n_6 ),
        .O(A[25]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[26]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[27]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[27]_i_3_n_5 ),
        .O(A[26]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[27]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[27]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[27]_i_3_n_4 ),
        .O(A[27]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[27]_i_10 
       (.I0(random_y3[25]),
        .I1(random_y3[31]),
        .I2(random_y5[25]),
        .O(\random_y[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[27]_i_11 
       (.I0(random_y3[24]),
        .I1(random_y3[31]),
        .I2(random_y5[24]),
        .O(\random_y[27]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[27]_i_13 
       (.I0(random_y3[24]),
        .O(\random_y[27]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[27]_i_14 
       (.I0(random_y3[23]),
        .O(\random_y[27]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[27]_i_15 
       (.I0(random_y3[22]),
        .O(\random_y[27]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[27]_i_16 
       (.I0(random_y3[21]),
        .O(\random_y[27]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[27]_i_4 
       (.I0(random_y5[27]),
        .I1(random_y3[31]),
        .I2(random_y3[27]),
        .O(random_y4[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[27]_i_5 
       (.I0(random_y5[26]),
        .I1(random_y3[31]),
        .I2(random_y3[26]),
        .O(random_y4[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[27]_i_6 
       (.I0(random_y5[25]),
        .I1(random_y3[31]),
        .I2(random_y3[25]),
        .O(random_y4[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[27]_i_7 
       (.I0(random_y5[24]),
        .I1(random_y3[31]),
        .I2(random_y3[24]),
        .O(random_y4[24]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[27]_i_8 
       (.I0(random_y3[27]),
        .I1(random_y3[31]),
        .I2(random_y5[27]),
        .O(\random_y[27]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[27]_i_9 
       (.I0(random_y3[26]),
        .I1(random_y3[31]),
        .I2(random_y5[26]),
        .O(\random_y[27]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[28]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[30]_i_9_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[30]_i_10_n_7 ),
        .O(A[28]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[29]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[30]_i_9_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[30]_i_10_n_6 ),
        .O(A[29]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[2]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[3]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[3]_i_3_n_5 ),
        .O(A[2]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \random_y[30]_i_1 
       (.I0(\random_y[30]_i_3_n_0 ),
        .I1(\random_y[30]_i_4_n_0 ),
        .I2(\random_y[30]_i_5_n_0 ),
        .I3(\random_y[30]_i_6_n_0 ),
        .I4(\random_y[30]_i_7_n_0 ),
        .O(random_y0));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_100 
       (.I0(\random_y_reg_n_0_[16] ),
        .I1(\random_y_reg[30]_i_114_n_5 ),
        .O(\random_y[30]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_101 
       (.I0(\random_y_reg_n_0_[15] ),
        .I1(\random_y_reg[30]_i_114_n_6 ),
        .O(\random_y[30]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_102 
       (.I0(\random_y_reg_n_0_[14] ),
        .I1(\random_y_reg[30]_i_114_n_7 ),
        .O(\random_y[30]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_106 
       (.I0(\random_y_reg_n_0_[16] ),
        .I1(\random_y_reg_n_0_[19] ),
        .O(\random_y[30]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_107 
       (.I0(\random_y_reg_n_0_[15] ),
        .I1(\random_y_reg_n_0_[18] ),
        .O(\random_y[30]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_108 
       (.I0(\random_y_reg_n_0_[14] ),
        .I1(\random_y_reg_n_0_[17] ),
        .O(\random_y[30]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_109 
       (.I0(\random_y_reg_n_0_[13] ),
        .I1(\random_y_reg_n_0_[16] ),
        .O(\random_y[30]_i_109_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_11 
       (.I0(\random_y_reg[19]_i_2_n_6 ),
        .I1(\random_y_reg[19]_i_3_n_6 ),
        .I2(\random_y_reg[3]_i_2_n_5 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[3]_i_3_n_5 ),
        .O(\random_y[30]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_110 
       (.I0(\random_y_reg_n_0_[13] ),
        .I1(\random_y_reg[30]_i_124_n_4 ),
        .O(\random_y[30]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_111 
       (.I0(\random_y_reg_n_0_[12] ),
        .I1(\random_y_reg[30]_i_124_n_5 ),
        .O(\random_y[30]_i_111_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_112 
       (.I0(\random_y_reg_n_0_[11] ),
        .I1(\random_y_reg[30]_i_124_n_6 ),
        .O(\random_y[30]_i_112_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_113 
       (.I0(\random_y_reg_n_0_[10] ),
        .I1(\random_y_reg[30]_i_124_n_7 ),
        .O(\random_y[30]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_115 
       (.I0(\random_y_reg_n_0_[21] ),
        .I1(\random_y_reg_n_0_[23] ),
        .O(\random_y[30]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_116 
       (.I0(\random_y_reg_n_0_[20] ),
        .I1(\random_y_reg_n_0_[22] ),
        .O(\random_y[30]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_117 
       (.I0(\random_y_reg_n_0_[19] ),
        .I1(\random_y_reg_n_0_[21] ),
        .O(\random_y[30]_i_117_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_118 
       (.I0(\random_y_reg_n_0_[18] ),
        .I1(\random_y_reg_n_0_[20] ),
        .O(\random_y[30]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_119 
       (.I0(\random_y_reg_n_0_[22] ),
        .I1(\random_y_reg_n_0_[24] ),
        .O(\random_y[30]_i_119_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_12 
       (.I0(\random_y_reg[30]_i_9_n_6 ),
        .I1(\random_y_reg[30]_i_10_n_6 ),
        .I2(\random_y_reg[23]_i_2_n_5 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[23]_i_3_n_5 ),
        .O(\random_y[30]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_120 
       (.I0(\random_y_reg_n_0_[17] ),
        .I1(\random_y_reg_n_0_[19] ),
        .O(\random_y[30]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_121 
       (.I0(\random_y_reg_n_0_[16] ),
        .I1(\random_y_reg_n_0_[18] ),
        .O(\random_y[30]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_122 
       (.I0(\random_y_reg_n_0_[15] ),
        .I1(\random_y_reg_n_0_[17] ),
        .O(\random_y[30]_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_123 
       (.I0(\random_y_reg_n_0_[14] ),
        .I1(\random_y_reg_n_0_[16] ),
        .O(\random_y[30]_i_123_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_125 
       (.I0(\random_y_reg_n_0_[13] ),
        .I1(\random_y_reg_n_0_[15] ),
        .O(\random_y[30]_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_126 
       (.I0(\random_y_reg_n_0_[12] ),
        .I1(\random_y_reg_n_0_[14] ),
        .O(\random_y[30]_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_127 
       (.I0(\random_y_reg_n_0_[11] ),
        .I1(\random_y_reg_n_0_[13] ),
        .O(\random_y[30]_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_128 
       (.I0(\random_y_reg_n_0_[10] ),
        .I1(\random_y_reg_n_0_[12] ),
        .O(\random_y[30]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_129 
       (.I0(\random_y_reg_n_0_[9] ),
        .I1(\random_y_reg_n_0_[11] ),
        .O(\random_y[30]_i_129_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_13 
       (.I0(\random_y_reg[3]_i_2_n_4 ),
        .I1(\random_y_reg[3]_i_3_n_4 ),
        .I2(\random_y_reg[15]_i_2_n_6 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[15]_i_3_n_6 ),
        .O(\random_y[30]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_130 
       (.I0(\random_y_reg_n_0_[8] ),
        .I1(\random_y_reg_n_0_[10] ),
        .O(\random_y[30]_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_131 
       (.I0(\random_y_reg_n_0_[7] ),
        .I1(\random_y_reg_n_0_[9] ),
        .O(\random_y[30]_i_131_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_132 
       (.I0(\random_y_reg_n_0_[6] ),
        .I1(\random_y_reg_n_0_[8] ),
        .O(\random_y[30]_i_132_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_14 
       (.I0(\random_y_reg[15]_i_2_n_4 ),
        .I1(\random_y_reg[15]_i_3_n_4 ),
        .I2(\random_y_reg[15]_i_2_n_7 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[15]_i_3_n_7 ),
        .O(\random_y[30]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[30]_i_15 
       (.I0(\random_y_reg[27]_i_3_n_7 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[27]_i_2_n_7 ),
        .O(\random_y[30]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_16 
       (.I0(\random_y_reg[3]_i_2_n_7 ),
        .I1(\random_y_reg[3]_i_3_n_7 ),
        .I2(\random_y_reg[19]_i_2_n_5 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[19]_i_3_n_5 ),
        .O(\random_y[30]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_17 
       (.I0(\random_y_reg[23]_i_3_n_6 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[23]_i_2_n_6 ),
        .I3(\random_y_reg[27]_i_3_n_6 ),
        .I4(\random_y_reg[27]_i_2_n_6 ),
        .I5(\random_y[30]_i_29_n_0 ),
        .O(\random_y[30]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_18 
       (.I0(\random_y_reg[11]_i_3_n_6 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[11]_i_2_n_6 ),
        .I3(\random_y_reg[3]_i_3_n_6 ),
        .I4(\random_y_reg[3]_i_2_n_6 ),
        .I5(\random_y[30]_i_30_n_0 ),
        .O(\random_y[30]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_19 
       (.I0(\random_y_reg[11]_i_3_n_7 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[11]_i_2_n_7 ),
        .I3(\random_y_reg[27]_i_3_n_4 ),
        .I4(\random_y_reg[27]_i_2_n_4 ),
        .I5(\random_y[30]_i_31_n_0 ),
        .O(\random_y[30]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[30]_i_2 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[30]_i_9_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[30]_i_10_n_5 ),
        .O(A[30]));
  LUT3 #(
    .INIT(8'hCA)) 
    \random_y[30]_i_23 
       (.I0(random_y3[30]),
        .I1(random_y5[30]),
        .I2(random_y3[31]),
        .O(random_y4[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[30]_i_24 
       (.I0(random_y5[29]),
        .I1(random_y3[31]),
        .I2(random_y3[29]),
        .O(random_y4[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[30]_i_25 
       (.I0(random_y5[28]),
        .I1(random_y3[31]),
        .I2(random_y3[28]),
        .O(random_y4[28]));
  LUT3 #(
    .INIT(8'h27)) 
    \random_y[30]_i_26 
       (.I0(random_y3[31]),
        .I1(random_y5[30]),
        .I2(random_y3[30]),
        .O(\random_y[30]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[30]_i_27 
       (.I0(random_y3[29]),
        .I1(random_y3[31]),
        .I2(random_y5[29]),
        .O(\random_y[30]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[30]_i_28 
       (.I0(random_y3[28]),
        .I1(random_y3[31]),
        .I2(random_y5[28]),
        .O(\random_y[30]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_29 
       (.I0(\random_y_reg[7]_i_2_n_5 ),
        .I1(\random_y_reg[7]_i_3_n_5 ),
        .I2(\random_y_reg[7]_i_2_n_6 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[7]_i_3_n_6 ),
        .O(\random_y[30]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_3 
       (.I0(\random_y_reg[11]_i_3_n_4 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[11]_i_2_n_4 ),
        .I3(\random_y_reg[30]_i_10_n_7 ),
        .I4(\random_y_reg[30]_i_9_n_7 ),
        .I5(\random_y[30]_i_11_n_0 ),
        .O(\random_y[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_30 
       (.I0(\random_y_reg[7]_i_2_n_4 ),
        .I1(\random_y_reg[7]_i_3_n_4 ),
        .I2(\random_y_reg[15]_i_2_n_5 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[15]_i_3_n_5 ),
        .O(\random_y[30]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \random_y[30]_i_31 
       (.I0(\random_y_reg[27]_i_2_n_5 ),
        .I1(\random_y_reg[27]_i_3_n_5 ),
        .I2(\random_y_reg[23]_i_2_n_4 ),
        .I3(\random_y_reg[30]_i_10_n_0 ),
        .I4(\random_y_reg[23]_i_3_n_4 ),
        .O(\random_y[30]_i_31_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_34 
       (.I0(\random_y_reg[30]_i_56_n_6 ),
        .I1(\random_y_reg[30]_i_57_n_5 ),
        .I2(\random_y_reg_n_0_[15] ),
        .O(\random_y[30]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \random_y[30]_i_35 
       (.I0(\random_y_reg_n_0_[16] ),
        .I1(\random_y_reg[30]_i_57_n_4 ),
        .I2(\random_y_reg[30]_i_56_n_5 ),
        .I3(\random_y_reg[30]_i_56_n_4 ),
        .I4(\random_y_reg[30]_i_58_n_7 ),
        .I5(\random_y_reg_n_0_[17] ),
        .O(\random_y[30]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_36 
       (.I0(\random_y[30]_i_34_n_0 ),
        .I1(\random_y_reg[30]_i_56_n_5 ),
        .I2(\random_y_reg[30]_i_57_n_4 ),
        .I3(\random_y_reg_n_0_[16] ),
        .O(\random_y[30]_i_36_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_37 
       (.I0(\random_y_reg[30]_i_56_n_7 ),
        .I1(\random_y_reg[30]_i_57_n_6 ),
        .I2(\random_y_reg_n_0_[14] ),
        .O(\random_y[30]_i_37_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_38 
       (.I0(\random_y_reg[30]_i_59_n_4 ),
        .I1(\random_y_reg[30]_i_57_n_7 ),
        .I2(\random_y_reg_n_0_[13] ),
        .O(\random_y[30]_i_38_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_39 
       (.I0(\random_y_reg[30]_i_59_n_5 ),
        .I1(\random_y_reg[30]_i_60_n_4 ),
        .I2(\random_y_reg_n_0_[12] ),
        .O(\random_y[30]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_4 
       (.I0(\random_y_reg[7]_i_3_n_7 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[7]_i_2_n_7 ),
        .I3(\random_y_reg[19]_i_3_n_7 ),
        .I4(\random_y_reg[19]_i_2_n_7 ),
        .I5(\random_y[30]_i_12_n_0 ),
        .O(\random_y[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_40 
       (.I0(\random_y_reg[30]_i_59_n_6 ),
        .I1(\random_y_reg[30]_i_60_n_5 ),
        .I2(\random_y_reg_n_0_[11] ),
        .O(\random_y[30]_i_40_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_41 
       (.I0(\random_y_reg[30]_i_56_n_6 ),
        .I1(\random_y_reg[30]_i_57_n_5 ),
        .I2(\random_y_reg_n_0_[15] ),
        .I3(\random_y[30]_i_37_n_0 ),
        .O(\random_y[30]_i_41_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_42 
       (.I0(\random_y_reg[30]_i_56_n_7 ),
        .I1(\random_y_reg[30]_i_57_n_6 ),
        .I2(\random_y_reg_n_0_[14] ),
        .I3(\random_y[30]_i_38_n_0 ),
        .O(\random_y[30]_i_42_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_43 
       (.I0(\random_y_reg[30]_i_59_n_4 ),
        .I1(\random_y_reg[30]_i_57_n_7 ),
        .I2(\random_y_reg_n_0_[13] ),
        .I3(\random_y[30]_i_39_n_0 ),
        .O(\random_y[30]_i_43_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_44 
       (.I0(\random_y_reg[30]_i_59_n_5 ),
        .I1(\random_y_reg[30]_i_60_n_4 ),
        .I2(\random_y_reg_n_0_[12] ),
        .I3(\random_y[30]_i_40_n_0 ),
        .O(\random_y[30]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_48 
       (.I0(\random_y_reg[30]_i_59_n_7 ),
        .I1(\random_y_reg[30]_i_60_n_6 ),
        .I2(\random_y_reg_n_0_[10] ),
        .O(\random_y[30]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_49 
       (.I0(\random_y_reg[30]_i_75_n_4 ),
        .I1(\random_y_reg[30]_i_60_n_7 ),
        .I2(\random_y_reg_n_0_[9] ),
        .O(\random_y[30]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \random_y[30]_i_5 
       (.I0(\random_y_reg[23]_i_3_n_7 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[23]_i_2_n_7 ),
        .I3(\random_y_reg[30]_i_10_n_5 ),
        .I4(\random_y_reg[30]_i_9_n_5 ),
        .I5(\random_y[30]_i_13_n_0 ),
        .O(\random_y[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_50 
       (.I0(\random_y_reg[30]_i_75_n_5 ),
        .I1(\random_y_reg[30]_i_76_n_4 ),
        .I2(\random_y_reg_n_0_[8] ),
        .O(\random_y[30]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_51 
       (.I0(\random_y_reg[30]_i_75_n_6 ),
        .I1(\random_y_reg[30]_i_76_n_5 ),
        .I2(\random_y_reg_n_0_[7] ),
        .O(\random_y[30]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_52 
       (.I0(\random_y_reg[30]_i_59_n_6 ),
        .I1(\random_y_reg[30]_i_60_n_5 ),
        .I2(\random_y_reg_n_0_[11] ),
        .I3(\random_y[30]_i_48_n_0 ),
        .O(\random_y[30]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_53 
       (.I0(\random_y_reg[30]_i_59_n_7 ),
        .I1(\random_y_reg[30]_i_60_n_6 ),
        .I2(\random_y_reg_n_0_[10] ),
        .I3(\random_y[30]_i_49_n_0 ),
        .O(\random_y[30]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_54 
       (.I0(\random_y_reg[30]_i_75_n_4 ),
        .I1(\random_y_reg[30]_i_60_n_7 ),
        .I2(\random_y_reg_n_0_[9] ),
        .I3(\random_y[30]_i_50_n_0 ),
        .O(\random_y[30]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_55 
       (.I0(\random_y_reg[30]_i_75_n_5 ),
        .I1(\random_y_reg[30]_i_76_n_4 ),
        .I2(\random_y_reg_n_0_[8] ),
        .I3(\random_y[30]_i_51_n_0 ),
        .O(\random_y[30]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \random_y[30]_i_6 
       (.I0(\random_y_reg[19]_i_3_n_4 ),
        .I1(\random_y_reg[30]_i_10_n_0 ),
        .I2(\random_y_reg[19]_i_2_n_4 ),
        .I3(\random_y_reg[11]_i_3_n_5 ),
        .I4(\random_y_reg[11]_i_2_n_5 ),
        .I5(\random_y[30]_i_14_n_0 ),
        .O(\random_y[30]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_61 
       (.I0(random_y3[30]),
        .O(\random_y[30]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_62 
       (.I0(random_y3[29]),
        .O(\random_y[30]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_63 
       (.I0(random_y3[28]),
        .O(\random_y[30]_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_64 
       (.I0(random_y3[27]),
        .O(\random_y[30]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_65 
       (.I0(random_y3[26]),
        .O(\random_y[30]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[30]_i_66 
       (.I0(random_y3[25]),
        .O(\random_y[30]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_67 
       (.I0(\random_y_reg[30]_i_75_n_7 ),
        .I1(\random_y_reg[30]_i_76_n_6 ),
        .I2(\random_y_reg_n_0_[6] ),
        .O(\random_y[30]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_68 
       (.I0(\random_y_reg[30]_i_93_n_4 ),
        .I1(\random_y_reg[30]_i_76_n_7 ),
        .I2(\random_y_reg_n_0_[5] ),
        .O(\random_y[30]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_69 
       (.I0(\random_y_reg[30]_i_93_n_5 ),
        .I1(\random_y_reg[30]_i_94_n_4 ),
        .I2(\random_y_reg_n_0_[4] ),
        .O(\random_y[30]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \random_y[30]_i_7 
       (.I0(random_y3[31]),
        .I1(\random_y[30]_i_15_n_0 ),
        .I2(\random_y[30]_i_16_n_0 ),
        .I3(\random_y[30]_i_17_n_0 ),
        .I4(\random_y[30]_i_18_n_0 ),
        .I5(\random_y[30]_i_19_n_0 ),
        .O(\random_y[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \random_y[30]_i_70 
       (.I0(\random_y_reg[30]_i_93_n_6 ),
        .I1(\random_y_reg[30]_i_94_n_5 ),
        .I2(\random_y_reg_n_0_[3] ),
        .O(\random_y[30]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_71 
       (.I0(\random_y_reg[30]_i_75_n_6 ),
        .I1(\random_y_reg[30]_i_76_n_5 ),
        .I2(\random_y_reg_n_0_[7] ),
        .I3(\random_y[30]_i_67_n_0 ),
        .O(\random_y[30]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_72 
       (.I0(\random_y_reg[30]_i_75_n_7 ),
        .I1(\random_y_reg[30]_i_76_n_6 ),
        .I2(\random_y_reg_n_0_[6] ),
        .I3(\random_y[30]_i_68_n_0 ),
        .O(\random_y[30]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_73 
       (.I0(\random_y_reg[30]_i_93_n_4 ),
        .I1(\random_y_reg[30]_i_76_n_7 ),
        .I2(\random_y_reg_n_0_[5] ),
        .I3(\random_y[30]_i_69_n_0 ),
        .O(\random_y[30]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \random_y[30]_i_74 
       (.I0(\random_y_reg[30]_i_93_n_5 ),
        .I1(\random_y_reg[30]_i_94_n_4 ),
        .I2(\random_y_reg_n_0_[4] ),
        .I3(\random_y[30]_i_70_n_0 ),
        .O(\random_y[30]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_77 
       (.I0(\random_y_reg_n_0_[27] ),
        .I1(\random_y_reg_n_0_[30] ),
        .O(\random_y[30]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_78 
       (.I0(\random_y_reg_n_0_[26] ),
        .I1(\random_y_reg_n_0_[29] ),
        .O(\random_y[30]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_79 
       (.I0(\random_y_reg_n_0_[25] ),
        .I1(\random_y_reg_n_0_[28] ),
        .O(\random_y[30]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_80 
       (.I0(\random_y_reg_n_0_[25] ),
        .I1(\random_y_reg[30]_i_103_n_4 ),
        .O(\random_y[30]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_81 
       (.I0(\random_y_reg_n_0_[24] ),
        .I1(\random_y_reg[30]_i_103_n_5 ),
        .O(\random_y[30]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_82 
       (.I0(\random_y_reg_n_0_[23] ),
        .I1(\random_y_reg[30]_i_103_n_6 ),
        .O(\random_y[30]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_83 
       (.I0(\random_y_reg_n_0_[22] ),
        .I1(\random_y_reg[30]_i_103_n_7 ),
        .O(\random_y[30]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_84 
       (.I0(\random_y_reg_n_0_[26] ),
        .I1(\random_y_reg[30]_i_104_n_7 ),
        .O(\random_y[30]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_85 
       (.I0(\random_y_reg_n_0_[24] ),
        .I1(\random_y_reg_n_0_[27] ),
        .O(\random_y[30]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_86 
       (.I0(\random_y_reg_n_0_[23] ),
        .I1(\random_y_reg_n_0_[26] ),
        .O(\random_y[30]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_87 
       (.I0(\random_y_reg_n_0_[22] ),
        .I1(\random_y_reg_n_0_[25] ),
        .O(\random_y[30]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_88 
       (.I0(\random_y_reg_n_0_[21] ),
        .I1(\random_y_reg_n_0_[24] ),
        .O(\random_y[30]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_89 
       (.I0(\random_y_reg_n_0_[21] ),
        .I1(\random_y_reg[30]_i_105_n_4 ),
        .O(\random_y[30]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_90 
       (.I0(\random_y_reg_n_0_[20] ),
        .I1(\random_y_reg[30]_i_105_n_5 ),
        .O(\random_y[30]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_91 
       (.I0(\random_y_reg_n_0_[19] ),
        .I1(\random_y_reg[30]_i_105_n_6 ),
        .O(\random_y[30]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_92 
       (.I0(\random_y_reg_n_0_[18] ),
        .I1(\random_y_reg[30]_i_105_n_7 ),
        .O(\random_y[30]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_95 
       (.I0(\random_y_reg_n_0_[20] ),
        .I1(\random_y_reg_n_0_[23] ),
        .O(\random_y[30]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_96 
       (.I0(\random_y_reg_n_0_[19] ),
        .I1(\random_y_reg_n_0_[22] ),
        .O(\random_y[30]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_97 
       (.I0(\random_y_reg_n_0_[18] ),
        .I1(\random_y_reg_n_0_[21] ),
        .O(\random_y[30]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[30]_i_98 
       (.I0(\random_y_reg_n_0_[17] ),
        .I1(\random_y_reg_n_0_[20] ),
        .O(\random_y[30]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_y[30]_i_99 
       (.I0(\random_y_reg_n_0_[17] ),
        .I1(\random_y_reg[30]_i_114_n_4 ),
        .O(\random_y[30]_i_99_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[3]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[3]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[3]_i_3_n_4 ),
        .O(A[3]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[3]_i_10 
       (.I0(random_y3[1]),
        .I1(random_y3[31]),
        .I2(random_y5[1]),
        .O(\random_y[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[3]_i_12 
       (.I0(\random_y_reg_n_0_[0] ),
        .I1(\random_y_reg_n_0_[3] ),
        .O(\random_y[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[3]_i_13 
       (.I0(\random_y_reg_n_0_[2] ),
        .O(\random_y[3]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[3]_i_14 
       (.I0(\random_y_reg_n_0_[1] ),
        .O(\random_y[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[3]_i_4 
       (.I0(random_y5[3]),
        .I1(random_y3[31]),
        .I2(random_y3[3]),
        .O(random_y4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[3]_i_5 
       (.I0(random_y5[2]),
        .I1(random_y3[31]),
        .I2(random_y3[2]),
        .O(random_y4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[3]_i_6 
       (.I0(random_y5[1]),
        .I1(random_y3[31]),
        .I2(random_y3[1]),
        .O(random_y4[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[3]_i_7 
       (.I0(\random_y_reg[3]_i_11_n_7 ),
        .O(random_y4[0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[3]_i_8 
       (.I0(random_y3[3]),
        .I1(random_y3[31]),
        .I2(random_y5[3]),
        .O(\random_y[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[3]_i_9 
       (.I0(random_y3[2]),
        .I1(random_y3[31]),
        .I2(random_y5[2]),
        .O(\random_y[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[4]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[7]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[7]_i_3_n_7 ),
        .O(A[4]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[5]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[7]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[7]_i_3_n_6 ),
        .O(A[5]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[6]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[7]_i_2_n_5 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[7]_i_3_n_5 ),
        .O(A[6]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[7]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[7]_i_2_n_4 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[7]_i_3_n_4 ),
        .O(A[7]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[7]_i_10 
       (.I0(random_y3[5]),
        .I1(random_y3[31]),
        .I2(random_y5[5]),
        .O(\random_y[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[7]_i_11 
       (.I0(random_y3[4]),
        .I1(random_y3[31]),
        .I2(random_y5[4]),
        .O(\random_y[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_14 
       (.I0(random_y3[4]),
        .O(\random_y[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_15 
       (.I0(random_y3[3]),
        .O(\random_y[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_16 
       (.I0(random_y3[2]),
        .O(\random_y[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_17 
       (.I0(random_y3[1]),
        .O(\random_y[7]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_19 
       (.I0(\random_y_reg[3]_i_11_n_5 ),
        .O(\random_y[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \random_y[7]_i_20 
       (.I0(\random_y_reg[3]_i_11_n_6 ),
        .O(\random_y[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[7]_i_21 
       (.I0(\random_y_reg_n_0_[4] ),
        .I1(\random_y_reg_n_0_[7] ),
        .O(\random_y[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[7]_i_22 
       (.I0(\random_y_reg_n_0_[3] ),
        .I1(\random_y_reg_n_0_[6] ),
        .O(\random_y[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[7]_i_23 
       (.I0(\random_y_reg_n_0_[2] ),
        .I1(\random_y_reg_n_0_[5] ),
        .O(\random_y[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \random_y[7]_i_24 
       (.I0(\random_y_reg_n_0_[1] ),
        .I1(\random_y_reg_n_0_[4] ),
        .O(\random_y[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[7]_i_4 
       (.I0(random_y5[7]),
        .I1(random_y3[31]),
        .I2(random_y3[7]),
        .O(random_y4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[7]_i_5 
       (.I0(random_y5[6]),
        .I1(random_y3[31]),
        .I2(random_y3[6]),
        .O(random_y4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[7]_i_6 
       (.I0(random_y5[5]),
        .I1(random_y3[31]),
        .I2(random_y3[5]),
        .O(random_y4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \random_y[7]_i_7 
       (.I0(random_y5[4]),
        .I1(random_y3[31]),
        .I2(random_y3[4]),
        .O(random_y4[4]));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[7]_i_8 
       (.I0(random_y3[7]),
        .I1(random_y3[31]),
        .I2(random_y5[7]),
        .O(\random_y[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \random_y[7]_i_9 
       (.I0(random_y3[6]),
        .I1(random_y3[31]),
        .I2(random_y5[6]),
        .O(\random_y[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[8]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[11]_i_2_n_7 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[11]_i_3_n_7 ),
        .O(A[8]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \random_y[9]_i_1 
       (.I0(random_y3[31]),
        .I1(\random_y_reg[11]_i_2_n_6 ),
        .I2(\random_y_reg[30]_i_10_n_0 ),
        .I3(\random_y_reg[11]_i_3_n_6 ),
        .O(A[9]));
  FDRE #(
    .INIT(1'b1)) 
    \random_y_reg[0] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[0]),
        .Q(\random_y_reg_n_0_[0] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[10] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[10]),
        .Q(\random_y_reg_n_0_[10] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[11] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[11]),
        .Q(\random_y_reg_n_0_[11] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[11]_i_12 
       (.CI(\random_y_reg[7]_i_12_n_0 ),
        .CO({\random_y_reg[11]_i_12_n_0 ,\random_y_reg[11]_i_12_n_1 ,\random_y_reg[11]_i_12_n_2 ,\random_y_reg[11]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[8:5]),
        .S({\random_y[11]_i_14_n_0 ,\random_y[11]_i_15_n_0 ,\random_y[11]_i_16_n_0 ,\random_y[11]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[11]_i_13 
       (.CI(\random_y_reg[7]_i_13_n_0 ),
        .CO({\random_y_reg[11]_i_13_n_0 ,\random_y_reg[11]_i_13_n_1 ,\random_y_reg[11]_i_13_n_2 ,\random_y_reg[11]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg[15]_i_18_n_5 ,\random_y_reg[15]_i_18_n_6 ,\<const0> ,\<const1> }),
        .O(random_y3[8:5]),
        .S({\random_y[11]_i_18_n_0 ,\random_y[11]_i_19_n_0 ,\random_y_reg[15]_i_18_n_7 ,\random_y[11]_i_20_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[11]_i_2 
       (.CI(\random_y_reg[7]_i_2_n_0 ),
        .CO({\random_y_reg[11]_i_2_n_0 ,\random_y_reg[11]_i_2_n_1 ,\random_y_reg[11]_i_2_n_2 ,\random_y_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[11:8]),
        .O({\random_y_reg[11]_i_2_n_4 ,\random_y_reg[11]_i_2_n_5 ,\random_y_reg[11]_i_2_n_6 ,\random_y_reg[11]_i_2_n_7 }),
        .S({\random_y[11]_i_8_n_0 ,\random_y[11]_i_9_n_0 ,\random_y[11]_i_10_n_0 ,\random_y[11]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[11]_i_3 
       (.CI(\random_y_reg[7]_i_3_n_0 ),
        .CO({\random_y_reg[11]_i_3_n_0 ,\random_y_reg[11]_i_3_n_1 ,\random_y_reg[11]_i_3_n_2 ,\random_y_reg[11]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[11]_i_3_n_4 ,\random_y_reg[11]_i_3_n_5 ,\random_y_reg[11]_i_3_n_6 ,\random_y_reg[11]_i_3_n_7 }),
        .S({\random_y_reg[11]_i_2_n_4 ,\random_y_reg[11]_i_2_n_5 ,\random_y_reg[11]_i_2_n_6 ,\random_y_reg[11]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[12] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[12]),
        .Q(\random_y_reg_n_0_[12] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[13] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[13]),
        .Q(\random_y_reg_n_0_[13] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[14] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[14]),
        .Q(\random_y_reg_n_0_[14] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[15] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[15]),
        .Q(\random_y_reg_n_0_[15] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[15]_i_12 
       (.CI(\random_y_reg[11]_i_12_n_0 ),
        .CO({\random_y_reg[15]_i_12_n_0 ,\random_y_reg[15]_i_12_n_1 ,\random_y_reg[15]_i_12_n_2 ,\random_y_reg[15]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[12:9]),
        .S({\random_y[15]_i_14_n_0 ,\random_y[15]_i_15_n_0 ,\random_y[15]_i_16_n_0 ,\random_y[15]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[15]_i_13 
       (.CI(\random_y_reg[11]_i_13_n_0 ),
        .CO({\random_y_reg[15]_i_13_n_0 ,\random_y_reg[15]_i_13_n_1 ,\random_y_reg[15]_i_13_n_2 ,\random_y_reg[15]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y3[12:9]),
        .S({\random_y_reg[19]_i_19_n_5 ,\random_y_reg[19]_i_19_n_6 ,\random_y_reg[19]_i_19_n_7 ,\random_y_reg[15]_i_18_n_4 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[15]_i_18 
       (.CI(\<const0> ),
        .CO({\random_y_reg[15]_i_18_n_0 ,\random_y_reg[15]_i_18_n_1 ,\random_y_reg[15]_i_18_n_2 ,\random_y_reg[15]_i_18_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[15]_i_19_n_0 ,\random_y[15]_i_20_n_0 ,\random_y[15]_i_21_n_0 ,\random_y[15]_i_22_n_0 }),
        .O({\random_y_reg[15]_i_18_n_4 ,\random_y_reg[15]_i_18_n_5 ,\random_y_reg[15]_i_18_n_6 ,\random_y_reg[15]_i_18_n_7 }),
        .S({\random_y[15]_i_23_n_0 ,\random_y[15]_i_24_n_0 ,\random_y[15]_i_25_n_0 ,\random_y[15]_i_26_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[15]_i_2 
       (.CI(\random_y_reg[11]_i_2_n_0 ),
        .CO({\random_y_reg[15]_i_2_n_0 ,\random_y_reg[15]_i_2_n_1 ,\random_y_reg[15]_i_2_n_2 ,\random_y_reg[15]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[15:12]),
        .O({\random_y_reg[15]_i_2_n_4 ,\random_y_reg[15]_i_2_n_5 ,\random_y_reg[15]_i_2_n_6 ,\random_y_reg[15]_i_2_n_7 }),
        .S({\random_y[15]_i_8_n_0 ,\random_y[15]_i_9_n_0 ,\random_y[15]_i_10_n_0 ,\random_y[15]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[15]_i_3 
       (.CI(\random_y_reg[11]_i_3_n_0 ),
        .CO({\random_y_reg[15]_i_3_n_0 ,\random_y_reg[15]_i_3_n_1 ,\random_y_reg[15]_i_3_n_2 ,\random_y_reg[15]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[15]_i_3_n_4 ,\random_y_reg[15]_i_3_n_5 ,\random_y_reg[15]_i_3_n_6 ,\random_y_reg[15]_i_3_n_7 }),
        .S({\random_y_reg[15]_i_2_n_4 ,\random_y_reg[15]_i_2_n_5 ,\random_y_reg[15]_i_2_n_6 ,\random_y_reg[15]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[16] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[16]),
        .Q(\random_y_reg_n_0_[16] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[17] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[17]),
        .Q(\random_y_reg_n_0_[17] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[18] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[18]),
        .Q(\random_y_reg_n_0_[18] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[19] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[19]),
        .Q(\random_y_reg_n_0_[19] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_12 
       (.CI(\random_y_reg[15]_i_12_n_0 ),
        .CO({\random_y_reg[19]_i_12_n_0 ,\random_y_reg[19]_i_12_n_1 ,\random_y_reg[19]_i_12_n_2 ,\random_y_reg[19]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[16:13]),
        .S({\random_y[19]_i_14_n_0 ,\random_y[19]_i_15_n_0 ,\random_y[19]_i_16_n_0 ,\random_y[19]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_13 
       (.CI(\random_y_reg[15]_i_13_n_0 ),
        .CO({\random_y_reg[19]_i_13_n_0 ,\random_y_reg[19]_i_13_n_1 ,\random_y_reg[19]_i_13_n_2 ,\random_y_reg[19]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\random_y_reg[23]_i_18_n_7 ,\<const0> }),
        .O(random_y3[16:13]),
        .S({\random_y_reg[23]_i_18_n_5 ,\random_y_reg[23]_i_18_n_6 ,\random_y[19]_i_18_n_0 ,\random_y_reg[19]_i_19_n_4 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_19 
       (.CI(\random_y_reg[15]_i_18_n_0 ),
        .CO({\random_y_reg[19]_i_19_n_0 ,\random_y_reg[19]_i_19_n_1 ,\random_y_reg[19]_i_19_n_2 ,\random_y_reg[19]_i_19_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[19]_i_20_n_0 ,\random_y[19]_i_21_n_0 ,\random_y[19]_i_22_n_0 ,\random_y[19]_i_23_n_0 }),
        .O({\random_y_reg[19]_i_19_n_4 ,\random_y_reg[19]_i_19_n_5 ,\random_y_reg[19]_i_19_n_6 ,\random_y_reg[19]_i_19_n_7 }),
        .S({\random_y[19]_i_24_n_0 ,\random_y[19]_i_25_n_0 ,\random_y[19]_i_26_n_0 ,\random_y[19]_i_27_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_2 
       (.CI(\random_y_reg[15]_i_2_n_0 ),
        .CO({\random_y_reg[19]_i_2_n_0 ,\random_y_reg[19]_i_2_n_1 ,\random_y_reg[19]_i_2_n_2 ,\random_y_reg[19]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[19:16]),
        .O({\random_y_reg[19]_i_2_n_4 ,\random_y_reg[19]_i_2_n_5 ,\random_y_reg[19]_i_2_n_6 ,\random_y_reg[19]_i_2_n_7 }),
        .S({\random_y[19]_i_8_n_0 ,\random_y[19]_i_9_n_0 ,\random_y[19]_i_10_n_0 ,\random_y[19]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_28 
       (.CI(\random_y_reg[7]_i_18_n_0 ),
        .CO({\random_y_reg[19]_i_28_n_0 ,\random_y_reg[19]_i_28_n_1 ,\random_y_reg[19]_i_28_n_2 ,\random_y_reg[19]_i_28_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[8] ,\random_y_reg_n_0_[7] ,\random_y_reg_n_0_[6] ,\random_y_reg_n_0_[5] }),
        .O({\random_y_reg[19]_i_28_n_4 ,\random_y_reg[19]_i_28_n_5 ,\random_y_reg[19]_i_28_n_6 ,\random_y_reg[19]_i_28_n_7 }),
        .S({\random_y[19]_i_30_n_0 ,\random_y[19]_i_31_n_0 ,\random_y[19]_i_32_n_0 ,\random_y[19]_i_33_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_29 
       (.CI(\<const0> ),
        .CO({\random_y_reg[19]_i_29_n_0 ,\random_y_reg[19]_i_29_n_1 ,\random_y_reg[19]_i_29_n_2 ,\random_y_reg[19]_i_29_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[5] ,\random_y_reg_n_0_[4] ,\random_y_reg_n_0_[3] ,\random_y_reg_n_0_[2] }),
        .O({\random_y_reg[19]_i_29_n_4 ,\random_y_reg[19]_i_29_n_5 ,\random_y_reg[19]_i_29_n_6 ,\random_y_reg[19]_i_29_n_7 }),
        .S({\random_y[19]_i_34_n_0 ,\random_y[19]_i_35_n_0 ,\random_y[19]_i_36_n_0 ,\random_y[19]_i_37_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_3 
       (.CI(\random_y_reg[15]_i_3_n_0 ),
        .CO({\random_y_reg[19]_i_3_n_0 ,\random_y_reg[19]_i_3_n_1 ,\random_y_reg[19]_i_3_n_2 ,\random_y_reg[19]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[19]_i_3_n_4 ,\random_y_reg[19]_i_3_n_5 ,\random_y_reg[19]_i_3_n_6 ,\random_y_reg[19]_i_3_n_7 }),
        .S({\random_y_reg[19]_i_2_n_4 ,\random_y_reg[19]_i_2_n_5 ,\random_y_reg[19]_i_2_n_6 ,\random_y_reg[19]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[19]_i_38 
       (.CI(\<const0> ),
        .CO({\random_y_reg[19]_i_38_n_0 ,\random_y_reg[19]_i_38_n_1 ,\random_y_reg[19]_i_38_n_2 ,\random_y_reg[19]_i_38_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[1] ,\random_y_reg_n_0_[0] ,\<const0> ,\<const1> }),
        .O({\random_y_reg[19]_i_38_n_4 ,\random_y_reg[19]_i_38_n_5 ,\random_y_reg[19]_i_38_n_6 ,\NLW_random_y_reg[19]_i_38_O_UNCONNECTED [0]}),
        .S({\random_y[19]_i_39_n_0 ,\random_y[19]_i_40_n_0 ,\random_y[19]_i_41_n_0 ,\random_y_reg_n_0_[0] }));
  FDRE #(
    .INIT(1'b1)) 
    \random_y_reg[1] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[1]),
        .Q(\random_y_reg_n_0_[1] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[20] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[20]),
        .Q(\random_y_reg_n_0_[20] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[21] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[21]),
        .Q(\random_y_reg_n_0_[21] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[22] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[22]),
        .Q(\random_y_reg_n_0_[22] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[23] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[23]),
        .Q(\random_y_reg_n_0_[23] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_12 
       (.CI(\random_y_reg[19]_i_12_n_0 ),
        .CO({\random_y_reg[23]_i_12_n_0 ,\random_y_reg[23]_i_12_n_1 ,\random_y_reg[23]_i_12_n_2 ,\random_y_reg[23]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[20:17]),
        .S({\random_y[23]_i_14_n_0 ,\random_y[23]_i_15_n_0 ,\random_y[23]_i_16_n_0 ,\random_y[23]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_13 
       (.CI(\random_y_reg[19]_i_13_n_0 ),
        .CO({\random_y_reg[23]_i_13_n_0 ,\random_y_reg[23]_i_13_n_1 ,\random_y_reg[23]_i_13_n_2 ,\random_y_reg[23]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y3[20:17]),
        .S({\random_y_reg[30]_i_47_n_5 ,\random_y_reg[30]_i_47_n_6 ,\random_y_reg[30]_i_47_n_7 ,\random_y_reg[23]_i_18_n_4 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_18 
       (.CI(\random_y_reg[19]_i_19_n_0 ),
        .CO({\random_y_reg[23]_i_18_n_0 ,\random_y_reg[23]_i_18_n_1 ,\random_y_reg[23]_i_18_n_2 ,\random_y_reg[23]_i_18_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[23]_i_19_n_0 ,\random_y[23]_i_20_n_0 ,\random_y[23]_i_21_n_0 ,\random_y[23]_i_22_n_0 }),
        .O({\random_y_reg[23]_i_18_n_4 ,\random_y_reg[23]_i_18_n_5 ,\random_y_reg[23]_i_18_n_6 ,\random_y_reg[23]_i_18_n_7 }),
        .S({\random_y[23]_i_23_n_0 ,\random_y[23]_i_24_n_0 ,\random_y[23]_i_25_n_0 ,\random_y[23]_i_26_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_2 
       (.CI(\random_y_reg[19]_i_2_n_0 ),
        .CO({\random_y_reg[23]_i_2_n_0 ,\random_y_reg[23]_i_2_n_1 ,\random_y_reg[23]_i_2_n_2 ,\random_y_reg[23]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[23:20]),
        .O({\random_y_reg[23]_i_2_n_4 ,\random_y_reg[23]_i_2_n_5 ,\random_y_reg[23]_i_2_n_6 ,\random_y_reg[23]_i_2_n_7 }),
        .S({\random_y[23]_i_8_n_0 ,\random_y[23]_i_9_n_0 ,\random_y[23]_i_10_n_0 ,\random_y[23]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_27 
       (.CI(\random_y_reg[19]_i_28_n_0 ),
        .CO({\random_y_reg[23]_i_27_n_0 ,\random_y_reg[23]_i_27_n_1 ,\random_y_reg[23]_i_27_n_2 ,\random_y_reg[23]_i_27_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[12] ,\random_y_reg_n_0_[11] ,\random_y_reg_n_0_[10] ,\random_y_reg_n_0_[9] }),
        .O({\random_y_reg[23]_i_27_n_4 ,\random_y_reg[23]_i_27_n_5 ,\random_y_reg[23]_i_27_n_6 ,\random_y_reg[23]_i_27_n_7 }),
        .S({\random_y[23]_i_29_n_0 ,\random_y[23]_i_30_n_0 ,\random_y[23]_i_31_n_0 ,\random_y[23]_i_32_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_28 
       (.CI(\random_y_reg[19]_i_29_n_0 ),
        .CO({\random_y_reg[23]_i_28_n_0 ,\random_y_reg[23]_i_28_n_1 ,\random_y_reg[23]_i_28_n_2 ,\random_y_reg[23]_i_28_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[9] ,\random_y_reg_n_0_[8] ,\random_y_reg_n_0_[7] ,\random_y_reg_n_0_[6] }),
        .O({\random_y_reg[23]_i_28_n_4 ,\random_y_reg[23]_i_28_n_5 ,\random_y_reg[23]_i_28_n_6 ,\random_y_reg[23]_i_28_n_7 }),
        .S({\random_y[23]_i_33_n_0 ,\random_y[23]_i_34_n_0 ,\random_y[23]_i_35_n_0 ,\random_y[23]_i_36_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_3 
       (.CI(\random_y_reg[19]_i_3_n_0 ),
        .CO({\random_y_reg[23]_i_3_n_0 ,\random_y_reg[23]_i_3_n_1 ,\random_y_reg[23]_i_3_n_2 ,\random_y_reg[23]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[23]_i_3_n_4 ,\random_y_reg[23]_i_3_n_5 ,\random_y_reg[23]_i_3_n_6 ,\random_y_reg[23]_i_3_n_7 }),
        .S({\random_y_reg[23]_i_2_n_4 ,\random_y_reg[23]_i_2_n_5 ,\random_y_reg[23]_i_2_n_6 ,\random_y_reg[23]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[23]_i_37 
       (.CI(\random_y_reg[19]_i_38_n_0 ),
        .CO({\random_y_reg[23]_i_37_n_0 ,\random_y_reg[23]_i_37_n_1 ,\random_y_reg[23]_i_37_n_2 ,\random_y_reg[23]_i_37_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[5] ,\random_y_reg_n_0_[4] ,\random_y_reg_n_0_[3] ,\random_y_reg_n_0_[2] }),
        .O({\random_y_reg[23]_i_37_n_4 ,\random_y_reg[23]_i_37_n_5 ,\random_y_reg[23]_i_37_n_6 ,\random_y_reg[23]_i_37_n_7 }),
        .S({\random_y[23]_i_38_n_0 ,\random_y[23]_i_39_n_0 ,\random_y[23]_i_40_n_0 ,\random_y[23]_i_41_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[24] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[24]),
        .Q(\random_y_reg_n_0_[24] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[25] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[25]),
        .Q(\random_y_reg_n_0_[25] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[26] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[26]),
        .Q(\random_y_reg_n_0_[26] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[27] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[27]),
        .Q(\random_y_reg_n_0_[27] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[27]_i_12 
       (.CI(\random_y_reg[23]_i_12_n_0 ),
        .CO({\random_y_reg[27]_i_12_n_0 ,\random_y_reg[27]_i_12_n_1 ,\random_y_reg[27]_i_12_n_2 ,\random_y_reg[27]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[24:21]),
        .S({\random_y[27]_i_13_n_0 ,\random_y[27]_i_14_n_0 ,\random_y[27]_i_15_n_0 ,\random_y[27]_i_16_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[27]_i_2 
       (.CI(\random_y_reg[23]_i_2_n_0 ),
        .CO({\random_y_reg[27]_i_2_n_0 ,\random_y_reg[27]_i_2_n_1 ,\random_y_reg[27]_i_2_n_2 ,\random_y_reg[27]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[27:24]),
        .O({\random_y_reg[27]_i_2_n_4 ,\random_y_reg[27]_i_2_n_5 ,\random_y_reg[27]_i_2_n_6 ,\random_y_reg[27]_i_2_n_7 }),
        .S({\random_y[27]_i_8_n_0 ,\random_y[27]_i_9_n_0 ,\random_y[27]_i_10_n_0 ,\random_y[27]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[27]_i_3 
       (.CI(\random_y_reg[23]_i_3_n_0 ),
        .CO({\random_y_reg[27]_i_3_n_0 ,\random_y_reg[27]_i_3_n_1 ,\random_y_reg[27]_i_3_n_2 ,\random_y_reg[27]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[27]_i_3_n_4 ,\random_y_reg[27]_i_3_n_5 ,\random_y_reg[27]_i_3_n_6 ,\random_y_reg[27]_i_3_n_7 }),
        .S({\random_y_reg[27]_i_2_n_4 ,\random_y_reg[27]_i_2_n_5 ,\random_y_reg[27]_i_2_n_6 ,\random_y_reg[27]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[28] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[28]),
        .Q(\random_y_reg_n_0_[28] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[29] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[29]),
        .Q(\random_y_reg_n_0_[29] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[2] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[2]),
        .Q(\random_y_reg_n_0_[2] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[30] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[30]),
        .Q(\random_y_reg_n_0_[30] ),
        .R(random_y0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_10 
       (.CI(\random_y_reg[27]_i_3_n_0 ),
        .CO({\random_y_reg[30]_i_10_n_0 ,\random_y_reg[30]_i_10_n_1 ,\random_y_reg[30]_i_10_n_2 ,\random_y_reg[30]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[30]_i_10_n_5 ,\random_y_reg[30]_i_10_n_6 ,\random_y_reg[30]_i_10_n_7 }),
        .S({\random_y_reg[30]_i_9_n_0 ,\random_y_reg[30]_i_9_n_5 ,\random_y_reg[30]_i_9_n_6 ,\random_y_reg[30]_i_9_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_103 
       (.CI(\random_y_reg[30]_i_105_n_0 ),
        .CO({\random_y_reg[30]_i_103_n_0 ,\random_y_reg[30]_i_103_n_1 ,\random_y_reg[30]_i_103_n_2 ,\random_y_reg[30]_i_103_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[21] ,\random_y_reg_n_0_[20] ,\random_y_reg_n_0_[19] ,\random_y_reg_n_0_[18] }),
        .O({\random_y_reg[30]_i_103_n_4 ,\random_y_reg[30]_i_103_n_5 ,\random_y_reg[30]_i_103_n_6 ,\random_y_reg[30]_i_103_n_7 }),
        .S({\random_y[30]_i_115_n_0 ,\random_y[30]_i_116_n_0 ,\random_y[30]_i_117_n_0 ,\random_y[30]_i_118_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_104 
       (.CI(\random_y_reg[30]_i_103_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\random_y_reg[30]_i_104_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\random_y[30]_i_119_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_105 
       (.CI(\random_y_reg[30]_i_114_n_0 ),
        .CO({\random_y_reg[30]_i_105_n_0 ,\random_y_reg[30]_i_105_n_1 ,\random_y_reg[30]_i_105_n_2 ,\random_y_reg[30]_i_105_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[17] ,\random_y_reg_n_0_[16] ,\random_y_reg_n_0_[15] ,\random_y_reg_n_0_[14] }),
        .O({\random_y_reg[30]_i_105_n_4 ,\random_y_reg[30]_i_105_n_5 ,\random_y_reg[30]_i_105_n_6 ,\random_y_reg[30]_i_105_n_7 }),
        .S({\random_y[30]_i_120_n_0 ,\random_y[30]_i_121_n_0 ,\random_y[30]_i_122_n_0 ,\random_y[30]_i_123_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_114 
       (.CI(\random_y_reg[30]_i_124_n_0 ),
        .CO({\random_y_reg[30]_i_114_n_0 ,\random_y_reg[30]_i_114_n_1 ,\random_y_reg[30]_i_114_n_2 ,\random_y_reg[30]_i_114_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[13] ,\random_y_reg_n_0_[12] ,\random_y_reg_n_0_[11] ,\random_y_reg_n_0_[10] }),
        .O({\random_y_reg[30]_i_114_n_4 ,\random_y_reg[30]_i_114_n_5 ,\random_y_reg[30]_i_114_n_6 ,\random_y_reg[30]_i_114_n_7 }),
        .S({\random_y[30]_i_125_n_0 ,\random_y[30]_i_126_n_0 ,\random_y[30]_i_127_n_0 ,\random_y[30]_i_128_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_124 
       (.CI(\random_y_reg[23]_i_37_n_0 ),
        .CO({\random_y_reg[30]_i_124_n_0 ,\random_y_reg[30]_i_124_n_1 ,\random_y_reg[30]_i_124_n_2 ,\random_y_reg[30]_i_124_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[9] ,\random_y_reg_n_0_[8] ,\random_y_reg_n_0_[7] ,\random_y_reg_n_0_[6] }),
        .O({\random_y_reg[30]_i_124_n_4 ,\random_y_reg[30]_i_124_n_5 ,\random_y_reg[30]_i_124_n_6 ,\random_y_reg[30]_i_124_n_7 }),
        .S({\random_y[30]_i_129_n_0 ,\random_y[30]_i_130_n_0 ,\random_y[30]_i_131_n_0 ,\random_y[30]_i_132_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_20 
       (.CI(\random_y_reg[30]_i_32_n_0 ),
        .CO({\random_y_reg[30]_i_20_n_0 ,\random_y_reg[30]_i_20_n_1 ,\random_y_reg[30]_i_20_n_2 ,\random_y_reg[30]_i_20_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y3[28:25]),
        .S({\random_y_reg[30]_i_22_n_5 ,\random_y_reg[30]_i_22_n_6 ,\random_y_reg[30]_i_22_n_7 ,\random_y_reg[30]_i_33_n_4 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_21 
       (.CI(\random_y_reg[30]_i_22_n_0 ),
        .CO(\random_y_reg[30]_i_21_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\random_y[30]_i_34_n_0 }),
        .O({\random_y_reg[30]_i_21_n_6 ,\random_y_reg[30]_i_21_n_7 }),
        .S({\<const0> ,\<const0> ,\random_y[30]_i_35_n_0 ,\random_y[30]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_22 
       (.CI(\random_y_reg[30]_i_33_n_0 ),
        .CO({\random_y_reg[30]_i_22_n_0 ,\random_y_reg[30]_i_22_n_1 ,\random_y_reg[30]_i_22_n_2 ,\random_y_reg[30]_i_22_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[30]_i_37_n_0 ,\random_y[30]_i_38_n_0 ,\random_y[30]_i_39_n_0 ,\random_y[30]_i_40_n_0 }),
        .O({\random_y_reg[30]_i_22_n_4 ,\random_y_reg[30]_i_22_n_5 ,\random_y_reg[30]_i_22_n_6 ,\random_y_reg[30]_i_22_n_7 }),
        .S({\random_y[30]_i_41_n_0 ,\random_y[30]_i_42_n_0 ,\random_y[30]_i_43_n_0 ,\random_y[30]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_32 
       (.CI(\random_y_reg[23]_i_13_n_0 ),
        .CO({\random_y_reg[30]_i_32_n_0 ,\random_y_reg[30]_i_32_n_1 ,\random_y_reg[30]_i_32_n_2 ,\random_y_reg[30]_i_32_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y3[24:21]),
        .S({\random_y_reg[30]_i_33_n_5 ,\random_y_reg[30]_i_33_n_6 ,\random_y_reg[30]_i_33_n_7 ,\random_y_reg[30]_i_47_n_4 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_33 
       (.CI(\random_y_reg[30]_i_47_n_0 ),
        .CO({\random_y_reg[30]_i_33_n_0 ,\random_y_reg[30]_i_33_n_1 ,\random_y_reg[30]_i_33_n_2 ,\random_y_reg[30]_i_33_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[30]_i_48_n_0 ,\random_y[30]_i_49_n_0 ,\random_y[30]_i_50_n_0 ,\random_y[30]_i_51_n_0 }),
        .O({\random_y_reg[30]_i_33_n_4 ,\random_y_reg[30]_i_33_n_5 ,\random_y_reg[30]_i_33_n_6 ,\random_y_reg[30]_i_33_n_7 }),
        .S({\random_y[30]_i_52_n_0 ,\random_y[30]_i_53_n_0 ,\random_y[30]_i_54_n_0 ,\random_y[30]_i_55_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_45 
       (.CI(\random_y_reg[30]_i_46_n_0 ),
        .CO(\random_y_reg[30]_i_45_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[30:29]),
        .S({\<const0> ,\<const0> ,\random_y[30]_i_61_n_0 ,\random_y[30]_i_62_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_46 
       (.CI(\random_y_reg[27]_i_12_n_0 ),
        .CO({\random_y_reg[30]_i_46_n_0 ,\random_y_reg[30]_i_46_n_1 ,\random_y_reg[30]_i_46_n_2 ,\random_y_reg[30]_i_46_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[28:25]),
        .S({\random_y[30]_i_63_n_0 ,\random_y[30]_i_64_n_0 ,\random_y[30]_i_65_n_0 ,\random_y[30]_i_66_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_47 
       (.CI(\random_y_reg[23]_i_18_n_0 ),
        .CO({\random_y_reg[30]_i_47_n_0 ,\random_y_reg[30]_i_47_n_1 ,\random_y_reg[30]_i_47_n_2 ,\random_y_reg[30]_i_47_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y[30]_i_67_n_0 ,\random_y[30]_i_68_n_0 ,\random_y[30]_i_69_n_0 ,\random_y[30]_i_70_n_0 }),
        .O({\random_y_reg[30]_i_47_n_4 ,\random_y_reg[30]_i_47_n_5 ,\random_y_reg[30]_i_47_n_6 ,\random_y_reg[30]_i_47_n_7 }),
        .S({\random_y[30]_i_71_n_0 ,\random_y[30]_i_72_n_0 ,\random_y[30]_i_73_n_0 ,\random_y[30]_i_74_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_56 
       (.CI(\random_y_reg[30]_i_59_n_0 ),
        .CO({\random_y_reg[30]_i_56_n_1 ,\random_y_reg[30]_i_56_n_2 ,\random_y_reg[30]_i_56_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\random_y_reg_n_0_[27] ,\random_y_reg_n_0_[26] ,\random_y_reg_n_0_[25] }),
        .O({\random_y_reg[30]_i_56_n_4 ,\random_y_reg[30]_i_56_n_5 ,\random_y_reg[30]_i_56_n_6 ,\random_y_reg[30]_i_56_n_7 }),
        .S({\random_y_reg_n_0_[28] ,\random_y[30]_i_77_n_0 ,\random_y[30]_i_78_n_0 ,\random_y[30]_i_79_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_57 
       (.CI(\random_y_reg[30]_i_60_n_0 ),
        .CO({\random_y_reg[30]_i_57_n_0 ,\random_y_reg[30]_i_57_n_1 ,\random_y_reg[30]_i_57_n_2 ,\random_y_reg[30]_i_57_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[25] ,\random_y_reg_n_0_[24] ,\random_y_reg_n_0_[23] ,\random_y_reg_n_0_[22] }),
        .O({\random_y_reg[30]_i_57_n_4 ,\random_y_reg[30]_i_57_n_5 ,\random_y_reg[30]_i_57_n_6 ,\random_y_reg[30]_i_57_n_7 }),
        .S({\random_y[30]_i_80_n_0 ,\random_y[30]_i_81_n_0 ,\random_y[30]_i_82_n_0 ,\random_y[30]_i_83_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_58 
       (.CI(\random_y_reg[30]_i_57_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\random_y_reg[30]_i_58_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\random_y[30]_i_84_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_59 
       (.CI(\random_y_reg[30]_i_75_n_0 ),
        .CO({\random_y_reg[30]_i_59_n_0 ,\random_y_reg[30]_i_59_n_1 ,\random_y_reg[30]_i_59_n_2 ,\random_y_reg[30]_i_59_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[24] ,\random_y_reg_n_0_[23] ,\random_y_reg_n_0_[22] ,\random_y_reg_n_0_[21] }),
        .O({\random_y_reg[30]_i_59_n_4 ,\random_y_reg[30]_i_59_n_5 ,\random_y_reg[30]_i_59_n_6 ,\random_y_reg[30]_i_59_n_7 }),
        .S({\random_y[30]_i_85_n_0 ,\random_y[30]_i_86_n_0 ,\random_y[30]_i_87_n_0 ,\random_y[30]_i_88_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_60 
       (.CI(\random_y_reg[30]_i_76_n_0 ),
        .CO({\random_y_reg[30]_i_60_n_0 ,\random_y_reg[30]_i_60_n_1 ,\random_y_reg[30]_i_60_n_2 ,\random_y_reg[30]_i_60_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[21] ,\random_y_reg_n_0_[20] ,\random_y_reg_n_0_[19] ,\random_y_reg_n_0_[18] }),
        .O({\random_y_reg[30]_i_60_n_4 ,\random_y_reg[30]_i_60_n_5 ,\random_y_reg[30]_i_60_n_6 ,\random_y_reg[30]_i_60_n_7 }),
        .S({\random_y[30]_i_89_n_0 ,\random_y[30]_i_90_n_0 ,\random_y[30]_i_91_n_0 ,\random_y[30]_i_92_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_75 
       (.CI(\random_y_reg[30]_i_93_n_0 ),
        .CO({\random_y_reg[30]_i_75_n_0 ,\random_y_reg[30]_i_75_n_1 ,\random_y_reg[30]_i_75_n_2 ,\random_y_reg[30]_i_75_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[20] ,\random_y_reg_n_0_[19] ,\random_y_reg_n_0_[18] ,\random_y_reg_n_0_[17] }),
        .O({\random_y_reg[30]_i_75_n_4 ,\random_y_reg[30]_i_75_n_5 ,\random_y_reg[30]_i_75_n_6 ,\random_y_reg[30]_i_75_n_7 }),
        .S({\random_y[30]_i_95_n_0 ,\random_y[30]_i_96_n_0 ,\random_y[30]_i_97_n_0 ,\random_y[30]_i_98_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_76 
       (.CI(\random_y_reg[30]_i_94_n_0 ),
        .CO({\random_y_reg[30]_i_76_n_0 ,\random_y_reg[30]_i_76_n_1 ,\random_y_reg[30]_i_76_n_2 ,\random_y_reg[30]_i_76_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[17] ,\random_y_reg_n_0_[16] ,\random_y_reg_n_0_[15] ,\random_y_reg_n_0_[14] }),
        .O({\random_y_reg[30]_i_76_n_4 ,\random_y_reg[30]_i_76_n_5 ,\random_y_reg[30]_i_76_n_6 ,\random_y_reg[30]_i_76_n_7 }),
        .S({\random_y[30]_i_99_n_0 ,\random_y[30]_i_100_n_0 ,\random_y[30]_i_101_n_0 ,\random_y[30]_i_102_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_8 
       (.CI(\random_y_reg[30]_i_20_n_0 ),
        .CO({\random_y_reg[30]_i_8_n_2 ,\random_y_reg[30]_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y3[31:29]),
        .S({\<const0> ,\random_y_reg[30]_i_21_n_6 ,\random_y_reg[30]_i_21_n_7 ,\random_y_reg[30]_i_22_n_4 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_9 
       (.CI(\random_y_reg[27]_i_2_n_0 ),
        .CO({\random_y_reg[30]_i_9_n_0 ,\NLW_random_y_reg[30]_i_9_CO_UNCONNECTED [2],\random_y_reg[30]_i_9_n_2 ,\random_y_reg[30]_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,random_y4[30:28]}),
        .O({\random_y_reg[30]_i_9_n_5 ,\random_y_reg[30]_i_9_n_6 ,\random_y_reg[30]_i_9_n_7 }),
        .S({\<const1> ,\random_y[30]_i_26_n_0 ,\random_y[30]_i_27_n_0 ,\random_y[30]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_93 
       (.CI(\random_y_reg[23]_i_27_n_0 ),
        .CO({\random_y_reg[30]_i_93_n_0 ,\random_y_reg[30]_i_93_n_1 ,\random_y_reg[30]_i_93_n_2 ,\random_y_reg[30]_i_93_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[16] ,\random_y_reg_n_0_[15] ,\random_y_reg_n_0_[14] ,\random_y_reg_n_0_[13] }),
        .O({\random_y_reg[30]_i_93_n_4 ,\random_y_reg[30]_i_93_n_5 ,\random_y_reg[30]_i_93_n_6 ,\random_y_reg[30]_i_93_n_7 }),
        .S({\random_y[30]_i_106_n_0 ,\random_y[30]_i_107_n_0 ,\random_y[30]_i_108_n_0 ,\random_y[30]_i_109_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[30]_i_94 
       (.CI(\random_y_reg[23]_i_28_n_0 ),
        .CO({\random_y_reg[30]_i_94_n_0 ,\random_y_reg[30]_i_94_n_1 ,\random_y_reg[30]_i_94_n_2 ,\random_y_reg[30]_i_94_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[13] ,\random_y_reg_n_0_[12] ,\random_y_reg_n_0_[11] ,\random_y_reg_n_0_[10] }),
        .O({\random_y_reg[30]_i_94_n_4 ,\random_y_reg[30]_i_94_n_5 ,\random_y_reg[30]_i_94_n_6 ,\random_y_reg[30]_i_94_n_7 }),
        .S({\random_y[30]_i_110_n_0 ,\random_y[30]_i_111_n_0 ,\random_y[30]_i_112_n_0 ,\random_y[30]_i_113_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[3] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[3]),
        .Q(\random_y_reg_n_0_[3] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[3]_i_11 
       (.CI(\<const0> ),
        .CO({\random_y_reg[3]_i_11_n_0 ,\random_y_reg[3]_i_11_n_1 ,\random_y_reg[3]_i_11_n_2 ,\random_y_reg[3]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[0] ,\<const0> ,\<const0> ,\<const1> }),
        .O({\random_y_reg[3]_i_11_n_4 ,\random_y_reg[3]_i_11_n_5 ,\random_y_reg[3]_i_11_n_6 ,\random_y_reg[3]_i_11_n_7 }),
        .S({\random_y[3]_i_12_n_0 ,\random_y[3]_i_13_n_0 ,\random_y[3]_i_14_n_0 ,\random_y_reg_n_0_[0] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\random_y_reg[3]_i_2_n_0 ,\random_y_reg[3]_i_2_n_1 ,\random_y_reg[3]_i_2_n_2 ,\random_y_reg[3]_i_2_n_3 }),
        .CYINIT(\<const1> ),
        .DI(random_y4[3:0]),
        .O({\random_y_reg[3]_i_2_n_4 ,\random_y_reg[3]_i_2_n_5 ,\random_y_reg[3]_i_2_n_6 ,\random_y_reg[3]_i_2_n_7 }),
        .S({\random_y[3]_i_8_n_0 ,\random_y[3]_i_9_n_0 ,\random_y[3]_i_10_n_0 ,\random_y_reg[3]_i_11_n_7 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\random_y_reg[3]_i_3_n_0 ,\random_y_reg[3]_i_3_n_1 ,\random_y_reg[3]_i_3_n_2 ,\random_y_reg[3]_i_3_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[3]_i_3_n_4 ,\random_y_reg[3]_i_3_n_5 ,\random_y_reg[3]_i_3_n_6 ,\random_y_reg[3]_i_3_n_7 }),
        .S({\random_y_reg[3]_i_2_n_4 ,\random_y_reg[3]_i_2_n_5 ,\random_y_reg[3]_i_2_n_6 ,\random_y_reg[3]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[4] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[4]),
        .Q(\random_y_reg_n_0_[4] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[5] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[5]),
        .Q(\random_y_reg_n_0_[5] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[6] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[6]),
        .Q(\random_y_reg_n_0_[6] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[7] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[7]),
        .Q(\random_y_reg_n_0_[7] ),
        .R(random_y0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[7]_i_12 
       (.CI(\<const0> ),
        .CO({\random_y_reg[7]_i_12_n_0 ,\random_y_reg[7]_i_12_n_1 ,\random_y_reg[7]_i_12_n_2 ,\random_y_reg[7]_i_12_n_3 }),
        .CYINIT(\random_y_reg[3]_i_11_n_7 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(random_y5[4:1]),
        .S({\random_y[7]_i_14_n_0 ,\random_y[7]_i_15_n_0 ,\random_y[7]_i_16_n_0 ,\random_y[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[7]_i_13 
       (.CI(\<const0> ),
        .CO({\random_y_reg[7]_i_13_n_0 ,\random_y_reg[7]_i_13_n_1 ,\random_y_reg[7]_i_13_n_2 ,\random_y_reg[7]_i_13_n_3 }),
        .CYINIT(\random_y_reg[3]_i_11_n_7 ),
        .DI({\<const0> ,\<const0> ,\random_y_reg[3]_i_11_n_5 ,\random_y_reg[3]_i_11_n_6 }),
        .O(random_y3[4:1]),
        .S({\random_y_reg[7]_i_18_n_7 ,\random_y_reg[3]_i_11_n_4 ,\random_y[7]_i_19_n_0 ,\random_y[7]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[7]_i_18 
       (.CI(\random_y_reg[3]_i_11_n_0 ),
        .CO({\random_y_reg[7]_i_18_n_0 ,\random_y_reg[7]_i_18_n_1 ,\random_y_reg[7]_i_18_n_2 ,\random_y_reg[7]_i_18_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\random_y_reg_n_0_[4] ,\random_y_reg_n_0_[3] ,\random_y_reg_n_0_[2] ,\random_y_reg_n_0_[1] }),
        .O({\random_y_reg[7]_i_18_n_4 ,\random_y_reg[7]_i_18_n_5 ,\random_y_reg[7]_i_18_n_6 ,\random_y_reg[7]_i_18_n_7 }),
        .S({\random_y[7]_i_21_n_0 ,\random_y[7]_i_22_n_0 ,\random_y[7]_i_23_n_0 ,\random_y[7]_i_24_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[7]_i_2 
       (.CI(\random_y_reg[3]_i_2_n_0 ),
        .CO({\random_y_reg[7]_i_2_n_0 ,\random_y_reg[7]_i_2_n_1 ,\random_y_reg[7]_i_2_n_2 ,\random_y_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(random_y4[7:4]),
        .O({\random_y_reg[7]_i_2_n_4 ,\random_y_reg[7]_i_2_n_5 ,\random_y_reg[7]_i_2_n_6 ,\random_y_reg[7]_i_2_n_7 }),
        .S({\random_y[7]_i_8_n_0 ,\random_y[7]_i_9_n_0 ,\random_y[7]_i_10_n_0 ,\random_y[7]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \random_y_reg[7]_i_3 
       (.CI(\random_y_reg[3]_i_3_n_0 ),
        .CO({\random_y_reg[7]_i_3_n_0 ,\random_y_reg[7]_i_3_n_1 ,\random_y_reg[7]_i_3_n_2 ,\random_y_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\random_y_reg[7]_i_3_n_4 ,\random_y_reg[7]_i_3_n_5 ,\random_y_reg[7]_i_3_n_6 ,\random_y_reg[7]_i_3_n_7 }),
        .S({\random_y_reg[7]_i_2_n_4 ,\random_y_reg[7]_i_2_n_5 ,\random_y_reg[7]_i_2_n_6 ,\random_y_reg[7]_i_2_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[8] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[8]),
        .Q(\random_y_reg_n_0_[8] ),
        .R(random_y0));
  FDRE #(
    .INIT(1'b0)) 
    \random_y_reg[9] 
       (.C(head_y0_BUFG),
        .CE(\<const1> ),
        .D(A[9]),
        .Q(\random_y_reg_n_0_[9] ),
        .R(random_y0));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \v_cntr_reg[0]_i_1 
       (.I0(sel),
        .I1(\v_cntr_reg[0]_i_3_n_0 ),
        .I2(v_cntr_reg_reg__0[9]),
        .I3(v_cntr_reg_reg__0[8]),
        .I4(v_cntr_reg_reg__0[3]),
        .I5(v_cntr_reg_reg__0[2]),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \v_cntr_reg[0]_i_3 
       (.I0(\v_cntr_reg[0]_i_5_n_0 ),
        .I1(\v_cntr_reg[0]_i_6_n_0 ),
        .I2(v_cntr_reg_reg__0[5]),
        .I3(v_cntr_reg_reg__0[4]),
        .I4(v_cntr_reg_reg__0[6]),
        .I5(v_cntr_reg_reg__0[7]),
        .O(\v_cntr_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cntr_reg[0]_i_4 
       (.I0(v_cntr_reg_reg),
        .O(\v_cntr_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v_cntr_reg[0]_i_5 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\v_cntr_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_cntr_reg[0]_i_6 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\v_cntr_reg[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[0] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(v_cntr_reg_reg),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\v_cntr_reg_reg[0]_i_2_n_0 ,\v_cntr_reg_reg[0]_i_2_n_1 ,\v_cntr_reg_reg[0]_i_2_n_2 ,\v_cntr_reg_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\v_cntr_reg_reg[0]_i_2_n_4 ,\v_cntr_reg_reg[0]_i_2_n_5 ,\v_cntr_reg_reg[0]_i_2_n_6 ,\v_cntr_reg_reg[0]_i_2_n_7 }),
        .S({v_cntr_reg_reg__0[3:2],\v_cntr_reg_reg_n_0_[1] ,\v_cntr_reg[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[10] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(v_cntr_reg_reg__0[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[11] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(v_cntr_reg_reg__0[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[1] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(\v_cntr_reg_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[2] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(v_cntr_reg_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[3] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(v_cntr_reg_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[4] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(v_cntr_reg_reg__0[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v_cntr_reg_reg[4]_i_1 
       (.CI(\v_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\v_cntr_reg_reg[4]_i_1_n_0 ,\v_cntr_reg_reg[4]_i_1_n_1 ,\v_cntr_reg_reg[4]_i_1_n_2 ,\v_cntr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[4]_i_1_n_4 ,\v_cntr_reg_reg[4]_i_1_n_5 ,\v_cntr_reg_reg[4]_i_1_n_6 ,\v_cntr_reg_reg[4]_i_1_n_7 }),
        .S(v_cntr_reg_reg__0[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[5] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(v_cntr_reg_reg__0[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[6] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(v_cntr_reg_reg__0[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[7] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(v_cntr_reg_reg__0[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[8] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(v_cntr_reg_reg__0[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v_cntr_reg_reg[8]_i_1 
       (.CI(\v_cntr_reg_reg[4]_i_1_n_0 ),
        .CO({\v_cntr_reg_reg[8]_i_1_n_1 ,\v_cntr_reg_reg[8]_i_1_n_2 ,\v_cntr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[8]_i_1_n_4 ,\v_cntr_reg_reg[8]_i_1_n_5 ,\v_cntr_reg_reg[8]_i_1_n_6 ,\v_cntr_reg_reg[8]_i_1_n_7 }),
        .S(v_cntr_reg_reg__0[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[9] 
       (.C(pxl_clk),
        .CE(sel),
        .D(\v_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(v_cntr_reg_reg__0[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    v_sync_dly_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(v_sync_reg),
        .Q(VGA_VS_O_OBUF),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    v_sync_reg_i_1
       (.I0(geqOp31_in),
        .I1(ltOp30_in),
        .O(v_sync_reg0));
  LUT2 #(
    .INIT(4'h2)) 
    v_sync_reg_i_10
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(v_sync_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    v_sync_reg_i_11
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(v_sync_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    v_sync_reg_i_12
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[8]),
        .O(v_sync_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    v_sync_reg_i_13
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(v_sync_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    v_sync_reg_i_14
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(v_sync_reg_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v_sync_reg_i_15
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(v_sync_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v_sync_reg_i_16
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(v_sync_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    v_sync_reg_i_17
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(v_sync_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v_sync_reg_i_18
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(v_sync_reg_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v_sync_reg_i_5
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(v_sync_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v_sync_reg_i_6
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(v_sync_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v_sync_reg_i_7
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(v_sync_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v_sync_reg_i_8
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(v_sync_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v_sync_reg_i_9
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(v_sync_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_sync_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(v_sync_reg0),
        .Q(v_sync_reg),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_sync_reg_reg_i_2
       (.CI(v_sync_reg_reg_i_4_n_0),
        .CO(geqOp31_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,v_cntr_reg_reg__0[11]}),
        .S({\<const0> ,\<const0> ,\<const0> ,v_sync_reg_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_sync_reg_reg_i_3
       (.CI(\<const0> ),
        .CO({ltOp30_in,v_sync_reg_reg_i_3_n_2,v_sync_reg_reg_i_3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,v_sync_reg_i_6_n_0,\<const0> ,v_sync_reg_i_7_n_0}),
        .S({\<const0> ,v_sync_reg_i_8_n_0,v_sync_reg_i_9_n_0,v_sync_reg_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_sync_reg_reg_i_4
       (.CI(\<const0> ),
        .CO({v_sync_reg_reg_i_4_n_0,v_sync_reg_reg_i_4_n_1,v_sync_reg_reg_i_4_n_2,v_sync_reg_reg_i_4_n_3}),
        .CYINIT(v_sync_reg_i_11_n_0),
        .DI({v_sync_reg_i_12_n_0,v_sync_reg_i_13_n_0,\<const0> ,v_sync_reg_i_14_n_0}),
        .S({v_sync_reg_i_15_n_0,v_sync_reg_i_16_n_0,v_sync_reg_i_17_n_0,v_sync_reg_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_blue_reg[3]_i_10 
       (.I0(head_y[30]),
        .O(\vga_blue_reg[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_blue_reg[3]_i_104 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_blue_reg[3]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_blue_reg[3]_i_105 
       (.I0(v_cntr_reg_reg__0[3]),
        .O(\vga_blue_reg[3]_i_105_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_106 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_blue_reg[3]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_107 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_blue_reg[3]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_108 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_blue_reg[3]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_109 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_blue_reg[3]_i_109_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_11 
       (.I0(head_y[27]),
        .I1(head_y[28]),
        .I2(head_y[29]),
        .O(\vga_blue_reg[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_110 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_blue_reg[3]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_111 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_blue_reg[3]_i_111_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_112 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\vga_blue_reg[3]_i_112_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_113 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_blue_reg[3]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_114 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_blue_reg[3]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_115 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_blue_reg[3]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_116 
       (.I0(v_cntr_reg_reg),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_blue_reg[3]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_blue_reg[3]_i_117 
       (.I0(h_cntr_reg_reg[8]),
        .I1(h_cntr_reg_reg[9]),
        .O(\vga_blue_reg[3]_i_117_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_blue_reg[3]_i_118 
       (.I0(h_cntr_reg_reg[7]),
        .O(\vga_blue_reg[3]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_119 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_119_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_12 
       (.I0(head_y[24]),
        .I1(head_y[25]),
        .I2(head_y[26]),
        .O(\vga_blue_reg[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_120 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_blue_reg[3]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_121 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_122 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_blue_reg[3]_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_123 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_123_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_124 
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(\vga_blue_reg[3]_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_125 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_blue_reg[3]_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_126 
       (.I0(h_cntr_reg_reg[5]),
        .I1(h_cntr_reg_reg[4]),
        .O(\vga_blue_reg[3]_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_127 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_blue_reg[3]_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_128 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_blue_reg[3]_i_128_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_blue_reg[3]_i_14 
       (.I0(head_x_reg[30]),
        .O(\vga_blue_reg[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_15 
       (.I0(head_x_reg[27]),
        .I1(head_x_reg[28]),
        .I2(head_x_reg[29]),
        .O(\vga_blue_reg[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_16 
       (.I0(head_x_reg[24]),
        .I1(head_x_reg[25]),
        .I2(head_x_reg[26]),
        .O(\vga_blue_reg[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \vga_blue_reg[3]_i_17 
       (.I0(geqOp3_in),
        .I1(ltOp),
        .I2(geqOp6_in),
        .I3(leqOp5_in),
        .I4(\vga_red_reg[3]_i_18_n_0 ),
        .O(\vga_blue_reg[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040FF0000)) 
    \vga_blue_reg[3]_i_2 
       (.I0(\vga_blue_reg[3]_i_3_n_0 ),
        .I1(vga_blue1),
        .I2(vga_blue11_out),
        .I3(\vga_blue_reg[3]_i_6_n_0 ),
        .I4(\vga_blue_reg[3]_i_7_n_0 ),
        .I5(\vga_blue_reg[3]_i_8_n_0 ),
        .O(vga_blue0_in));
  LUT4 #(
    .INIT(16'hF888)) 
    \vga_blue_reg[3]_i_22 
       (.I0(leqOp11_in),
        .I1(geqOp12_in),
        .I2(leqOp20_in),
        .I3(geqOp21_in),
        .O(\vga_blue_reg[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_24 
       (.I0(head_y[21]),
        .I1(head_y[22]),
        .I2(head_y[23]),
        .O(\vga_blue_reg[3]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_25 
       (.I0(head_y[18]),
        .I1(head_y[19]),
        .I2(head_y[20]),
        .O(\vga_blue_reg[3]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_26 
       (.I0(head_y[15]),
        .I1(head_y[16]),
        .I2(head_y[17]),
        .O(\vga_blue_reg[3]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_27 
       (.I0(head_y[12]),
        .I1(head_y[13]),
        .I2(head_y[14]),
        .O(\vga_blue_reg[3]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_29 
       (.I0(head_x_reg[21]),
        .I1(head_x_reg[22]),
        .I2(head_x_reg[23]),
        .O(\vga_blue_reg[3]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_3 
       (.I0(vga_green12_out),
        .I1(vga_green1),
        .O(\vga_blue_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_30 
       (.I0(head_x_reg[18]),
        .I1(head_x_reg[19]),
        .I2(head_x_reg[20]),
        .O(\vga_blue_reg[3]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_31 
       (.I0(head_x_reg[15]),
        .I1(head_x_reg[16]),
        .I2(head_x_reg[17]),
        .O(\vga_blue_reg[3]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_32 
       (.I0(head_x_reg[12]),
        .I1(head_x_reg[13]),
        .I2(head_x_reg[14]),
        .O(\vga_blue_reg[3]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_34 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_36 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_blue_reg[3]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_38 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_39 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_40 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_42 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_43 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_48 
       (.I0(head_y[9]),
        .I1(head_y[10]),
        .I2(head_y[11]),
        .O(\vga_blue_reg[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000006909009)) 
    \vga_blue_reg[3]_i_49 
       (.I0(\vga_green_reg_reg[3]_i_18_n_2 ),
        .I1(head_y[7]),
        .I2(head_y[6]),
        .I3(\vga_blue_reg[3]_i_96_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_18_n_7 ),
        .I5(head_y[8]),
        .O(\vga_blue_reg[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vga_blue_reg[3]_i_50 
       (.I0(\vga_green_reg[3]_i_22_n_0 ),
        .I1(head_y[5]),
        .I2(head_y[4]),
        .I3(\vga_blue_reg[3]_i_97_n_0 ),
        .I4(head_y[3]),
        .I5(\vga_blue_reg[3]_i_98_n_0 ),
        .O(\vga_blue_reg[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090060990)) 
    \vga_blue_reg[3]_i_51 
       (.I0(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I1(head_y[2]),
        .I2(head_y[1]),
        .I3(\vga_green_reg[3]_i_26_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I5(\vga_blue_reg[3]_i_99_n_0 ),
        .O(\vga_blue_reg[3]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \vga_blue_reg[3]_i_52 
       (.I0(head_x_reg[9]),
        .I1(head_x_reg[10]),
        .I2(head_x_reg[11]),
        .O(\vga_blue_reg[3]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_56 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_57 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_blue_reg[3]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_58 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_59 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_blue_reg[3]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \vga_blue_reg[3]_i_6 
       (.I0(\vga_blue_reg[3]_i_17_n_0 ),
        .I1(\vga_red_reg[3]_i_17_n_0 ),
        .I2(vga_red_reg0),
        .O(\vga_blue_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_60 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_61 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_blue_reg[3]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_62 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_blue_reg[3]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_63 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_blue_reg[3]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_64 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_blue_reg[3]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_65 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_blue_reg[3]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_66 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_blue_reg[3]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_67 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_blue_reg[3]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_68 
       (.I0(h_cntr_reg_reg[5]),
        .I1(h_cntr_reg_reg[4]),
        .O(\vga_blue_reg[3]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_69 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_blue_reg[3]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_7 
       (.I0(ltOp28_in),
        .I1(ltOp27_in),
        .O(\vga_blue_reg[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_70 
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(\vga_blue_reg[3]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_71 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_blue_reg[3]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_72 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_73 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_blue_reg[3]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_74 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_blue_reg[3]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_blue_reg[3]_i_75 
       (.I0(h_cntr_reg_reg[9]),
        .O(\vga_blue_reg[3]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_76 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_blue_reg[3]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_77 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_78 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_blue_reg[3]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_79 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \vga_blue_reg[3]_i_8 
       (.I0(ltOp22_in),
        .I1(ltOp14_in),
        .I2(geqOp18_in),
        .I3(leqOp17_in),
        .I4(\vga_blue_reg[3]_i_22_n_0 ),
        .O(\vga_blue_reg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_80 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_blue_reg[3]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_81 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_blue_reg[3]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_82 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_blue_reg[3]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_84 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_blue_reg[3]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_85 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_blue_reg[3]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_blue_reg[3]_i_87 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[8]),
        .O(\vga_blue_reg[3]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_88 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_blue_reg[3]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_89 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_blue_reg[3]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_blue_reg[3]_i_91 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_92 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_blue_reg[3]_i_94 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_blue_reg[3]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_blue_reg[3]_i_95 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_blue_reg[3]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \vga_blue_reg[3]_i_96 
       (.I0(\vga_green_reg_reg[3]_i_19_n_4 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_5 ),
        .I2(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I3(\vga_green_reg[3]_i_26_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I5(\vga_green_reg_reg[3]_i_19_n_6 ),
        .O(\vga_blue_reg[3]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \vga_blue_reg[3]_i_97 
       (.I0(\vga_green_reg_reg[3]_i_19_n_5 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_6 ),
        .I2(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I3(\vga_green_reg[3]_i_26_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_19_n_7 ),
        .O(\vga_blue_reg[3]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \vga_blue_reg[3]_i_98 
       (.I0(\vga_green_reg_reg[3]_i_19_n_6 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I2(\vga_green_reg[3]_i_26_n_0 ),
        .I3(\vga_green_reg_reg[3]_i_25_n_4 ),
        .O(\vga_blue_reg[3]_i_98_n_0 ));
  LUT5 #(
    .INIT(32'h55A6AA59)) 
    \vga_blue_reg[3]_i_99 
       (.I0(head_y[0]),
        .I1(\vga_green_reg_reg[3]_i_34_n_5 ),
        .I2(v_cntr_reg_reg__0[11]),
        .I3(\vga_green_reg_reg[3]_i_35_n_2 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_5 ),
        .O(\vga_blue_reg[3]_i_99_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_blue_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_blue0_in),
        .Q(VGA_B_OBUF),
        .S(vga_blue));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_18 
       (.CI(\vga_blue_reg_reg[3]_i_33_n_0 ),
        .CO(ltOp22_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_34_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_19 
       (.CI(\vga_blue_reg_reg[3]_i_35_n_0 ),
        .CO(ltOp14_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_20 
       (.CI(\vga_blue_reg_reg[3]_i_37_n_0 ),
        .CO({geqOp18_in,\vga_blue_reg_reg[3]_i_20_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,h_cntr_reg_reg[11],\vga_blue_reg[3]_i_38_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_39_n_0 ,\vga_blue_reg[3]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_21 
       (.CI(\vga_blue_reg_reg[3]_i_41_n_0 ),
        .CO(leqOp17_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_42_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_43_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_23 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_23_n_0 ,\vga_blue_reg_reg[3]_i_23_n_1 ,\vga_blue_reg_reg[3]_i_23_n_2 ,\vga_blue_reg_reg[3]_i_23_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\vga_blue_reg[3]_i_48_n_0 ,\vga_blue_reg[3]_i_49_n_0 ,\vga_blue_reg[3]_i_50_n_0 ,\vga_blue_reg[3]_i_51_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_33 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_33_n_0 ,\vga_blue_reg_reg[3]_i_33_n_1 ,\vga_blue_reg_reg[3]_i_33_n_2 ,\vga_blue_reg_reg[3]_i_33_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_56_n_0 ,\vga_blue_reg[3]_i_57_n_0 }),
        .S({\vga_blue_reg[3]_i_58_n_0 ,\vga_blue_reg[3]_i_59_n_0 ,\vga_blue_reg[3]_i_60_n_0 ,\vga_blue_reg[3]_i_61_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_35 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_35_n_0 ,\vga_blue_reg_reg[3]_i_35_n_1 ,\vga_blue_reg_reg[3]_i_35_n_2 ,\vga_blue_reg_reg[3]_i_35_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_62_n_0 ,\vga_blue_reg[3]_i_63_n_0 }),
        .S({\vga_blue_reg[3]_i_64_n_0 ,\vga_blue_reg[3]_i_65_n_0 ,\vga_blue_reg[3]_i_66_n_0 ,\vga_blue_reg[3]_i_67_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_37 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_37_n_0 ,\vga_blue_reg_reg[3]_i_37_n_1 ,\vga_blue_reg_reg[3]_i_37_n_2 ,\vga_blue_reg_reg[3]_i_37_n_3 }),
        .CYINIT(\<const1> ),
        .DI({h_cntr_reg_reg[7],\vga_blue_reg[3]_i_68_n_0 ,\vga_blue_reg[3]_i_69_n_0 ,\vga_blue_reg[3]_i_70_n_0 }),
        .S({\vga_blue_reg[3]_i_71_n_0 ,\vga_blue_reg[3]_i_72_n_0 ,\vga_blue_reg[3]_i_73_n_0 ,\vga_blue_reg[3]_i_74_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_4 
       (.CI(\vga_blue_reg_reg[3]_i_9_n_0 ),
        .CO({vga_blue1,\vga_blue_reg_reg[3]_i_4_n_2 ,\vga_blue_reg_reg[3]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\vga_blue_reg[3]_i_10_n_0 ,\vga_blue_reg[3]_i_11_n_0 ,\vga_blue_reg[3]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_41 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_41_n_0 ,\vga_blue_reg_reg[3]_i_41_n_1 ,\vga_blue_reg_reg[3]_i_41_n_2 ,\vga_blue_reg_reg[3]_i_41_n_3 }),
        .CYINIT(\vga_red_reg[3]_i_79_n_0 ),
        .DI({\vga_blue_reg[3]_i_75_n_0 ,\vga_blue_reg[3]_i_76_n_0 ,\vga_blue_reg[3]_i_77_n_0 ,\vga_blue_reg[3]_i_78_n_0 }),
        .S({\vga_blue_reg[3]_i_79_n_0 ,\vga_blue_reg[3]_i_80_n_0 ,\vga_blue_reg[3]_i_81_n_0 ,\vga_blue_reg[3]_i_82_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_44 
       (.CI(\vga_blue_reg_reg[3]_i_83_n_0 ),
        .CO(leqOp11_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_84_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_85_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_45 
       (.CI(\vga_blue_reg_reg[3]_i_86_n_0 ),
        .CO({geqOp12_in,\vga_blue_reg_reg[3]_i_45_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,v_cntr_reg_reg__0[11],\vga_blue_reg[3]_i_87_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_88_n_0 ,\vga_blue_reg[3]_i_89_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_46 
       (.CI(\vga_blue_reg_reg[3]_i_90_n_0 ),
        .CO(leqOp20_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_91_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_blue_reg[3]_i_92_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_47 
       (.CI(\vga_blue_reg_reg[3]_i_93_n_0 ),
        .CO({geqOp21_in,\vga_blue_reg_reg[3]_i_47_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,h_cntr_reg_reg[11],\<const0> }),
        .S({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_94_n_0 ,\vga_blue_reg[3]_i_95_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_83 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_83_n_0 ,\vga_blue_reg_reg[3]_i_83_n_1 ,\vga_blue_reg_reg[3]_i_83_n_2 ,\vga_blue_reg_reg[3]_i_83_n_3 }),
        .CYINIT(\vga_red_reg[3]_i_113_n_0 ),
        .DI({\<const0> ,\<const0> ,\vga_blue_reg[3]_i_104_n_0 ,\vga_blue_reg[3]_i_105_n_0 }),
        .S({\vga_blue_reg[3]_i_106_n_0 ,\vga_blue_reg[3]_i_107_n_0 ,\vga_blue_reg[3]_i_108_n_0 ,\vga_blue_reg[3]_i_109_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_86 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_86_n_0 ,\vga_blue_reg_reg[3]_i_86_n_1 ,\vga_blue_reg_reg[3]_i_86_n_2 ,\vga_blue_reg_reg[3]_i_86_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\vga_blue_reg[3]_i_110_n_0 ,\vga_blue_reg[3]_i_111_n_0 ,v_cntr_reg_reg__0[3],\vga_blue_reg[3]_i_112_n_0 }),
        .S({\vga_blue_reg[3]_i_113_n_0 ,\vga_blue_reg[3]_i_114_n_0 ,\vga_blue_reg[3]_i_115_n_0 ,\vga_blue_reg[3]_i_116_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_9 
       (.CI(\vga_blue_reg_reg[3]_i_23_n_0 ),
        .CO({\vga_blue_reg_reg[3]_i_9_n_0 ,\vga_blue_reg_reg[3]_i_9_n_1 ,\vga_blue_reg_reg[3]_i_9_n_2 ,\vga_blue_reg_reg[3]_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\vga_blue_reg[3]_i_24_n_0 ,\vga_blue_reg[3]_i_25_n_0 ,\vga_blue_reg[3]_i_26_n_0 ,\vga_blue_reg[3]_i_27_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_90 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_90_n_0 ,\vga_blue_reg_reg[3]_i_90_n_1 ,\vga_blue_reg_reg[3]_i_90_n_2 ,\vga_blue_reg_reg[3]_i_90_n_3 }),
        .CYINIT(\vga_red_reg[3]_i_79_n_0 ),
        .DI({\vga_blue_reg[3]_i_117_n_0 ,\vga_blue_reg[3]_i_118_n_0 ,\<const0> ,\<const0> }),
        .S({\vga_blue_reg[3]_i_119_n_0 ,\vga_blue_reg[3]_i_120_n_0 ,\vga_blue_reg[3]_i_121_n_0 ,\vga_blue_reg[3]_i_122_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_93 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_93_n_0 ,\vga_blue_reg_reg[3]_i_93_n_1 ,\vga_blue_reg_reg[3]_i_93_n_2 ,\vga_blue_reg_reg[3]_i_93_n_3 }),
        .CYINIT(\<const1> ),
        .DI({h_cntr_reg_reg[7],\vga_blue_reg[3]_i_123_n_0 ,\<const0> ,\vga_blue_reg[3]_i_124_n_0 }),
        .S({\vga_blue_reg[3]_i_125_n_0 ,\vga_blue_reg[3]_i_126_n_0 ,\vga_blue_reg[3]_i_127_n_0 ,\vga_blue_reg[3]_i_128_n_0 }));
  LUT6 #(
    .INIT(64'h2010012002011002)) 
    \vga_green_reg[3]_i_10 
       (.I0(\vga_green_reg[3]_i_23_n_0 ),
        .I1(\vga_green_reg[3]_i_24_n_0 ),
        .I2(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I3(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I4(\vga_green_reg[3]_i_26_n_0 ),
        .I5(\vga_green_reg[3]_i_27_n_0 ),
        .O(\vga_green_reg[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \vga_green_reg[3]_i_100 
       (.I0(h_cntr_reg_reg[4]),
        .I1(Text_line1_n_5),
        .I2(Text_line1_n_12),
        .I3(h_cntr_reg_reg[5]),
        .O(\vga_green_reg[3]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_101 
       (.I0(h_cntr_reg_reg[3]),
        .I1(Text_line1_n_6),
        .I2(Text_line1_n_5),
        .I3(h_cntr_reg_reg[4]),
        .O(\vga_green_reg[3]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_102 
       (.I0(h_cntr_reg_reg[2]),
        .I1(Text_line1_n_7),
        .I2(Text_line1_n_6),
        .I3(h_cntr_reg_reg[3]),
        .O(\vga_green_reg[3]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_103 
       (.I0(h_cntr_reg_reg[1]),
        .I1(Text_line1_n_8),
        .I2(Text_line1_n_7),
        .I3(h_cntr_reg_reg[2]),
        .O(\vga_green_reg[3]_i_103_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_104 
       (.I0(\vga_green_reg_reg[3]_i_19_n_6 ),
        .O(\vga_green_reg[3]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_105 
       (.I0(\vga_green_reg_reg[3]_i_19_n_7 ),
        .O(\vga_green_reg[3]_i_105_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_106 
       (.I0(\vga_green_reg_reg[3]_i_25_n_4 ),
        .O(\vga_green_reg[3]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_107 
       (.I0(\vga_green_reg_reg[3]_i_79_n_4 ),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_green_reg[3]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_108 
       (.I0(\vga_green_reg_reg[3]_i_79_n_5 ),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_green_reg[3]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_109 
       (.I0(\vga_green_reg_reg[3]_i_79_n_6 ),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_green_reg[3]_i_109_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_110 
       (.I0(\vga_green_reg_reg[3]_i_79_n_7 ),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_green_reg[3]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \vga_green_reg[3]_i_111 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(\vga_green_reg_reg[3]_i_79_n_4 ),
        .I2(\vga_green_reg_reg[3]_i_53_n_7 ),
        .I3(v_cntr_reg_reg__0[5]),
        .O(\vga_green_reg[3]_i_111_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_112 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(\vga_green_reg_reg[3]_i_79_n_5 ),
        .I2(\vga_green_reg_reg[3]_i_79_n_4 ),
        .I3(v_cntr_reg_reg__0[4]),
        .O(\vga_green_reg[3]_i_112_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_113 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(\vga_green_reg_reg[3]_i_79_n_6 ),
        .I2(\vga_green_reg_reg[3]_i_79_n_5 ),
        .I3(v_cntr_reg_reg__0[3]),
        .O(\vga_green_reg[3]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \vga_green_reg[3]_i_114 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(\vga_green_reg_reg[3]_i_79_n_7 ),
        .I2(\vga_green_reg_reg[3]_i_79_n_6 ),
        .I3(v_cntr_reg_reg__0[2]),
        .O(\vga_green_reg[3]_i_114_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_14 
       (.I0(\food_x_reg[1]_P_n_0 ),
        .I1(\food_x_reg[1]_LDC_n_0 ),
        .I2(\food_x_reg[1]_C_n_0 ),
        .O(\vga_green_reg[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_17 
       (.I0(\food_x_reg[2]_P_n_0 ),
        .I1(\food_x_reg[2]_LDC_n_0 ),
        .I2(\food_x_reg[2]_C_n_0 ),
        .O(\vga_green_reg[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h80008888)) 
    \vga_green_reg[3]_i_2 
       (.I0(ltOp27_in),
        .I1(ltOp28_in),
        .I2(vga_green12_out),
        .I3(vga_green1),
        .I4(\vga_blue_reg[3]_i_6_n_0 ),
        .O(vga_green0_in));
  LUT6 #(
    .INIT(64'hFF5DFFFFFFFFFFFF)) 
    \vga_green_reg[3]_i_20 
       (.I0(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I1(\vga_green_reg_reg[3]_i_34_n_5 ),
        .I2(v_cntr_reg_reg__0[11]),
        .I3(\vga_green_reg_reg[3]_i_35_n_2 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_5 ),
        .I5(\vga_green_reg_reg[3]_i_19_n_7 ),
        .O(\vga_green_reg[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h84182142)) 
    \vga_green_reg[3]_i_21 
       (.I0(\vga_green_reg[3]_i_36_n_0 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_5 ),
        .I2(\vga_green_reg_reg[3]_i_19_n_6 ),
        .I3(\vga_green_reg[3]_i_20_n_0 ),
        .I4(\vga_green_reg[3]_i_37_n_0 ),
        .O(\vga_green_reg[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \vga_green_reg[3]_i_22 
       (.I0(\vga_green_reg_reg[3]_i_19_n_4 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_5 ),
        .I2(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I3(\vga_green_reg[3]_i_26_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I5(\vga_green_reg_reg[3]_i_19_n_6 ),
        .O(\vga_green_reg[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_23 
       (.I0(\food_y_reg[1]_P_n_0 ),
        .I1(\food_y_reg[1]_LDC_n_0 ),
        .I2(\food_y_reg[1]_C_n_0 ),
        .O(\vga_green_reg[3]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h55A6AA59)) 
    \vga_green_reg[3]_i_24 
       (.I0(\vga_green_reg[3]_i_38_n_0 ),
        .I1(\vga_green_reg_reg[3]_i_34_n_5 ),
        .I2(v_cntr_reg_reg__0[11]),
        .I3(\vga_green_reg_reg[3]_i_35_n_2 ),
        .I4(\vga_green_reg_reg[3]_i_25_n_5 ),
        .O(\vga_green_reg[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \vga_green_reg[3]_i_26 
       (.I0(\vga_green_reg_reg[3]_i_34_n_5 ),
        .I1(v_cntr_reg_reg__0[11]),
        .I2(\vga_green_reg_reg[3]_i_35_n_2 ),
        .I3(\vga_green_reg_reg[3]_i_25_n_5 ),
        .O(\vga_green_reg[3]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_27 
       (.I0(\food_y_reg[2]_P_n_0 ),
        .I1(\food_y_reg[2]_LDC_n_0 ),
        .I2(\food_y_reg[2]_C_n_0 ),
        .O(\vga_green_reg[3]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_30 
       (.I0(\food_x_reg[3]_P_n_0 ),
        .I1(\food_x_reg[3]_LDC_n_0 ),
        .I2(\food_x_reg[3]_C_n_0 ),
        .O(\vga_green_reg[3]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_31 
       (.I0(\food_x_reg[4]_P_n_0 ),
        .I1(\food_x_reg[4]_LDC_n_0 ),
        .I2(\food_x_reg[4]_C_n_0 ),
        .O(\vga_green_reg[3]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_32 
       (.I0(\food_x_reg[0]_P_n_0 ),
        .I1(\food_x_reg[0]_LDC_n_0 ),
        .I2(\food_x_reg[0]_C_n_0 ),
        .O(\vga_green_reg[3]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_33 
       (.I0(v_cntr_reg_reg__0[11]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_green_reg[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_36 
       (.I0(\food_y_reg[3]_P_n_0 ),
        .I1(\food_y_reg[3]_LDC_n_0 ),
        .I2(\food_y_reg[3]_C_n_0 ),
        .O(\vga_green_reg[3]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_37 
       (.I0(\food_y_reg[4]_P_n_0 ),
        .I1(\food_y_reg[4]_LDC_n_0 ),
        .I2(\food_y_reg[4]_C_n_0 ),
        .O(\vga_green_reg[3]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vga_green_reg[3]_i_38 
       (.I0(\food_y_reg[0]_P_n_0 ),
        .I1(\food_y_reg[0]_LDC_n_0 ),
        .I2(\food_y_reg[0]_C_n_0 ),
        .O(\vga_green_reg[3]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_40 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_green_reg[3]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_41 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_green_reg[3]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_42 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_green_reg[3]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_43 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_green_reg[3]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_49 
       (.I0(Text_line1_n_14),
        .I1(h_cntr_reg_reg[10]),
        .O(\vga_green_reg[3]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_50 
       (.I0(Text_line1_n_15),
        .I1(h_cntr_reg_reg[9]),
        .O(\vga_green_reg[3]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_51 
       (.I0(h_cntr_reg_reg[10]),
        .I1(Text_line1_n_14),
        .I2(Text_line1_n_13),
        .I3(h_cntr_reg_reg[11]),
        .O(\vga_green_reg[3]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_52 
       (.I0(h_cntr_reg_reg[9]),
        .I1(Text_line1_n_15),
        .I2(Text_line1_n_14),
        .I3(h_cntr_reg_reg[10]),
        .O(\vga_green_reg[3]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_54 
       (.I0(\vga_green_reg_reg[3]_i_18_n_7 ),
        .O(\vga_green_reg[3]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_55 
       (.I0(\vga_green_reg_reg[3]_i_19_n_4 ),
        .O(\vga_green_reg[3]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_56 
       (.I0(\vga_green_reg_reg[3]_i_19_n_5 ),
        .O(\vga_green_reg[3]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_58 
       (.I0(\vga_green_reg_reg[3]_i_34_n_6 ),
        .I1(v_cntr_reg_reg__0[10]),
        .O(\vga_green_reg[3]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_59 
       (.I0(\vga_green_reg_reg[3]_i_34_n_7 ),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_green_reg[3]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_60 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(\vga_green_reg_reg[3]_i_34_n_6 ),
        .I2(\vga_green_reg_reg[3]_i_34_n_5 ),
        .I3(v_cntr_reg_reg__0[11]),
        .O(\vga_green_reg[3]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_61 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(\vga_green_reg_reg[3]_i_34_n_7 ),
        .I2(\vga_green_reg_reg[3]_i_34_n_6 ),
        .I3(v_cntr_reg_reg__0[10]),
        .O(\vga_green_reg[3]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_62 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_green_reg[3]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_63 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_green_reg[3]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_green_reg[3]_i_64 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg),
        .O(\vga_green_reg[3]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_71 
       (.I0(Text_line1_n_9),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_green_reg[3]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_72 
       (.I0(Text_line1_n_10),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_green_reg[3]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_73 
       (.I0(Text_line1_n_11),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_green_reg[3]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_74 
       (.I0(Text_line1_n_12),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_green_reg[3]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_75 
       (.I0(h_cntr_reg_reg[8]),
        .I1(Text_line1_n_9),
        .I2(Text_line1_n_15),
        .I3(h_cntr_reg_reg[9]),
        .O(\vga_green_reg[3]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_76 
       (.I0(h_cntr_reg_reg[7]),
        .I1(Text_line1_n_10),
        .I2(Text_line1_n_9),
        .I3(h_cntr_reg_reg[8]),
        .O(\vga_green_reg[3]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_77 
       (.I0(h_cntr_reg_reg[6]),
        .I1(Text_line1_n_11),
        .I2(Text_line1_n_10),
        .I3(h_cntr_reg_reg[7]),
        .O(\vga_green_reg[3]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_78 
       (.I0(h_cntr_reg_reg[5]),
        .I1(Text_line1_n_12),
        .I2(Text_line1_n_11),
        .I3(h_cntr_reg_reg[6]),
        .O(\vga_green_reg[3]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h0080000055155555)) 
    \vga_green_reg[3]_i_8 
       (.I0(\vga_green_reg_reg[3]_i_18_n_2 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_4 ),
        .I2(\vga_green_reg_reg[3]_i_19_n_5 ),
        .I3(\vga_green_reg[3]_i_20_n_0 ),
        .I4(\vga_green_reg_reg[3]_i_19_n_6 ),
        .I5(\vga_green_reg_reg[3]_i_18_n_7 ),
        .O(\vga_green_reg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_80 
       (.I0(\vga_green_reg_reg[3]_i_19_n_6 ),
        .I1(\vga_green_reg_reg[3]_i_18_n_2 ),
        .O(\vga_green_reg[3]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_81 
       (.I0(\vga_green_reg_reg[3]_i_19_n_7 ),
        .I1(\vga_green_reg_reg[3]_i_18_n_7 ),
        .O(\vga_green_reg[3]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_82 
       (.I0(\vga_green_reg_reg[3]_i_25_n_4 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_4 ),
        .O(\vga_green_reg[3]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_83 
       (.I0(\vga_green_reg_reg[3]_i_25_n_5 ),
        .I1(\vga_green_reg_reg[3]_i_19_n_5 ),
        .O(\vga_green_reg[3]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_85 
       (.I0(\vga_green_reg_reg[3]_i_53_n_4 ),
        .I1(v_cntr_reg_reg__0[8]),
        .O(\vga_green_reg[3]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_86 
       (.I0(\vga_green_reg_reg[3]_i_53_n_5 ),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_green_reg[3]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_87 
       (.I0(\vga_green_reg_reg[3]_i_53_n_6 ),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_green_reg[3]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_green_reg[3]_i_88 
       (.I0(\vga_green_reg_reg[3]_i_53_n_7 ),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_green_reg[3]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_89 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(\vga_green_reg_reg[3]_i_53_n_4 ),
        .I2(\vga_green_reg_reg[3]_i_34_n_7 ),
        .I3(v_cntr_reg_reg__0[9]),
        .O(\vga_green_reg[3]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'h82888222)) 
    \vga_green_reg[3]_i_9 
       (.I0(\vga_green_reg[3]_i_21_n_0 ),
        .I1(\vga_green_reg[3]_i_22_n_0 ),
        .I2(\food_y_reg[5]_P_n_0 ),
        .I3(\food_y_reg[5]_LDC_n_0 ),
        .I4(\food_y_reg[5]_C_n_0 ),
        .O(\vga_green_reg[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_90 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(\vga_green_reg_reg[3]_i_53_n_5 ),
        .I2(\vga_green_reg_reg[3]_i_53_n_4 ),
        .I3(v_cntr_reg_reg__0[8]),
        .O(\vga_green_reg[3]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_91 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(\vga_green_reg_reg[3]_i_53_n_6 ),
        .I2(\vga_green_reg_reg[3]_i_53_n_5 ),
        .I3(v_cntr_reg_reg__0[7]),
        .O(\vga_green_reg[3]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \vga_green_reg[3]_i_92 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(\vga_green_reg_reg[3]_i_53_n_7 ),
        .I2(\vga_green_reg_reg[3]_i_53_n_6 ),
        .I3(v_cntr_reg_reg__0[6]),
        .O(\vga_green_reg[3]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_96 
       (.I0(Text_line1_n_5),
        .I1(h_cntr_reg_reg[4]),
        .O(\vga_green_reg[3]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_97 
       (.I0(Text_line1_n_6),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_green_reg[3]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_98 
       (.I0(Text_line1_n_7),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_green_reg[3]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \vga_green_reg[3]_i_99 
       (.I0(Text_line1_n_8),
        .I1(h_cntr_reg_reg[1]),
        .O(\vga_green_reg[3]_i_99_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_green_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_green0_in),
        .Q(VGA_G_OBUF),
        .R(vga_green));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_18 
       (.CI(\vga_green_reg_reg[3]_i_19_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_18_n_2 ,\NLW_vga_green_reg_reg[3]_i_18_CO_UNCONNECTED [0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\vga_green_reg_reg[3]_i_18_n_7 ),
        .S({\<const0> ,\<const0> ,\<const1> ,v_cntr_reg_reg__0[11]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_19 
       (.CI(\vga_green_reg_reg[3]_i_25_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_19_n_0 ,\vga_green_reg_reg[3]_i_19_n_1 ,\vga_green_reg_reg[3]_i_19_n_2 ,\vga_green_reg_reg[3]_i_19_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,v_cntr_reg_reg__0[11]}),
        .O({\vga_green_reg_reg[3]_i_19_n_4 ,\vga_green_reg_reg[3]_i_19_n_5 ,\vga_green_reg_reg[3]_i_19_n_6 ,\vga_green_reg_reg[3]_i_19_n_7 }),
        .S({v_cntr_reg_reg__0[10:8],\vga_green_reg[3]_i_33_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_25 
       (.CI(\vga_green_reg_reg[3]_i_39_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_25_n_0 ,\vga_green_reg_reg[3]_i_25_n_1 ,\vga_green_reg_reg[3]_i_25_n_2 ,\vga_green_reg_reg[3]_i_25_n_3 }),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg__0[10:7]),
        .O({\vga_green_reg_reg[3]_i_25_n_4 ,\vga_green_reg_reg[3]_i_25_n_5 ,\NLW_vga_green_reg_reg[3]_i_25_O_UNCONNECTED [1:0]}),
        .S({\vga_green_reg[3]_i_40_n_0 ,\vga_green_reg[3]_i_41_n_0 ,\vga_green_reg[3]_i_42_n_0 ,\vga_green_reg[3]_i_43_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_29 
       (.CI(\vga_green_reg_reg[3]_i_48_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_29_n_2 ,\vga_green_reg_reg[3]_i_29_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_green_reg[3]_i_49_n_0 ,\vga_green_reg[3]_i_50_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_green_reg[3]_i_51_n_0 ,\vga_green_reg[3]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_34 
       (.CI(\vga_green_reg_reg[3]_i_53_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_34_n_2 ,\vga_green_reg_reg[3]_i_34_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_green_reg_reg[3]_i_19_n_4 ,\vga_green_reg_reg[3]_i_19_n_5 }),
        .O({\vga_green_reg_reg[3]_i_34_n_5 ,\vga_green_reg_reg[3]_i_34_n_6 ,\vga_green_reg_reg[3]_i_34_n_7 }),
        .S({\<const0> ,\vga_green_reg[3]_i_54_n_0 ,\vga_green_reg[3]_i_55_n_0 ,\vga_green_reg[3]_i_56_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_35 
       (.CI(\vga_green_reg_reg[3]_i_57_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_35_n_2 ,\vga_green_reg_reg[3]_i_35_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_green_reg[3]_i_58_n_0 ,\vga_green_reg[3]_i_59_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_green_reg[3]_i_60_n_0 ,\vga_green_reg[3]_i_61_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_39 
       (.CI(\<const0> ),
        .CO({\vga_green_reg_reg[3]_i_39_n_0 ,\vga_green_reg_reg[3]_i_39_n_1 ,\vga_green_reg_reg[3]_i_39_n_2 ,\vga_green_reg_reg[3]_i_39_n_3 }),
        .CYINIT(\<const0> ),
        .DI({v_cntr_reg_reg__0[6:4],\<const0> }),
        .S({\vga_green_reg[3]_i_62_n_0 ,\vga_green_reg[3]_i_63_n_0 ,\vga_green_reg[3]_i_64_n_0 ,v_cntr_reg_reg__0[3]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_4 
       (.CI(\<const0> ),
        .CO({vga_green1,\vga_green_reg_reg[3]_i_4_n_2 ,\vga_green_reg_reg[3]_i_4_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\vga_green_reg[3]_i_8_n_0 ,\vga_green_reg[3]_i_9_n_0 ,\vga_green_reg[3]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_48 
       (.CI(\vga_green_reg_reg[3]_i_70_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_48_n_0 ,\vga_green_reg_reg[3]_i_48_n_1 ,\vga_green_reg_reg[3]_i_48_n_2 ,\vga_green_reg_reg[3]_i_48_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\vga_green_reg[3]_i_71_n_0 ,\vga_green_reg[3]_i_72_n_0 ,\vga_green_reg[3]_i_73_n_0 ,\vga_green_reg[3]_i_74_n_0 }),
        .S({\vga_green_reg[3]_i_75_n_0 ,\vga_green_reg[3]_i_76_n_0 ,\vga_green_reg[3]_i_77_n_0 ,\vga_green_reg[3]_i_78_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_53 
       (.CI(\vga_green_reg_reg[3]_i_79_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_53_n_0 ,\vga_green_reg_reg[3]_i_53_n_1 ,\vga_green_reg_reg[3]_i_53_n_2 ,\vga_green_reg_reg[3]_i_53_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\vga_green_reg_reg[3]_i_19_n_6 ,\vga_green_reg_reg[3]_i_19_n_7 ,\vga_green_reg_reg[3]_i_25_n_4 ,\vga_green_reg_reg[3]_i_25_n_5 }),
        .O({\vga_green_reg_reg[3]_i_53_n_4 ,\vga_green_reg_reg[3]_i_53_n_5 ,\vga_green_reg_reg[3]_i_53_n_6 ,\vga_green_reg_reg[3]_i_53_n_7 }),
        .S({\vga_green_reg[3]_i_80_n_0 ,\vga_green_reg[3]_i_81_n_0 ,\vga_green_reg[3]_i_82_n_0 ,\vga_green_reg[3]_i_83_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_57 
       (.CI(\vga_green_reg_reg[3]_i_84_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_57_n_0 ,\vga_green_reg_reg[3]_i_57_n_1 ,\vga_green_reg_reg[3]_i_57_n_2 ,\vga_green_reg_reg[3]_i_57_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\vga_green_reg[3]_i_85_n_0 ,\vga_green_reg[3]_i_86_n_0 ,\vga_green_reg[3]_i_87_n_0 ,\vga_green_reg[3]_i_88_n_0 }),
        .S({\vga_green_reg[3]_i_89_n_0 ,\vga_green_reg[3]_i_90_n_0 ,\vga_green_reg[3]_i_91_n_0 ,\vga_green_reg[3]_i_92_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_70 
       (.CI(\<const0> ),
        .CO({\vga_green_reg_reg[3]_i_70_n_0 ,\vga_green_reg_reg[3]_i_70_n_1 ,\vga_green_reg_reg[3]_i_70_n_2 ,\vga_green_reg_reg[3]_i_70_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\vga_green_reg[3]_i_96_n_0 ,\vga_green_reg[3]_i_97_n_0 ,\vga_green_reg[3]_i_98_n_0 ,\vga_green_reg[3]_i_99_n_0 }),
        .S({\vga_green_reg[3]_i_100_n_0 ,\vga_green_reg[3]_i_101_n_0 ,\vga_green_reg[3]_i_102_n_0 ,\vga_green_reg[3]_i_103_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_79 
       (.CI(\<const0> ),
        .CO({\vga_green_reg_reg[3]_i_79_n_0 ,\vga_green_reg_reg[3]_i_79_n_1 ,\vga_green_reg_reg[3]_i_79_n_2 ,\vga_green_reg_reg[3]_i_79_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\vga_green_reg_reg[3]_i_79_n_4 ,\vga_green_reg_reg[3]_i_79_n_5 ,\vga_green_reg_reg[3]_i_79_n_6 ,\vga_green_reg_reg[3]_i_79_n_7 }),
        .S({\vga_green_reg[3]_i_104_n_0 ,\vga_green_reg[3]_i_105_n_0 ,\vga_green_reg[3]_i_106_n_0 ,\vga_green_reg_reg[3]_i_25_n_5 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_84 
       (.CI(\<const0> ),
        .CO({\vga_green_reg_reg[3]_i_84_n_0 ,\vga_green_reg_reg[3]_i_84_n_1 ,\vga_green_reg_reg[3]_i_84_n_2 ,\vga_green_reg_reg[3]_i_84_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\vga_green_reg[3]_i_107_n_0 ,\vga_green_reg[3]_i_108_n_0 ,\vga_green_reg[3]_i_109_n_0 ,\vga_green_reg[3]_i_110_n_0 }),
        .S({\vga_green_reg[3]_i_111_n_0 ,\vga_green_reg[3]_i_112_n_0 ,\vga_green_reg[3]_i_113_n_0 ,\vga_green_reg[3]_i_114_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_10 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_100 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_101 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_102 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_103 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_red_reg[3]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_104 
       (.I0(v_cntr_reg_reg),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_red_reg[3]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_105 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(\vga_red_reg_reg[3]_i_140_n_7 ),
        .O(\vga_red_reg[3]_i_105_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_106 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(\vga_red_reg_reg[3]_i_141_n_4 ),
        .O(\vga_red_reg[3]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_107 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(\vga_red_reg_reg[3]_i_141_n_5 ),
        .O(\vga_red_reg[3]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_108 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(\vga_red_reg_reg[3]_i_141_n_6 ),
        .O(\vga_red_reg[3]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_109 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(\vga_red_reg_reg[3]_i_141_n_7 ),
        .O(\vga_red_reg[3]_i_109_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_11 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_110 
       (.I0(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_113 
       (.I0(v_cntr_reg_reg),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_red_reg[3]_i_113_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_114 
       (.I0(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_115 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_116 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_117 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_117_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_118 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_red_reg[3]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_119 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_red_reg[3]_i_119_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[3]_i_12 
       (.I0(h_cntr_reg_reg[8]),
        .I1(h_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_120 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_red_reg[3]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_121 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_122 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_123 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_123_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_124 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_125 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_126 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_127 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[3]_i_128 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_red_reg[3]_i_128_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_129 
       (.I0(h_cntr_reg_reg[1]),
        .O(\vga_red_reg[3]_i_129_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_13 
       (.I0(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_130 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[3]_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_131 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_131_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_132 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_red_reg[3]_i_132_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_133 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_red_reg[3]_i_133_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_134 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_134_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_135 
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(\vga_red_reg[3]_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_136 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[3]_i_136_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_137 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_138 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_red_reg[3]_i_138_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_139 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_red_reg[3]_i_139_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_14 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_146 
       (.I0(\vga_red_reg_reg[3]_i_150_n_5 ),
        .I1(\vga_red_reg_reg[3]_i_151_n_5 ),
        .O(\vga_red_reg[3]_i_146_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_147 
       (.I0(\vga_red_reg_reg[3]_i_151_n_6 ),
        .O(\vga_red_reg[3]_i_147_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_148 
       (.I0(\vga_red_reg_reg[3]_i_151_n_7 ),
        .O(\vga_red_reg[3]_i_148_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_149 
       (.I0(\vga_red_reg_reg[3]_i_150_n_4 ),
        .O(\vga_red_reg[3]_i_149_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_15 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_153 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_red_reg[3]_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_154 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_154_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_155 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_red_reg[3]_i_155_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_156 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_red_reg[3]_i_156_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_157 
       (.I0(v_cntr_reg_reg__0[11]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_158 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_158_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_159 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_red_reg[3]_i_159_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_16 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_red_reg[3]_i_160 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_160_n_0 ));
  LUT6 #(
    .INIT(64'h777F77FEFFFFFFFF)) 
    \vga_red_reg[3]_i_17 
       (.I0(\vga_red_reg_reg[3]_i_34_n_7 ),
        .I1(\vga_red_reg_reg[3]_i_35_n_4 ),
        .I2(\vga_red_reg_reg[3]_i_34_n_6 ),
        .I3(\vga_red_reg_reg[3]_i_35_n_5 ),
        .I4(\vga_red_reg_reg[3]_i_35_n_6 ),
        .I5(\vga_red_reg[3]_i_23_n_0 ),
        .O(\vga_red_reg[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \vga_red_reg[3]_i_18 
       (.I0(leqOp),
        .I1(geqOp),
        .I2(ltOp8_in),
        .I3(geqOp9_in),
        .O(\vga_red_reg[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_red_reg[3]_i_2 
       (.I0(vga_red_reg0),
        .I1(ltOp27_in),
        .I2(ltOp28_in),
        .O(\vga_red_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1515151515151555)) 
    \vga_red_reg[3]_i_23 
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .I2(h_cntr_reg_reg[9]),
        .I3(\vga_red_reg[3]_i_55_n_0 ),
        .I4(h_cntr_reg_reg[8]),
        .I5(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFBFBFFFFE)) 
    \vga_red_reg[3]_i_24 
       (.I0(v_cntr_reg_reg__0[11]),
        .I1(\vga_red_reg_reg[3]_i_56_n_7 ),
        .I2(\vga_red_reg_reg[3]_i_57_n_4 ),
        .I3(\vga_red_reg_reg[3]_i_57_n_6 ),
        .I4(\vga_red_reg_reg[3]_i_57_n_5 ),
        .I5(\vga_red_reg_reg[3]_i_56_n_6 ),
        .O(\vga_red_reg[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_25 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_26 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFFFFFFFFFF)) 
    \vga_red_reg[3]_i_27 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .I2(v_cntr_reg_reg__0[2]),
        .I3(v_cntr_reg_reg__0[3]),
        .I4(v_cntr_reg_reg__0[5]),
        .I5(v_cntr_reg_reg__0[4]),
        .O(\vga_red_reg[3]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[3]_i_28 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_red_reg[3]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_29 
       (.I0(v_cntr_reg_reg__0[3]),
        .O(\vga_red_reg[3]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_30 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_31 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_32 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_33 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_41 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_42 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_44 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_45 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_46 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_48 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_49 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_51 
       (.I0(v_cntr_reg_reg__0[11]),
        .I1(v_cntr_reg_reg__0[10]),
        .O(\vga_red_reg[3]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_52 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[8]),
        .O(\vga_red_reg[3]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_53 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_54 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00EA000000)) 
    \vga_red_reg[3]_i_55 
       (.I0(h_cntr_reg_reg[3]),
        .I1(Text_line1_n_21),
        .I2(h_cntr_reg_reg[2]),
        .I3(h_cntr_reg_reg[6]),
        .I4(h_cntr_reg_reg[4]),
        .I5(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_58 
       (.I0(h_cntr_reg_reg[5]),
        .I1(Text_line1_n_4),
        .O(\vga_red_reg[3]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_59 
       (.I0(h_cntr_reg_reg[4]),
        .I1(Text_line1_n_0),
        .O(\vga_red_reg[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000022202220222)) 
    \vga_red_reg[3]_i_6 
       (.I0(\vga_red_reg[3]_i_17_n_0 ),
        .I1(\vga_red_reg[3]_i_18_n_0 ),
        .I2(leqOp5_in),
        .I3(geqOp6_in),
        .I4(ltOp),
        .I5(geqOp3_in),
        .O(\vga_red_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_60 
       (.I0(h_cntr_reg_reg[3]),
        .I1(Text_line1_n_1),
        .O(\vga_red_reg[3]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_61 
       (.I0(h_cntr_reg_reg[2]),
        .I1(Text_line1_n_2),
        .O(\vga_red_reg[3]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_62 
       (.I0(h_cntr_reg_reg[1]),
        .I1(Text_line1_n_3),
        .O(\vga_red_reg[3]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_63 
       (.I0(h_cntr_reg_reg[0]),
        .O(\vga_red_reg[3]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_65 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_66 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_68 
       (.I0(v_cntr_reg_reg__0[9]),
        .I1(v_cntr_reg_reg__0[8]),
        .O(\vga_red_reg[3]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_69 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h2202020202020202)) 
    \vga_red_reg[3]_i_7 
       (.I0(\vga_red_reg[3]_i_23_n_0 ),
        .I1(\vga_red_reg[3]_i_24_n_0 ),
        .I2(v_cntr_reg_reg__0[10]),
        .I3(\vga_red_reg[3]_i_25_n_0 ),
        .I4(\vga_red_reg[3]_i_26_n_0 ),
        .I5(\vga_red_reg[3]_i_27_n_0 ),
        .O(vga_red_reg0));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_70 
       (.I0(v_cntr_reg_reg__0[8]),
        .I1(v_cntr_reg_reg__0[9]),
        .O(\vga_red_reg[3]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_72 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_73 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_75 
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(\vga_red_reg[3]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_76 
       (.I0(h_cntr_reg_reg[8]),
        .I1(h_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_77 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_78 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_79 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_red_reg[3]_i_79_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_80 
       (.I0(h_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_81 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[3]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_82 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[3]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_83 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_84 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_85 
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(\vga_red_reg[3]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_86 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_87 
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(\vga_red_reg[3]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_88 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[3]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_89 
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_9 
       (.I0(v_cntr_reg_reg__0[10]),
        .I1(v_cntr_reg_reg__0[11]),
        .O(\vga_red_reg[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_90 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\vga_red_reg[3]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_91 
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(\vga_red_reg[3]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_92 
       (.I0(v_cntr_reg_reg__0[5]),
        .I1(v_cntr_reg_reg__0[4]),
        .O(\vga_red_reg[3]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[3]_i_93 
       (.I0(v_cntr_reg_reg__0[2]),
        .I1(v_cntr_reg_reg__0[3]),
        .O(\vga_red_reg[3]_i_93_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_94 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .O(\vga_red_reg[3]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_95 
       (.I0(v_cntr_reg_reg__0[6]),
        .I1(v_cntr_reg_reg__0[7]),
        .O(\vga_red_reg[3]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_96 
       (.I0(v_cntr_reg_reg__0[4]),
        .I1(v_cntr_reg_reg__0[5]),
        .O(\vga_red_reg[3]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_97 
       (.I0(v_cntr_reg_reg__0[3]),
        .I1(v_cntr_reg_reg__0[2]),
        .O(\vga_red_reg[3]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_98 
       (.I0(\v_cntr_reg_reg_n_0_[1] ),
        .I1(v_cntr_reg_reg),
        .O(\vga_red_reg[3]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vga_red_reg[3]_i_99 
       (.I0(v_cntr_reg_reg__0[7]),
        .I1(v_cntr_reg_reg__0[6]),
        .O(\vga_red_reg[3]_i_99_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\vga_red_reg[3]_i_2_n_0 ),
        .Q(VGA_R_OBUF),
        .S(vga_red));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_140 
       (.CI(\vga_red_reg_reg[3]_i_141_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\vga_red_reg_reg[3]_i_140_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_146_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_141 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_141_n_0 ,\vga_red_reg_reg[3]_i_141_n_1 ,\vga_red_reg_reg[3]_i_141_n_2 ,\vga_red_reg_reg[3]_i_141_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\vga_red_reg_reg[3]_i_141_n_4 ,\vga_red_reg_reg[3]_i_141_n_5 ,\vga_red_reg_reg[3]_i_141_n_6 ,\vga_red_reg_reg[3]_i_141_n_7 }),
        .S({\vga_red_reg[3]_i_147_n_0 ,\vga_red_reg[3]_i_148_n_0 ,\vga_red_reg[3]_i_149_n_0 ,\vga_red_reg_reg[3]_i_150_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_150 
       (.CI(\vga_red_reg_reg[3]_i_152_n_0 ),
        .CO({\vga_red_reg_reg[3]_i_150_n_0 ,\vga_red_reg_reg[3]_i_150_n_1 ,\vga_red_reg_reg[3]_i_150_n_2 ,\vga_red_reg_reg[3]_i_150_n_3 }),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg__0[10:7]),
        .O({\vga_red_reg_reg[3]_i_150_n_4 ,\vga_red_reg_reg[3]_i_150_n_5 ,\NLW_vga_red_reg_reg[3]_i_150_O_UNCONNECTED [1:0]}),
        .S({\vga_red_reg[3]_i_153_n_0 ,\vga_red_reg[3]_i_154_n_0 ,\vga_red_reg[3]_i_155_n_0 ,\vga_red_reg[3]_i_156_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_151 
       (.CI(\vga_red_reg_reg[3]_i_150_n_0 ),
        .CO({\vga_red_reg_reg[3]_i_151_n_2 ,\vga_red_reg_reg[3]_i_151_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,v_cntr_reg_reg__0[11]}),
        .O({\vga_red_reg_reg[3]_i_151_n_5 ,\vga_red_reg_reg[3]_i_151_n_6 ,\vga_red_reg_reg[3]_i_151_n_7 }),
        .S({\<const0> ,v_cntr_reg_reg__0[9:8],\vga_red_reg[3]_i_157_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_152 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_152_n_0 ,\vga_red_reg_reg[3]_i_152_n_1 ,\vga_red_reg_reg[3]_i_152_n_2 ,\vga_red_reg_reg[3]_i_152_n_3 }),
        .CYINIT(\<const0> ),
        .DI({v_cntr_reg_reg__0[6:4],\<const0> }),
        .S({\vga_red_reg[3]_i_158_n_0 ,\vga_red_reg[3]_i_159_n_0 ,\vga_red_reg[3]_i_160_n_0 ,v_cntr_reg_reg__0[3]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_19 
       (.CI(\vga_red_reg_reg[3]_i_40_n_0 ),
        .CO(leqOp5_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_41_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_42_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_20 
       (.CI(\vga_red_reg_reg[3]_i_43_n_0 ),
        .CO({geqOp6_in,\vga_red_reg_reg[3]_i_20_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,h_cntr_reg_reg[11],\vga_red_reg[3]_i_44_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_45_n_0 ,\vga_red_reg[3]_i_46_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_21 
       (.CI(\vga_red_reg_reg[3]_i_47_n_0 ),
        .CO({ltOp,\vga_red_reg_reg[3]_i_21_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_48_n_0 ,\vga_red_reg[3]_i_49_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_22 
       (.CI(\vga_red_reg_reg[3]_i_50_n_0 ),
        .CO({geqOp3_in,\vga_red_reg_reg[3]_i_22_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[3]_i_51_n_0 ,\vga_red_reg[3]_i_52_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_53_n_0 ,\vga_red_reg[3]_i_54_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_3 
       (.CI(\vga_red_reg_reg[3]_i_8_n_0 ),
        .CO(ltOp27_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_9_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vga_red_reg_reg[3]_i_34 
       (.CI(\vga_red_reg_reg[3]_i_35_n_0 ),
        .CO(\vga_red_reg_reg[3]_i_34_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,h_cntr_reg_reg[4]}),
        .O({\vga_red_reg_reg[3]_i_34_n_6 ,\vga_red_reg_reg[3]_i_34_n_7 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_58_n_0 ,\vga_red_reg[3]_i_59_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vga_red_reg_reg[3]_i_35 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_35_n_0 ,\vga_red_reg_reg[3]_i_35_n_1 ,\vga_red_reg_reg[3]_i_35_n_2 ,\vga_red_reg_reg[3]_i_35_n_3 }),
        .CYINIT(\<const1> ),
        .DI(h_cntr_reg_reg[3:0]),
        .O({\vga_red_reg_reg[3]_i_35_n_4 ,\vga_red_reg_reg[3]_i_35_n_5 ,\vga_red_reg_reg[3]_i_35_n_6 ,\NLW_vga_red_reg_reg[3]_i_35_O_UNCONNECTED [0]}),
        .S({\vga_red_reg[3]_i_60_n_0 ,\vga_red_reg[3]_i_61_n_0 ,\vga_red_reg[3]_i_62_n_0 ,\vga_red_reg[3]_i_63_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_36 
       (.CI(\vga_red_reg_reg[3]_i_64_n_0 ),
        .CO(leqOp),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_65_n_0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_66_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_37 
       (.CI(\vga_red_reg_reg[3]_i_67_n_0 ),
        .CO({geqOp,\vga_red_reg_reg[3]_i_37_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,v_cntr_reg_reg__0[11],\vga_red_reg[3]_i_68_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_69_n_0 ,\vga_red_reg[3]_i_70_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_38 
       (.CI(\vga_red_reg_reg[3]_i_71_n_0 ),
        .CO({ltOp8_in,\vga_red_reg_reg[3]_i_38_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_72_n_0 ,\vga_red_reg[3]_i_73_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_39 
       (.CI(\vga_red_reg_reg[3]_i_74_n_0 ),
        .CO({geqOp9_in,\vga_red_reg_reg[3]_i_39_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[3]_i_75_n_0 ,\vga_red_reg[3]_i_76_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_77_n_0 ,\vga_red_reg[3]_i_78_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_4 
       (.CI(\<const0> ),
        .CO({ltOp28_in,\vga_red_reg_reg[3]_i_4_n_2 ,\vga_red_reg_reg[3]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\vga_red_reg[3]_i_11_n_0 ,\vga_red_reg[3]_i_12_n_0 ,\vga_red_reg[3]_i_13_n_0 }),
        .S({\<const0> ,\vga_red_reg[3]_i_14_n_0 ,\vga_red_reg[3]_i_15_n_0 ,\vga_red_reg[3]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_40 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_40_n_0 ,\vga_red_reg_reg[3]_i_40_n_1 ,\vga_red_reg_reg[3]_i_40_n_2 ,\vga_red_reg_reg[3]_i_40_n_3 }),
        .CYINIT(\vga_red_reg[3]_i_79_n_0 ),
        .DI({\vga_red_reg[3]_i_80_n_0 ,\vga_red_reg[3]_i_81_n_0 ,\<const0> ,\<const0> }),
        .S({\vga_red_reg[3]_i_82_n_0 ,\vga_red_reg[3]_i_83_n_0 ,\vga_red_reg[3]_i_84_n_0 ,\vga_red_reg[3]_i_85_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_43 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_43_n_0 ,\vga_red_reg_reg[3]_i_43_n_1 ,\vga_red_reg_reg[3]_i_43_n_2 ,\vga_red_reg_reg[3]_i_43_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\vga_red_reg[3]_i_86_n_0 ,\<const0> ,h_cntr_reg_reg[3],\vga_red_reg[3]_i_87_n_0 }),
        .S({\vga_red_reg[3]_i_88_n_0 ,\vga_red_reg[3]_i_89_n_0 ,\vga_red_reg[3]_i_90_n_0 ,\vga_red_reg[3]_i_91_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_47 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_47_n_0 ,\vga_red_reg_reg[3]_i_47_n_1 ,\vga_red_reg_reg[3]_i_47_n_2 ,\vga_red_reg_reg[3]_i_47_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\vga_red_reg[3]_i_92_n_0 ,\vga_red_reg[3]_i_93_n_0 ,\vga_red_reg[3]_i_94_n_0 }),
        .S({\vga_red_reg[3]_i_95_n_0 ,\vga_red_reg[3]_i_96_n_0 ,\vga_red_reg[3]_i_97_n_0 ,\vga_red_reg[3]_i_98_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_50 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_50_n_0 ,\vga_red_reg_reg[3]_i_50_n_1 ,\vga_red_reg_reg[3]_i_50_n_2 ,\vga_red_reg_reg[3]_i_50_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\vga_red_reg[3]_i_99_n_0 ,v_cntr_reg_reg__0[5],v_cntr_reg_reg__0[3],\vga_red_reg[3]_i_100_n_0 }),
        .S({\vga_red_reg[3]_i_101_n_0 ,\vga_red_reg[3]_i_102_n_0 ,\vga_red_reg[3]_i_103_n_0 ,\vga_red_reg[3]_i_104_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_56 
       (.CI(\vga_red_reg_reg[3]_i_57_n_0 ),
        .CO(\vga_red_reg_reg[3]_i_56_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,v_cntr_reg_reg__0[4]}),
        .O({\vga_red_reg_reg[3]_i_56_n_6 ,\vga_red_reg_reg[3]_i_56_n_7 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_105_n_0 ,\vga_red_reg[3]_i_106_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_red_reg_reg[3]_i_57 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_57_n_0 ,\vga_red_reg_reg[3]_i_57_n_1 ,\vga_red_reg_reg[3]_i_57_n_2 ,\vga_red_reg_reg[3]_i_57_n_3 }),
        .CYINIT(\<const1> ),
        .DI({v_cntr_reg_reg__0[3:2],\v_cntr_reg_reg_n_0_[1] ,v_cntr_reg_reg}),
        .O({\vga_red_reg_reg[3]_i_57_n_4 ,\vga_red_reg_reg[3]_i_57_n_5 ,\vga_red_reg_reg[3]_i_57_n_6 ,\NLW_vga_red_reg_reg[3]_i_57_O_UNCONNECTED [0]}),
        .S({\vga_red_reg[3]_i_107_n_0 ,\vga_red_reg[3]_i_108_n_0 ,\vga_red_reg[3]_i_109_n_0 ,\vga_red_reg[3]_i_110_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_64 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_64_n_0 ,\vga_red_reg_reg[3]_i_64_n_1 ,\vga_red_reg_reg[3]_i_64_n_2 ,\vga_red_reg_reg[3]_i_64_n_3 }),
        .CYINIT(\vga_red_reg[3]_i_113_n_0 ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[3]_i_114_n_0 ,\vga_red_reg[3]_i_115_n_0 }),
        .S({\vga_red_reg[3]_i_116_n_0 ,\vga_red_reg[3]_i_117_n_0 ,\vga_red_reg[3]_i_118_n_0 ,\vga_red_reg[3]_i_119_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_67 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_67_n_0 ,\vga_red_reg_reg[3]_i_67_n_1 ,\vga_red_reg_reg[3]_i_67_n_2 ,\vga_red_reg_reg[3]_i_67_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\vga_red_reg[3]_i_120_n_0 ,v_cntr_reg_reg__0[5],\vga_red_reg[3]_i_121_n_0 ,\vga_red_reg[3]_i_122_n_0 }),
        .S({\vga_red_reg[3]_i_123_n_0 ,\vga_red_reg[3]_i_124_n_0 ,\vga_red_reg[3]_i_125_n_0 ,\vga_red_reg[3]_i_126_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_71 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_71_n_0 ,\vga_red_reg_reg[3]_i_71_n_1 ,\vga_red_reg_reg[3]_i_71_n_2 ,\vga_red_reg_reg[3]_i_71_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\vga_red_reg[3]_i_127_n_0 ,\vga_red_reg[3]_i_128_n_0 ,\vga_red_reg[3]_i_129_n_0 }),
        .S({\vga_red_reg[3]_i_130_n_0 ,\vga_red_reg[3]_i_131_n_0 ,\vga_red_reg[3]_i_132_n_0 ,\vga_red_reg[3]_i_133_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_74 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_74_n_0 ,\vga_red_reg_reg[3]_i_74_n_1 ,\vga_red_reg_reg[3]_i_74_n_2 ,\vga_red_reg_reg[3]_i_74_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\vga_red_reg[3]_i_134_n_0 ,h_cntr_reg_reg[5],h_cntr_reg_reg[3],\vga_red_reg[3]_i_135_n_0 }),
        .S({\vga_red_reg[3]_i_136_n_0 ,\vga_red_reg[3]_i_137_n_0 ,\vga_red_reg[3]_i_138_n_0 ,\vga_red_reg[3]_i_139_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_red_reg_reg[3]_i_8 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_8_n_0 ,\vga_red_reg_reg[3]_i_8_n_1 ,\vga_red_reg_reg[3]_i_8_n_2 ,\vga_red_reg_reg[3]_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[3]_i_28_n_0 ,\vga_red_reg[3]_i_29_n_0 }),
        .S({\vga_red_reg[3]_i_30_n_0 ,\vga_red_reg[3]_i_31_n_0 ,\vga_red_reg[3]_i_32_n_0 ,\vga_red_reg[3]_i_33_n_0 }));
endmodule

module Pixel_On_Text2
   (O,
    \vga_red_reg[3]_i_142_0 ,
    \h_cntr_reg_reg[10] ,
    \h_cntr_reg_reg[11] ,
    \h_cntr_reg_reg[11]_0 ,
    CO,
    \food_x_reg[5]_P ,
    vga_green,
    vga_red,
    vga_blue,
    \h_cntr_reg_reg[0] ,
    fontRow_reg,
    clk_out1,
    out,
    ADDRBWRADDR,
    charPosition3__0_carry__1_0,
    S,
    \vga_blue_reg_reg[3]_i_5_0 ,
    \vga_blue_reg_reg[3] ,
    \vga_green_reg_reg[3]_i_3_0 ,
    \vga_green_reg_reg[3]_i_3_1 ,
    \vga_green_reg_reg[3]_i_3_2 ,
    \vga_green_reg[3]_i_6_0 ,
    \vga_green_reg[3]_i_6_1 ,
    \vga_green_reg_reg[3]_i_3_3 ,
    \vga_green_reg_reg[3]_i_3_4 ,
    \vga_green_reg[3]_i_7_0 ,
    \vga_green_reg[3]_i_7_1 ,
    \vga_green_reg_reg[3] ,
    \vga_green_reg_reg[3]_0 ,
    \vga_red_reg_reg[3] ,
    \vga_blue_reg_reg[3]_0 ,
    \vga_blue_reg_reg[3]_1 ,
    game_active,
    \vga_red_reg_reg[3]_0 ,
    pixel_reg_0,
    pixel_reg_1,
    head_x_reg,
    pixel_reg_2,
    pixel_reg_3);
  output [3:0]O;
  output [0:0]\vga_red_reg[3]_i_142_0 ;
  output [3:0]\h_cntr_reg_reg[10] ;
  output [3:0]\h_cntr_reg_reg[11] ;
  output [2:0]\h_cntr_reg_reg[11]_0 ;
  output [0:0]CO;
  output [0:0]\food_x_reg[5]_P ;
  output vga_green;
  output vga_red;
  output vga_blue;
  output \h_cntr_reg_reg[0] ;
  output fontRow_reg;
  input clk_out1;
  input [11:0]out;
  input [10:0]ADDRBWRADDR;
  input [11:0]charPosition3__0_carry__1_0;
  input [0:0]S;
  input [3:0]\vga_blue_reg_reg[3]_i_5_0 ;
  input [2:0]\vga_blue_reg_reg[3] ;
  input \vga_green_reg_reg[3]_i_3_0 ;
  input \vga_green_reg_reg[3]_i_3_1 ;
  input \vga_green_reg_reg[3]_i_3_2 ;
  input \vga_green_reg[3]_i_6_0 ;
  input \vga_green_reg[3]_i_6_1 ;
  input \vga_green_reg_reg[3]_i_3_3 ;
  input \vga_green_reg_reg[3]_i_3_4 ;
  input \vga_green_reg[3]_i_7_0 ;
  input [0:0]\vga_green_reg[3]_i_7_1 ;
  input [0:0]\vga_green_reg_reg[3] ;
  input [0:0]\vga_green_reg_reg[3]_0 ;
  input \vga_red_reg_reg[3] ;
  input \vga_blue_reg_reg[3]_0 ;
  input \vga_blue_reg_reg[3]_1 ;
  input game_active;
  input \vga_red_reg_reg[3]_0 ;
  input [0:0]pixel_reg_0;
  input pixel_reg_1;
  input [8:0]head_x_reg;
  input [0:0]pixel_reg_2;
  input [0:0]pixel_reg_3;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire FontRom_n_2;
  wire FontRom_n_3;
  wire FontRom_n_4;
  wire FontRom_n_6;
  wire FontRom_n_7;
  wire [3:0]O;
  wire [0:0]S;
  wire \_inferred__4/i__carry__0_n_0 ;
  wire \_inferred__4/i__carry__0_n_1 ;
  wire \_inferred__4/i__carry__0_n_2 ;
  wire \_inferred__4/i__carry__0_n_3 ;
  wire \_inferred__4/i__carry__1_n_1 ;
  wire \_inferred__4/i__carry__1_n_2 ;
  wire \_inferred__4/i__carry__1_n_3 ;
  wire \_inferred__4/i__carry_n_0 ;
  wire \_inferred__4/i__carry_n_1 ;
  wire \_inferred__4/i__carry_n_2 ;
  wire \_inferred__4/i__carry_n_3 ;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire \_inferred__5/i__carry__1_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire charPosition3__0_carry__0_i_1_n_0;
  wire charPosition3__0_carry__0_i_2_n_0;
  wire charPosition3__0_carry__0_i_3_n_0;
  wire charPosition3__0_carry__0_i_4_n_0;
  wire charPosition3__0_carry__0_n_0;
  wire charPosition3__0_carry__0_n_1;
  wire charPosition3__0_carry__0_n_2;
  wire charPosition3__0_carry__0_n_3;
  wire charPosition3__0_carry__0_n_4;
  wire charPosition3__0_carry__0_n_5;
  wire [11:0]charPosition3__0_carry__1_0;
  wire charPosition3__0_carry__1_i_1_n_0;
  wire charPosition3__0_carry__1_n_2;
  wire charPosition3__0_carry__1_n_3;
  wire charPosition3__0_carry__1_n_5;
  wire charPosition3__0_carry__1_n_6;
  wire charPosition3__0_carry__1_n_7;
  wire charPosition3__0_carry__2_i_1_n_0;
  wire charPosition3__0_carry__2_i_2_n_0;
  wire charPosition3__0_carry__2_i_3_n_0;
  wire charPosition3__0_carry__2_n_0;
  wire charPosition3__0_carry__2_n_1;
  wire charPosition3__0_carry__2_n_2;
  wire charPosition3__0_carry__2_n_3;
  wire charPosition3__0_carry__3_i_1_n_0;
  wire charPosition3__0_carry__3_i_2_n_0;
  wire charPosition3__0_carry__3_i_3_n_0;
  wire charPosition3__0_carry__3_i_4_n_0;
  wire charPosition3__0_carry__3_n_0;
  wire charPosition3__0_carry__3_n_1;
  wire charPosition3__0_carry__3_n_2;
  wire charPosition3__0_carry__3_n_3;
  wire charPosition3__0_carry__3_n_4;
  wire charPosition3__0_carry__3_n_5;
  wire charPosition3__0_carry__4_i_1_n_0;
  wire charPosition3__0_carry__4_n_0;
  wire charPosition3__0_carry__4_n_1;
  wire charPosition3__0_carry__4_n_2;
  wire charPosition3__0_carry__4_n_3;
  wire charPosition3__0_carry__4_n_4;
  wire charPosition3__0_carry__4_n_5;
  wire charPosition3__0_carry__4_n_6;
  wire charPosition3__0_carry__4_n_7;
  wire charPosition3__0_carry__5_n_2;
  wire charPosition3__0_carry__5_n_7;
  wire charPosition3__0_carry_i_1_n_0;
  wire charPosition3__0_carry_i_2_n_0;
  wire charPosition3__0_carry_i_3_n_0;
  wire charPosition3__0_carry_n_0;
  wire charPosition3__0_carry_n_1;
  wire charPosition3__0_carry_n_2;
  wire charPosition3__0_carry_n_3;
  wire charPosition3_carry__0_i_1__0_n_0;
  wire charPosition3_carry__0_n_0;
  wire charPosition3_carry__0_n_1;
  wire charPosition3_carry__0_n_2;
  wire charPosition3_carry__0_n_3;
  wire charPosition3_carry__1_i_1_n_0;
  wire charPosition3_carry__1_n_3;
  wire charPosition3_carry_i_1_n_0;
  wire charPosition3_carry_i_2__0_n_0;
  wire charPosition3_carry_i_3_n_0;
  wire charPosition3_carry_n_0;
  wire charPosition3_carry_n_1;
  wire charPosition3_carry_n_2;
  wire charPosition3_carry_n_3;
  wire charPosition3_carry_n_4;
  wire charPosition3_carry_n_5;
  wire charPosition3_carry_n_6;
  wire charPosition3_carry_n_7;
  wire clk_out1;
  wire fontAddress_carry__0_i_10_n_0;
  wire fontAddress_carry__0_i_13_n_0;
  wire fontAddress_carry__0_i_1_n_0;
  wire fontAddress_carry__0_i_2__0_n_0;
  wire fontAddress_carry__0_i_3_n_0;
  wire fontAddress_carry__0_i_4__1_n_0;
  wire fontAddress_carry__0_i_5_n_0;
  wire fontAddress_carry__0_i_6_n_0;
  wire fontAddress_carry__0_i_7_n_0;
  wire fontAddress_carry__0_i_8__1_n_0;
  wire fontAddress_carry__0_i_9_n_0;
  wire fontAddress_carry__0_n_0;
  wire fontAddress_carry__0_n_1;
  wire fontAddress_carry__0_n_2;
  wire fontAddress_carry__0_n_3;
  wire fontAddress_carry__0_n_4;
  wire fontAddress_carry__0_n_5;
  wire fontAddress_carry__0_n_6;
  wire fontAddress_carry__0_n_7;
  wire fontAddress_carry__1_n_3;
  wire fontAddress_carry__1_n_6;
  wire fontAddress_carry__1_n_7;
  wire fontAddress_carry_i_1__1_n_0;
  wire fontAddress_carry_i_2_n_0;
  wire fontAddress_carry_i_3__0_n_0;
  wire fontAddress_carry_n_0;
  wire fontAddress_carry_n_1;
  wire fontAddress_carry_n_2;
  wire fontAddress_carry_n_3;
  wire fontAddress_carry_n_4;
  wire fontAddress_carry_n_5;
  wire fontAddress_carry_n_6;
  wire fontAddress_carry_n_7;
  wire fontRow_reg;
  wire [0:0]\food_x_reg[5]_P ;
  wire game_active;
  wire \h_cntr_reg_reg[0] ;
  wire [3:0]\h_cntr_reg_reg[10] ;
  wire [3:0]\h_cntr_reg_reg[11] ;
  wire [2:0]\h_cntr_reg_reg[11]_0 ;
  wire [8:0]head_x_reg;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire [11:0]out;
  wire pixel;
  wire pixel_i_3__1_n_0;
  wire [0:0]pixel_reg_0;
  wire pixel_reg_1;
  wire [0:0]pixel_reg_2;
  wire [0:0]pixel_reg_3;
  wire pixel_reg_n_0;
  wire vga_blue;
  wire \vga_blue_reg[3]_i_100_n_0 ;
  wire \vga_blue_reg[3]_i_101_n_0 ;
  wire \vga_blue_reg[3]_i_102_n_0 ;
  wire \vga_blue_reg[3]_i_103_n_0 ;
  wire \vga_blue_reg[3]_i_53_n_0 ;
  wire \vga_blue_reg[3]_i_54_n_0 ;
  wire \vga_blue_reg[3]_i_55_n_0 ;
  wire [2:0]\vga_blue_reg_reg[3] ;
  wire \vga_blue_reg_reg[3]_0 ;
  wire \vga_blue_reg_reg[3]_1 ;
  wire \vga_blue_reg_reg[3]_i_13_n_0 ;
  wire \vga_blue_reg_reg[3]_i_13_n_1 ;
  wire \vga_blue_reg_reg[3]_i_13_n_2 ;
  wire \vga_blue_reg_reg[3]_i_13_n_3 ;
  wire \vga_blue_reg_reg[3]_i_28_n_0 ;
  wire \vga_blue_reg_reg[3]_i_28_n_1 ;
  wire \vga_blue_reg_reg[3]_i_28_n_2 ;
  wire \vga_blue_reg_reg[3]_i_28_n_3 ;
  wire [3:0]\vga_blue_reg_reg[3]_i_5_0 ;
  wire \vga_blue_reg_reg[3]_i_5_n_2 ;
  wire \vga_blue_reg_reg[3]_i_5_n_3 ;
  wire vga_green;
  wire \vga_green_reg[3]_i_11_n_0 ;
  wire \vga_green_reg[3]_i_12_n_0 ;
  wire \vga_green_reg[3]_i_13_n_0 ;
  wire \vga_green_reg[3]_i_15_n_0 ;
  wire \vga_green_reg[3]_i_16_n_0 ;
  wire \vga_green_reg[3]_i_45_n_0 ;
  wire \vga_green_reg[3]_i_46_n_0 ;
  wire \vga_green_reg[3]_i_47_n_0 ;
  wire \vga_green_reg[3]_i_5_n_0 ;
  wire \vga_green_reg[3]_i_66_n_0 ;
  wire \vga_green_reg[3]_i_67_n_0 ;
  wire \vga_green_reg[3]_i_68_n_0 ;
  wire \vga_green_reg[3]_i_69_n_0 ;
  wire \vga_green_reg[3]_i_6_0 ;
  wire \vga_green_reg[3]_i_6_1 ;
  wire \vga_green_reg[3]_i_6_n_0 ;
  wire \vga_green_reg[3]_i_7_0 ;
  wire [0:0]\vga_green_reg[3]_i_7_1 ;
  wire \vga_green_reg[3]_i_7_n_0 ;
  wire \vga_green_reg[3]_i_93_n_0 ;
  wire \vga_green_reg[3]_i_94_n_0 ;
  wire \vga_green_reg[3]_i_95_n_0 ;
  wire [0:0]\vga_green_reg_reg[3] ;
  wire [0:0]\vga_green_reg_reg[3]_0 ;
  wire \vga_green_reg_reg[3]_i_28_n_2 ;
  wire \vga_green_reg_reg[3]_i_28_n_3 ;
  wire \vga_green_reg_reg[3]_i_3_0 ;
  wire \vga_green_reg_reg[3]_i_3_1 ;
  wire \vga_green_reg_reg[3]_i_3_2 ;
  wire \vga_green_reg_reg[3]_i_3_3 ;
  wire \vga_green_reg_reg[3]_i_3_4 ;
  wire \vga_green_reg_reg[3]_i_3_n_2 ;
  wire \vga_green_reg_reg[3]_i_3_n_3 ;
  wire \vga_green_reg_reg[3]_i_44_n_0 ;
  wire \vga_green_reg_reg[3]_i_44_n_1 ;
  wire \vga_green_reg_reg[3]_i_44_n_2 ;
  wire \vga_green_reg_reg[3]_i_44_n_3 ;
  wire \vga_green_reg_reg[3]_i_65_n_0 ;
  wire \vga_green_reg_reg[3]_i_65_n_1 ;
  wire \vga_green_reg_reg[3]_i_65_n_2 ;
  wire \vga_green_reg_reg[3]_i_65_n_3 ;
  wire vga_red;
  wire [0:0]\vga_red_reg[3]_i_142_0 ;
  wire \vga_red_reg[3]_i_142_n_0 ;
  wire \vga_red_reg[3]_i_143_n_0 ;
  wire \vga_red_reg[3]_i_144_n_0 ;
  wire \vga_red_reg[3]_i_145_n_0 ;
  wire \vga_red_reg[3]_i_5_n_0 ;
  wire \vga_red_reg_reg[3] ;
  wire \vga_red_reg_reg[3]_0 ;
  wire \vga_red_reg_reg[3]_i_112_n_0 ;
  wire \vga_red_reg_reg[3]_i_112_n_1 ;
  wire \vga_red_reg_reg[3]_i_112_n_2 ;
  wire \vga_red_reg_reg[3]_i_112_n_3 ;
  wire [3:0]NLW_charPosition3__0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_charPosition3__0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_charPosition3__0_carry__5_CO_UNCONNECTED;

  Font_Rom_0 FontRom
       (.ADDRARDADDR({fontAddress_carry__1_n_6,fontAddress_carry__1_n_7,fontAddress_carry__0_n_4,fontAddress_carry__0_n_5,fontAddress_carry__0_n_6,fontAddress_carry__0_n_7,fontAddress_carry_n_4,fontAddress_carry_n_5,fontAddress_carry_n_6,fontAddress_carry_n_7,out[0]}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CO(charPosition3_carry__1_n_3),
        .DI(FontRom_n_3),
        .O({charPosition3_carry_n_4,charPosition3_carry_n_5,charPosition3_carry_n_6,charPosition3_carry_n_7}),
        .S({FontRom_n_6,FontRom_n_7}),
        .clk_out1(clk_out1),
        .fontRow_reg_0(fontRow_reg),
        .\h_cntr_reg_reg[0] (\h_cntr_reg_reg[0] ),
        .\h_cntr_reg_reg[2] (FontRom_n_2),
        .\h_cntr_reg_reg[6] (FontRom_n_4),
        .out(out[10:8]),
        .pixel(pixel),
        .pixel_reg(charPosition3__0_carry__1_0[2:0]),
        .pixel_reg_0(pixel_i_3__1_n_0),
        .pixel_reg_1(pixel_reg_0),
        .pixel_reg_2(pixel_reg_1));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__4/i__carry_n_0 ,\_inferred__4/i__carry_n_1 ,\_inferred__4/i__carry_n_2 ,\_inferred__4/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,out[3:2],\<const0> }),
        .S({out[4],i__carry_i_1__0_n_0,i__carry_i_2__1_n_0,out[1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__0 
       (.CI(\_inferred__4/i__carry_n_0 ),
        .CO({\_inferred__4/i__carry__0_n_0 ,\_inferred__4/i__carry__0_n_1 ,\_inferred__4/i__carry__0_n_2 ,\_inferred__4/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({out[8:7],\<const0> ,\<const0> }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0,out[6:5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__1 
       (.CI(\_inferred__4/i__carry__0_n_0 ),
        .CO({\_inferred__4/i__carry__1_n_1 ,\_inferred__4/i__carry__1_n_2 ,\_inferred__4/i__carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,out[11:9]}),
        .S({\<const0> ,i__carry__1_i_1__0_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,charPosition3__0_carry__1_0[5:4],\<const0> }),
        .S({charPosition3__0_carry__1_0[6],i__carry_i_1_n_0,i__carry_i_2__2_n_0,charPosition3__0_carry__1_0[3]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,charPosition3__0_carry__1_0[8],\<const0> }),
        .S({charPosition3__0_carry__1_0[10:9],i__carry__0_i_1__1_n_0,charPosition3__0_carry__1_0[7]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__1 
       (.CI(\_inferred__5/i__carry__0_n_0 ),
        .CO(\_inferred__5/i__carry__1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,charPosition3__0_carry__1_0[11]}),
        .S({\<const0> ,\<const0> ,\<const0> ,i__carry__1_i_1_n_0}));
  CARRY4 charPosition3__0_carry
       (.CI(\<const0> ),
        .CO({charPosition3__0_carry_n_0,charPosition3__0_carry_n_1,charPosition3__0_carry_n_2,charPosition3__0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({charPosition3__0_carry__1_0[6:4],\<const0> }),
        .S({charPosition3__0_carry_i_1_n_0,charPosition3__0_carry_i_2_n_0,charPosition3__0_carry_i_3_n_0,charPosition3__0_carry__1_0[3]}));
  CARRY4 charPosition3__0_carry__0
       (.CI(charPosition3__0_carry_n_0),
        .CO({charPosition3__0_carry__0_n_0,charPosition3__0_carry__0_n_1,charPosition3__0_carry__0_n_2,charPosition3__0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(charPosition3__0_carry__1_0[10:7]),
        .O({charPosition3__0_carry__0_n_4,charPosition3__0_carry__0_n_5,NLW_charPosition3__0_carry__0_O_UNCONNECTED[1:0]}),
        .S({charPosition3__0_carry__0_i_1_n_0,charPosition3__0_carry__0_i_2_n_0,charPosition3__0_carry__0_i_3_n_0,charPosition3__0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__0_i_1
       (.I0(charPosition3__0_carry__1_0[10]),
        .I1(charPosition3__0_carry__1_0[6]),
        .O(charPosition3__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__0_i_2
       (.I0(charPosition3__0_carry__1_0[9]),
        .I1(charPosition3__0_carry__1_0[5]),
        .O(charPosition3__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__0_i_3
       (.I0(charPosition3__0_carry__1_0[8]),
        .I1(charPosition3__0_carry__1_0[4]),
        .O(charPosition3__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__0_i_4
       (.I0(charPosition3__0_carry__1_0[7]),
        .I1(charPosition3__0_carry__1_0[3]),
        .O(charPosition3__0_carry__0_i_4_n_0));
  CARRY4 charPosition3__0_carry__1
       (.CI(charPosition3__0_carry__0_n_0),
        .CO({charPosition3__0_carry__1_n_2,charPosition3__0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,charPosition3__0_carry__1_0[11]}),
        .O({charPosition3__0_carry__1_n_5,charPosition3__0_carry__1_n_6,charPosition3__0_carry__1_n_7}),
        .S({\<const0> ,charPosition3__0_carry__1_0[9:8],charPosition3__0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__1_i_1
       (.I0(charPosition3__0_carry__1_0[11]),
        .I1(charPosition3__0_carry__1_0[7]),
        .O(charPosition3__0_carry__1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 charPosition3__0_carry__2
       (.CI(\<const0> ),
        .CO({charPosition3__0_carry__2_n_0,charPosition3__0_carry__2_n_1,charPosition3__0_carry__2_n_2,charPosition3__0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({charPosition3__0_carry__1_0[6:4],\<const0> }),
        .S({charPosition3__0_carry__2_i_1_n_0,charPosition3__0_carry__2_i_2_n_0,charPosition3__0_carry__2_i_3_n_0,charPosition3__0_carry__1_0[3]}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__2_i_1
       (.I0(charPosition3__0_carry__1_0[6]),
        .I1(charPosition3__0_carry__1_0[2]),
        .O(charPosition3__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__2_i_2
       (.I0(charPosition3__0_carry__1_0[5]),
        .I1(charPosition3__0_carry__1_0[1]),
        .O(charPosition3__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__2_i_3
       (.I0(charPosition3__0_carry__1_0[4]),
        .I1(charPosition3__0_carry__1_0[0]),
        .O(charPosition3__0_carry__2_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 charPosition3__0_carry__3
       (.CI(charPosition3__0_carry__2_n_0),
        .CO({charPosition3__0_carry__3_n_0,charPosition3__0_carry__3_n_1,charPosition3__0_carry__3_n_2,charPosition3__0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(charPosition3__0_carry__1_0[10:7]),
        .O({charPosition3__0_carry__3_n_4,charPosition3__0_carry__3_n_5,NLW_charPosition3__0_carry__3_O_UNCONNECTED[1:0]}),
        .S({charPosition3__0_carry__3_i_1_n_0,charPosition3__0_carry__3_i_2_n_0,charPosition3__0_carry__3_i_3_n_0,charPosition3__0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__3_i_1
       (.I0(charPosition3__0_carry__1_0[10]),
        .I1(charPosition3__0_carry__1_0[6]),
        .O(charPosition3__0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__3_i_2
       (.I0(charPosition3__0_carry__1_0[9]),
        .I1(charPosition3__0_carry__1_0[5]),
        .O(charPosition3__0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__3_i_3
       (.I0(charPosition3__0_carry__1_0[8]),
        .I1(charPosition3__0_carry__1_0[4]),
        .O(charPosition3__0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__3_i_4
       (.I0(charPosition3__0_carry__1_0[7]),
        .I1(charPosition3__0_carry__1_0[3]),
        .O(charPosition3__0_carry__3_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 charPosition3__0_carry__4
       (.CI(charPosition3__0_carry__3_n_0),
        .CO({charPosition3__0_carry__4_n_0,charPosition3__0_carry__4_n_1,charPosition3__0_carry__4_n_2,charPosition3__0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,charPosition3__0_carry__1_0[11]}),
        .O({charPosition3__0_carry__4_n_4,charPosition3__0_carry__4_n_5,charPosition3__0_carry__4_n_6,charPosition3__0_carry__4_n_7}),
        .S({charPosition3__0_carry__1_0[10:8],charPosition3__0_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry__4_i_1
       (.I0(charPosition3__0_carry__1_0[11]),
        .I1(charPosition3__0_carry__1_0[7]),
        .O(charPosition3__0_carry__4_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 charPosition3__0_carry__5
       (.CI(charPosition3__0_carry__4_n_0),
        .CO({charPosition3__0_carry__5_n_2,NLW_charPosition3__0_carry__5_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(charPosition3__0_carry__5_n_7),
        .S({\<const0> ,\<const0> ,\<const1> ,charPosition3__0_carry__1_0[11]}));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry_i_1
       (.I0(charPosition3__0_carry__1_0[6]),
        .I1(charPosition3__0_carry__1_0[2]),
        .O(charPosition3__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry_i_2
       (.I0(charPosition3__0_carry__1_0[5]),
        .I1(charPosition3__0_carry__1_0[1]),
        .O(charPosition3__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    charPosition3__0_carry_i_3
       (.I0(charPosition3__0_carry__1_0[4]),
        .I1(charPosition3__0_carry__1_0[0]),
        .O(charPosition3__0_carry_i_3_n_0));
  CARRY4 charPosition3_carry
       (.CI(\<const0> ),
        .CO({charPosition3_carry_n_0,charPosition3_carry_n_1,charPosition3_carry_n_2,charPosition3_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({charPosition3__0_carry__1_0[6:4],\<const0> }),
        .O({charPosition3_carry_n_4,charPosition3_carry_n_5,charPosition3_carry_n_6,charPosition3_carry_n_7}),
        .S({charPosition3_carry_i_1_n_0,charPosition3_carry_i_2__0_n_0,charPosition3_carry_i_3_n_0,charPosition3__0_carry__1_0[3]}));
  CARRY4 charPosition3_carry__0
       (.CI(charPosition3_carry_n_0),
        .CO({charPosition3_carry__0_n_0,charPosition3_carry__0_n_1,charPosition3_carry__0_n_2,charPosition3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,charPosition3__0_carry__1_0[8],\<const0> }),
        .S({charPosition3__0_carry__1_0[10:9],charPosition3_carry__0_i_1__0_n_0,charPosition3__0_carry__1_0[7]}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__0_i_1__0
       (.I0(charPosition3__0_carry__1_0[8]),
        .O(charPosition3_carry__0_i_1__0_n_0));
  CARRY4 charPosition3_carry__1
       (.CI(charPosition3_carry__0_n_0),
        .CO(charPosition3_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,charPosition3__0_carry__1_0[11]}),
        .S({\<const0> ,\<const0> ,\<const0> ,charPosition3_carry__1_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__1_i_1
       (.I0(charPosition3__0_carry__1_0[11]),
        .O(charPosition3_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_1
       (.I0(charPosition3__0_carry__1_0[6]),
        .O(charPosition3_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_2__0
       (.I0(charPosition3__0_carry__1_0[5]),
        .O(charPosition3_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_3
       (.I0(charPosition3__0_carry__1_0[4]),
        .O(charPosition3_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry
       (.CI(\<const0> ),
        .CO({fontAddress_carry_n_0,fontAddress_carry_n_1,fontAddress_carry_n_2,fontAddress_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({out[4:2],\<const0> }),
        .O({fontAddress_carry_n_4,fontAddress_carry_n_5,fontAddress_carry_n_6,fontAddress_carry_n_7}),
        .S({fontAddress_carry_i_1__1_n_0,fontAddress_carry_i_2_n_0,fontAddress_carry_i_3__0_n_0,out[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__0
       (.CI(fontAddress_carry_n_0),
        .CO({fontAddress_carry__0_n_0,fontAddress_carry__0_n_1,fontAddress_carry__0_n_2,fontAddress_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({fontAddress_carry__0_i_1_n_0,fontAddress_carry__0_i_2__0_n_0,fontAddress_carry__0_i_3_n_0,fontAddress_carry__0_i_4__1_n_0}),
        .O({fontAddress_carry__0_n_4,fontAddress_carry__0_n_5,fontAddress_carry__0_n_6,fontAddress_carry__0_n_7}),
        .S({fontAddress_carry__0_i_5_n_0,fontAddress_carry__0_i_6_n_0,fontAddress_carry__0_i_7_n_0,fontAddress_carry__0_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    fontAddress_carry__0_i_1
       (.I0(out[7]),
        .I1(fontAddress_carry__0_i_9_n_0),
        .O(fontAddress_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFFA0E8AA2A)) 
    fontAddress_carry__0_i_10
       (.I0(charPosition3_carry_n_5),
        .I1(FontRom_n_2),
        .I2(charPosition3_carry_n_7),
        .I3(charPosition3_carry__1_n_3),
        .I4(charPosition3_carry_n_6),
        .I5(charPosition3_carry_n_4),
        .O(fontAddress_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h202020001C1C1C0F)) 
    fontAddress_carry__0_i_13
       (.I0(charPosition3_carry_n_6),
        .I1(charPosition3_carry__1_n_3),
        .I2(charPosition3_carry_n_7),
        .I3(charPosition3__0_carry__1_0[2]),
        .I4(\h_cntr_reg_reg[0] ),
        .I5(charPosition3_carry_n_5),
        .O(fontAddress_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fontAddress_carry__0_i_2__0
       (.I0(out[7]),
        .I1(fontAddress_carry__0_i_9_n_0),
        .O(fontAddress_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fontAddress_carry__0_i_3
       (.I0(out[5]),
        .I1(fontAddress_carry__0_i_10_n_0),
        .O(fontAddress_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0191010113011313)) 
    fontAddress_carry__0_i_4__1
       (.I0(charPosition3_carry_n_5),
        .I1(charPosition3_carry_n_4),
        .I2(charPosition3_carry_n_6),
        .I3(charPosition3_carry__1_n_3),
        .I4(FontRom_n_2),
        .I5(charPosition3_carry_n_7),
        .O(fontAddress_carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    fontAddress_carry__0_i_5
       (.I0(fontAddress_carry__0_i_9_n_0),
        .I1(out[7]),
        .I2(FontRom_n_4),
        .I3(out[8]),
        .O(fontAddress_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h99996999)) 
    fontAddress_carry__0_i_6
       (.I0(fontAddress_carry__0_i_9_n_0),
        .I1(out[7]),
        .I2(out[6]),
        .I3(fontAddress_carry__0_i_4__1_n_0),
        .I4(fontAddress_carry__0_i_13_n_0),
        .O(fontAddress_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hBB4B44B4)) 
    fontAddress_carry__0_i_7
       (.I0(fontAddress_carry__0_i_10_n_0),
        .I1(out[5]),
        .I2(fontAddress_carry__0_i_4__1_n_0),
        .I3(fontAddress_carry__0_i_13_n_0),
        .I4(out[6]),
        .O(fontAddress_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    fontAddress_carry__0_i_8__1
       (.I0(fontAddress_carry__0_i_4__1_n_0),
        .I1(fontAddress_carry__0_i_10_n_0),
        .I2(out[5]),
        .O(fontAddress_carry__0_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h0000000018182118)) 
    fontAddress_carry__0_i_9
       (.I0(charPosition3_carry_n_5),
        .I1(charPosition3_carry_n_6),
        .I2(charPosition3_carry_n_7),
        .I3(FontRom_n_2),
        .I4(charPosition3_carry__1_n_3),
        .I5(charPosition3_carry_n_4),
        .O(fontAddress_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__1
       (.CI(fontAddress_carry__0_n_0),
        .CO(fontAddress_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,FontRom_n_3}),
        .O({fontAddress_carry__1_n_6,fontAddress_carry__1_n_7}),
        .S({\<const0> ,\<const0> ,FontRom_n_6,FontRom_n_7}));
  LUT2 #(
    .INIT(4'h9)) 
    fontAddress_carry_i_1__1
       (.I0(fontAddress_carry__0_i_4__1_n_0),
        .I1(out[4]),
        .O(fontAddress_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fontAddress_carry_i_2
       (.I0(out[3]),
        .O(fontAddress_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fontAddress_carry_i_3__0
       (.I0(out[2]),
        .O(fontAddress_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(out[8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__1
       (.I0(charPosition3__0_carry__1_0[8]),
        .O(i__carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(out[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(charPosition3__0_carry__1_0[11]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(out[11]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(out[10]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(out[9]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(charPosition3__0_carry__1_0[5]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(out[3]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(out[2]),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__2
       (.I0(charPosition3__0_carry__1_0[4]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    pixel_i_3__1
       (.I0(\_inferred__4/i__carry__1_n_1 ),
        .I1(\_inferred__5/i__carry__1_n_3 ),
        .I2(pixel_reg_2),
        .I3(pixel_reg_3),
        .O(pixel_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(pixel),
        .Q(pixel_reg_n_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h8880888088888880)) 
    \vga_blue_reg[3]_i_1 
       (.I0(\vga_green_reg_reg[3] ),
        .I1(\vga_green_reg_reg[3]_0 ),
        .I2(pixel_reg_n_0),
        .I3(\vga_blue_reg_reg[3]_0 ),
        .I4(\vga_blue_reg_reg[3]_1 ),
        .I5(game_active),
        .O(vga_blue));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \vga_blue_reg[3]_i_100 
       (.I0(charPosition3__0_carry__4_n_4),
        .I1(charPosition3__0_carry__4_n_5),
        .I2(charPosition3__0_carry__4_n_7),
        .I3(\vga_green_reg[3]_i_16_n_0 ),
        .I4(charPosition3__0_carry__3_n_4),
        .I5(charPosition3__0_carry__4_n_6),
        .O(\vga_blue_reg[3]_i_100_n_0 ));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \vga_blue_reg[3]_i_101 
       (.I0(charPosition3__0_carry__4_n_5),
        .I1(charPosition3__0_carry__4_n_6),
        .I2(charPosition3__0_carry__3_n_4),
        .I3(\vga_green_reg[3]_i_16_n_0 ),
        .I4(charPosition3__0_carry__4_n_7),
        .O(\vga_blue_reg[3]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \vga_blue_reg[3]_i_102 
       (.I0(charPosition3__0_carry__4_n_6),
        .I1(charPosition3__0_carry__4_n_7),
        .I2(\vga_green_reg[3]_i_16_n_0 ),
        .I3(charPosition3__0_carry__3_n_4),
        .O(\vga_blue_reg[3]_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h55A6AA59)) 
    \vga_blue_reg[3]_i_103 
       (.I0(head_x_reg[0]),
        .I1(\h_cntr_reg_reg[11]_0 [2]),
        .I2(charPosition3__0_carry__1_0[11]),
        .I3(\vga_green_reg[3]_i_7_1 ),
        .I4(charPosition3__0_carry__3_n_5),
        .O(\vga_blue_reg[3]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0000000006909009)) 
    \vga_blue_reg[3]_i_53 
       (.I0(charPosition3__0_carry__5_n_2),
        .I1(head_x_reg[7]),
        .I2(head_x_reg[6]),
        .I3(\vga_blue_reg[3]_i_100_n_0 ),
        .I4(charPosition3__0_carry__5_n_7),
        .I5(head_x_reg[8]),
        .O(\vga_blue_reg[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vga_blue_reg[3]_i_54 
       (.I0(\vga_green_reg[3]_i_13_n_0 ),
        .I1(head_x_reg[5]),
        .I2(head_x_reg[4]),
        .I3(\vga_blue_reg[3]_i_101_n_0 ),
        .I4(head_x_reg[3]),
        .I5(\vga_blue_reg[3]_i_102_n_0 ),
        .O(\vga_blue_reg[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4010014004011004)) 
    \vga_blue_reg[3]_i_55 
       (.I0(\vga_blue_reg[3]_i_103_n_0 ),
        .I1(head_x_reg[1]),
        .I2(charPosition3__0_carry__4_n_7),
        .I3(charPosition3__0_carry__3_n_4),
        .I4(\vga_green_reg[3]_i_16_n_0 ),
        .I5(head_x_reg[2]),
        .O(\vga_blue_reg[3]_i_55_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_13 
       (.CI(\vga_blue_reg_reg[3]_i_28_n_0 ),
        .CO({\vga_blue_reg_reg[3]_i_13_n_0 ,\vga_blue_reg_reg[3]_i_13_n_1 ,\vga_blue_reg_reg[3]_i_13_n_2 ,\vga_blue_reg_reg[3]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S(\vga_blue_reg_reg[3]_i_5_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_28 
       (.CI(\<const0> ),
        .CO({\vga_blue_reg_reg[3]_i_28_n_0 ,\vga_blue_reg_reg[3]_i_28_n_1 ,\vga_blue_reg_reg[3]_i_28_n_2 ,\vga_blue_reg_reg[3]_i_28_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({S,\vga_blue_reg[3]_i_53_n_0 ,\vga_blue_reg[3]_i_54_n_0 ,\vga_blue_reg[3]_i_55_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_blue_reg_reg[3]_i_5 
       (.CI(\vga_blue_reg_reg[3]_i_13_n_0 ),
        .CO({CO,\vga_blue_reg_reg[3]_i_5_n_2 ,\vga_blue_reg_reg[3]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\vga_blue_reg_reg[3] }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \vga_green_reg[3]_i_1 
       (.I0(\vga_green_reg_reg[3] ),
        .I1(\vga_green_reg_reg[3]_0 ),
        .I2(\vga_red_reg[3]_i_5_n_0 ),
        .O(vga_green));
  LUT6 #(
    .INIT(64'hFF5DFFFFFFFFFFFF)) 
    \vga_green_reg[3]_i_11 
       (.I0(charPosition3__0_carry__3_n_4),
        .I1(\h_cntr_reg_reg[11]_0 [2]),
        .I2(charPosition3__0_carry__1_0[11]),
        .I3(\vga_green_reg[3]_i_7_1 ),
        .I4(charPosition3__0_carry__3_n_5),
        .I5(charPosition3__0_carry__4_n_7),
        .O(\vga_green_reg[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h84182142)) 
    \vga_green_reg[3]_i_12 
       (.I0(\vga_green_reg[3]_i_6_0 ),
        .I1(charPosition3__0_carry__4_n_5),
        .I2(charPosition3__0_carry__4_n_6),
        .I3(\vga_green_reg[3]_i_11_n_0 ),
        .I4(\vga_green_reg[3]_i_6_1 ),
        .O(\vga_green_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \vga_green_reg[3]_i_13 
       (.I0(charPosition3__0_carry__4_n_4),
        .I1(charPosition3__0_carry__4_n_5),
        .I2(charPosition3__0_carry__4_n_7),
        .I3(\vga_green_reg[3]_i_16_n_0 ),
        .I4(charPosition3__0_carry__3_n_4),
        .I5(charPosition3__0_carry__4_n_6),
        .O(\vga_green_reg[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h55A6AA59)) 
    \vga_green_reg[3]_i_15 
       (.I0(\vga_green_reg[3]_i_7_0 ),
        .I1(\h_cntr_reg_reg[11]_0 [2]),
        .I2(charPosition3__0_carry__1_0[11]),
        .I3(\vga_green_reg[3]_i_7_1 ),
        .I4(charPosition3__0_carry__3_n_5),
        .O(\vga_green_reg[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \vga_green_reg[3]_i_16 
       (.I0(\h_cntr_reg_reg[11]_0 [2]),
        .I1(charPosition3__0_carry__1_0[11]),
        .I2(\vga_green_reg[3]_i_7_1 ),
        .I3(charPosition3__0_carry__3_n_5),
        .O(\vga_green_reg[3]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_45 
       (.I0(charPosition3__0_carry__5_n_7),
        .O(\vga_green_reg[3]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_46 
       (.I0(charPosition3__0_carry__4_n_4),
        .O(\vga_green_reg[3]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_47 
       (.I0(charPosition3__0_carry__4_n_5),
        .O(\vga_green_reg[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0080000055155555)) 
    \vga_green_reg[3]_i_5 
       (.I0(charPosition3__0_carry__5_n_2),
        .I1(charPosition3__0_carry__4_n_4),
        .I2(charPosition3__0_carry__4_n_5),
        .I3(\vga_green_reg[3]_i_11_n_0 ),
        .I4(charPosition3__0_carry__4_n_6),
        .I5(charPosition3__0_carry__5_n_7),
        .O(\vga_green_reg[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h82888222)) 
    \vga_green_reg[3]_i_6 
       (.I0(\vga_green_reg[3]_i_12_n_0 ),
        .I1(\vga_green_reg[3]_i_13_n_0 ),
        .I2(\vga_green_reg_reg[3]_i_3_0 ),
        .I3(\vga_green_reg_reg[3]_i_3_1 ),
        .I4(\vga_green_reg_reg[3]_i_3_2 ),
        .O(\vga_green_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_66 
       (.I0(charPosition3__0_carry__4_n_6),
        .I1(charPosition3__0_carry__5_n_2),
        .O(\vga_green_reg[3]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_67 
       (.I0(charPosition3__0_carry__4_n_7),
        .I1(charPosition3__0_carry__5_n_7),
        .O(\vga_green_reg[3]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_68 
       (.I0(charPosition3__0_carry__3_n_4),
        .I1(charPosition3__0_carry__4_n_4),
        .O(\vga_green_reg[3]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_green_reg[3]_i_69 
       (.I0(charPosition3__0_carry__3_n_5),
        .I1(charPosition3__0_carry__4_n_5),
        .O(\vga_green_reg[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h2010012002011002)) 
    \vga_green_reg[3]_i_7 
       (.I0(\vga_green_reg_reg[3]_i_3_3 ),
        .I1(\vga_green_reg[3]_i_15_n_0 ),
        .I2(charPosition3__0_carry__4_n_7),
        .I3(charPosition3__0_carry__3_n_4),
        .I4(\vga_green_reg[3]_i_16_n_0 ),
        .I5(\vga_green_reg_reg[3]_i_3_4 ),
        .O(\vga_green_reg[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_93 
       (.I0(charPosition3__0_carry__4_n_6),
        .O(\vga_green_reg[3]_i_93_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_94 
       (.I0(charPosition3__0_carry__4_n_7),
        .O(\vga_green_reg[3]_i_94_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_green_reg[3]_i_95 
       (.I0(charPosition3__0_carry__3_n_4),
        .O(\vga_green_reg[3]_i_95_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_28 
       (.CI(\vga_green_reg_reg[3]_i_44_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_28_n_2 ,\vga_green_reg_reg[3]_i_28_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,charPosition3__0_carry__4_n_4,charPosition3__0_carry__4_n_5}),
        .O(\h_cntr_reg_reg[11]_0 ),
        .S({\<const0> ,\vga_green_reg[3]_i_45_n_0 ,\vga_green_reg[3]_i_46_n_0 ,\vga_green_reg[3]_i_47_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\food_x_reg[5]_P ,\vga_green_reg_reg[3]_i_3_n_2 ,\vga_green_reg_reg[3]_i_3_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\vga_green_reg[3]_i_5_n_0 ,\vga_green_reg[3]_i_6_n_0 ,\vga_green_reg[3]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_44 
       (.CI(\vga_green_reg_reg[3]_i_65_n_0 ),
        .CO({\vga_green_reg_reg[3]_i_44_n_0 ,\vga_green_reg_reg[3]_i_44_n_1 ,\vga_green_reg_reg[3]_i_44_n_2 ,\vga_green_reg_reg[3]_i_44_n_3 }),
        .CYINIT(\<const0> ),
        .DI({charPosition3__0_carry__4_n_6,charPosition3__0_carry__4_n_7,charPosition3__0_carry__3_n_4,charPosition3__0_carry__3_n_5}),
        .O(\h_cntr_reg_reg[11] ),
        .S({\vga_green_reg[3]_i_66_n_0 ,\vga_green_reg[3]_i_67_n_0 ,\vga_green_reg[3]_i_68_n_0 ,\vga_green_reg[3]_i_69_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \vga_green_reg_reg[3]_i_65 
       (.CI(\<const0> ),
        .CO({\vga_green_reg_reg[3]_i_65_n_0 ,\vga_green_reg_reg[3]_i_65_n_1 ,\vga_green_reg_reg[3]_i_65_n_2 ,\vga_green_reg_reg[3]_i_65_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O(\h_cntr_reg_reg[10] ),
        .S({\vga_green_reg[3]_i_93_n_0 ,\vga_green_reg[3]_i_94_n_0 ,\vga_green_reg[3]_i_95_n_0 ,charPosition3__0_carry__3_n_5}));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \vga_red_reg[3]_i_1 
       (.I0(\vga_green_reg_reg[3] ),
        .I1(\vga_green_reg_reg[3]_0 ),
        .I2(\vga_red_reg[3]_i_5_n_0 ),
        .I3(\vga_red_reg_reg[3] ),
        .O(vga_red));
  LUT2 #(
    .INIT(4'h9)) 
    \vga_red_reg[3]_i_142 
       (.I0(charPosition3__0_carry__0_n_5),
        .I1(charPosition3__0_carry__1_n_5),
        .O(\vga_red_reg[3]_i_142_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_143 
       (.I0(charPosition3__0_carry__1_n_6),
        .O(\vga_red_reg[3]_i_143_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_144 
       (.I0(charPosition3__0_carry__1_n_7),
        .O(\vga_red_reg[3]_i_144_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_145 
       (.I0(charPosition3__0_carry__0_n_4),
        .O(\vga_red_reg[3]_i_145_n_0 ));
  LUT5 #(
    .INIT(32'h00001101)) 
    \vga_red_reg[3]_i_5 
       (.I0(pixel_reg_n_0),
        .I1(\vga_blue_reg_reg[3]_0 ),
        .I2(\vga_blue_reg_reg[3]_1 ),
        .I3(game_active),
        .I4(\vga_red_reg_reg[3]_0 ),
        .O(\vga_red_reg[3]_i_5_n_0 ));
  CARRY4 \vga_red_reg_reg[3]_i_111 
       (.CI(\vga_red_reg_reg[3]_i_112_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\vga_red_reg[3]_i_142_0 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_142_n_0 }));
  CARRY4 \vga_red_reg_reg[3]_i_112 
       (.CI(\<const0> ),
        .CO({\vga_red_reg_reg[3]_i_112_n_0 ,\vga_red_reg_reg[3]_i_112_n_1 ,\vga_red_reg_reg[3]_i_112_n_2 ,\vga_red_reg_reg[3]_i_112_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O(O),
        .S({\vga_red_reg[3]_i_143_n_0 ,\vga_red_reg[3]_i_144_n_0 ,\vga_red_reg[3]_i_145_n_0 ,charPosition3__0_carry__0_n_5}));
endmodule

(* ORIG_REF_NAME = "Pixel_On_Text2" *) 
module Pixel_On_Text2__parameterized1
   (pixel_reg_0,
    \h_cntr_reg_reg[5] ,
    ADDRBWRADDR,
    \v_cntr_reg_reg[11] ,
    pixel_reg_1,
    clk_out1,
    out,
    pixel3_carry__0_0,
    fontAddress_carry__0_i_5__1_0);
  output pixel_reg_0;
  output [0:0]\h_cntr_reg_reg[5] ;
  output [10:0]ADDRBWRADDR;
  output \v_cntr_reg_reg[11] ;
  input pixel_reg_1;
  input clk_out1;
  input [11:0]out;
  input [11:0]pixel3_carry__0_0;
  input fontAddress_carry__0_i_5__1_0;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]ADDRBWRADDR;
  wire \_inferred__4/i__carry__0_n_0 ;
  wire \_inferred__4/i__carry__0_n_1 ;
  wire \_inferred__4/i__carry__0_n_2 ;
  wire \_inferred__4/i__carry__0_n_3 ;
  wire \_inferred__4/i__carry__1_n_0 ;
  wire \_inferred__4/i__carry__1_n_1 ;
  wire \_inferred__4/i__carry__1_n_2 ;
  wire \_inferred__4/i__carry__1_n_3 ;
  wire \_inferred__4/i__carry_n_0 ;
  wire \_inferred__4/i__carry_n_1 ;
  wire \_inferred__4/i__carry_n_2 ;
  wire \_inferred__4/i__carry_n_3 ;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire charPosition3_carry__0_i_1__1_n_0;
  wire charPosition3_carry__0_i_2_n_0;
  wire charPosition3_carry__0_n_0;
  wire charPosition3_carry__0_n_1;
  wire charPosition3_carry__0_n_2;
  wire charPosition3_carry__0_n_3;
  wire charPosition3_carry__0_n_7;
  wire charPosition3_carry__1_i_1__0_n_0;
  wire charPosition3_carry__1_n_2;
  wire charPosition3_carry__1_n_3;
  wire charPosition3_carry_i_1__0_n_0;
  wire charPosition3_carry_i_2__1_n_0;
  wire charPosition3_carry_i_3__0_n_0;
  wire charPosition3_carry_n_0;
  wire charPosition3_carry_n_1;
  wire charPosition3_carry_n_2;
  wire charPosition3_carry_n_3;
  wire charPosition3_carry_n_4;
  wire charPosition3_carry_n_5;
  wire charPosition3_carry_n_6;
  wire clk_out1;
  wire fontAddress_carry__0_i_10__0_n_0;
  wire fontAddress_carry__0_i_11__0_n_0;
  wire fontAddress_carry__0_i_12_n_0;
  wire fontAddress_carry__0_i_13__0_n_0;
  wire fontAddress_carry__0_i_14_n_0;
  wire fontAddress_carry__0_i_15_n_0;
  wire fontAddress_carry__0_i_16_n_0;
  wire fontAddress_carry__0_i_17_n_0;
  wire fontAddress_carry__0_i_1__1_n_0;
  wire fontAddress_carry__0_i_2_n_0;
  wire fontAddress_carry__0_i_3__0_n_0;
  wire fontAddress_carry__0_i_4_n_0;
  wire fontAddress_carry__0_i_5__1_0;
  wire fontAddress_carry__0_i_5__1_n_0;
  wire fontAddress_carry__0_i_6__0_n_0;
  wire fontAddress_carry__0_i_7__0_n_0;
  wire fontAddress_carry__0_i_8_n_0;
  wire fontAddress_carry__0_i_9__0_n_0;
  wire fontAddress_carry__0_n_0;
  wire fontAddress_carry__0_n_1;
  wire fontAddress_carry__0_n_2;
  wire fontAddress_carry__0_n_3;
  wire fontAddress_carry__1_i_1__0_n_0;
  wire fontAddress_carry__1_i_2__1_n_0;
  wire fontAddress_carry__1_i_3__1_n_0;
  wire fontAddress_carry__1_i_4__1_n_0;
  wire fontAddress_carry__1_i_5__1_n_0;
  wire fontAddress_carry__1_i_6_n_0;
  wire fontAddress_carry__1_i_7_n_0;
  wire fontAddress_carry__1_i_8_n_0;
  wire fontAddress_carry__1_n_2;
  wire fontAddress_carry__1_n_3;
  wire fontAddress_carry_i_1_n_0;
  wire fontAddress_carry_i_2__0_n_0;
  wire fontAddress_carry_n_0;
  wire fontAddress_carry_n_1;
  wire fontAddress_carry_n_2;
  wire fontAddress_carry_n_3;
  wire [0:0]\h_cntr_reg_reg[5] ;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__1_i_1__3_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__4_n_0;
  wire [11:0]out;
  wire [11:0]pixel3_carry__0_0;
  wire pixel3_carry__0_i_1__0_n_0;
  wire pixel3_carry__0_i_2__0_n_0;
  wire pixel3_carry__0_i_3__0_n_0;
  wire pixel3_carry__0_i_4__0_n_0;
  wire pixel3_carry__0_n_2;
  wire pixel3_carry__0_n_3;
  wire pixel3_carry_i_1__0_n_0;
  wire pixel3_carry_i_2__0_n_0;
  wire pixel3_carry_i_3_n_0;
  wire pixel3_carry_i_4_n_0;
  wire pixel3_carry_i_5__0_n_0;
  wire pixel3_carry_i_6_n_0;
  wire pixel3_carry_n_0;
  wire pixel3_carry_n_1;
  wire pixel3_carry_n_2;
  wire pixel3_carry_n_3;
  wire pixel_i_10_n_0;
  wire pixel_i_11_n_0;
  wire pixel_i_12_n_0;
  wire pixel_i_13__1_n_0;
  wire pixel_i_14_n_0;
  wire pixel_i_15_n_0;
  wire pixel_i_16__0_n_0;
  wire pixel_i_17_n_0;
  wire pixel_i_8__1_n_0;
  wire pixel_i_9__1_n_0;
  wire pixel_reg_0;
  wire pixel_reg_1;
  wire pixel_reg_i_6__0_n_2;
  wire pixel_reg_i_6__0_n_3;
  wire pixel_reg_i_7_n_0;
  wire pixel_reg_i_7_n_1;
  wire pixel_reg_i_7_n_2;
  wire pixel_reg_i_7_n_3;
  wire \v_cntr_reg_reg[11] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__4/i__carry_n_0 ,\_inferred__4/i__carry_n_1 ,\_inferred__4/i__carry_n_2 ,\_inferred__4/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({pixel3_carry__0_0[3],\<const0> ,pixel3_carry__0_0[1],\<const0> }),
        .S({i__carry_i_1__4_n_0,pixel3_carry__0_0[2],i__carry_i_2__0_n_0,pixel3_carry__0_0[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__0 
       (.CI(\_inferred__4/i__carry_n_0 ),
        .CO({\_inferred__4/i__carry__0_n_0 ,\_inferred__4/i__carry__0_n_1 ,\_inferred__4/i__carry__0_n_2 ,\_inferred__4/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,pixel3_carry__0_0[6],\<const0> ,pixel3_carry__0_0[4]}),
        .S({pixel3_carry__0_0[7],i__carry__0_i_1_n_0,pixel3_carry__0_0[5],i__carry__0_i_2__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__1 
       (.CI(\_inferred__4/i__carry__0_n_0 ),
        .CO({\_inferred__4/i__carry__1_n_0 ,\_inferred__4/i__carry__1_n_1 ,\_inferred__4/i__carry__1_n_2 ,\_inferred__4/i__carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(pixel3_carry__0_0[11:8]),
        .S({i__carry__1_i_1__3_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({out[7],\<const0> ,out[5],\<const0> }),
        .S({i__carry_i_1__1_n_0,out[6],i__carry_i_2__4_n_0,out[4]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({out[11],\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry__0_i_1__4_n_0,out[10:8]}));
  CARRY4 charPosition3_carry
       (.CI(\<const0> ),
        .CO({charPosition3_carry_n_0,charPosition3_carry_n_1,charPosition3_carry_n_2,charPosition3_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({out[5:3],\<const0> }),
        .O({charPosition3_carry_n_4,charPosition3_carry_n_5,charPosition3_carry_n_6,\h_cntr_reg_reg[5] }),
        .S({charPosition3_carry_i_1__0_n_0,charPosition3_carry_i_2__1_n_0,charPosition3_carry_i_3__0_n_0,out[2]}));
  CARRY4 charPosition3_carry__0
       (.CI(charPosition3_carry_n_0),
        .CO({charPosition3_carry__0_n_0,charPosition3_carry__0_n_1,charPosition3_carry__0_n_2,charPosition3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,out[7:6]}),
        .O(charPosition3_carry__0_n_7),
        .S({out[9:8],charPosition3_carry__0_i_1__1_n_0,charPosition3_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__0_i_1__1
       (.I0(out[7]),
        .O(charPosition3_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__0_i_2
       (.I0(out[6]),
        .O(charPosition3_carry__0_i_2_n_0));
  CARRY4 charPosition3_carry__1
       (.CI(charPosition3_carry__0_n_0),
        .CO({charPosition3_carry__1_n_2,charPosition3_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,out[11],\<const0> }),
        .S({\<const0> ,\<const0> ,charPosition3_carry__1_i_1__0_n_0,out[10]}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__1_i_1__0
       (.I0(out[11]),
        .O(charPosition3_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_1__0
       (.I0(out[5]),
        .O(charPosition3_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_2__1
       (.I0(out[4]),
        .O(charPosition3_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_3__0
       (.I0(out[3]),
        .O(charPosition3_carry_i_3__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry
       (.CI(\<const0> ),
        .CO({fontAddress_carry_n_0,fontAddress_carry_n_1,fontAddress_carry_n_2,fontAddress_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({pixel3_carry__0_0[3],\<const0> ,pixel3_carry__0_0[1],\<const0> }),
        .O(ADDRBWRADDR[3:0]),
        .S({fontAddress_carry_i_1_n_0,pixel3_carry__0_0[2],fontAddress_carry_i_2__0_n_0,pixel3_carry__0_0[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__0
       (.CI(fontAddress_carry_n_0),
        .CO({fontAddress_carry__0_n_0,fontAddress_carry__0_n_1,fontAddress_carry__0_n_2,fontAddress_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({fontAddress_carry__0_i_1__1_n_0,fontAddress_carry__0_i_2_n_0,fontAddress_carry__0_i_3__0_n_0,pixel3_carry__0_0[4]}),
        .O(ADDRBWRADDR[7:4]),
        .S({fontAddress_carry__0_i_4_n_0,fontAddress_carry__0_i_5__1_n_0,fontAddress_carry__0_i_6__0_n_0,fontAddress_carry__0_i_7__0_n_0}));
  LUT6 #(
    .INIT(64'hBBA8AA296BBA8AA2)) 
    fontAddress_carry__0_i_10__0
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry_n_5),
        .I2(fontAddress_carry__0_i_9__0_n_0),
        .I3(charPosition3_carry_n_6),
        .I4(charPosition3_carry_n_4),
        .I5(charPosition3_carry__1_n_2),
        .O(fontAddress_carry__0_i_10__0_n_0));
  LUT6 #(
    .INIT(64'h4FFFFFFBB0000004)) 
    fontAddress_carry__0_i_11__0
       (.I0(charPosition3_carry_n_6),
        .I1(charPosition3_carry__1_n_2),
        .I2(charPosition3_carry_n_4),
        .I3(fontAddress_carry__0_i_17_n_0),
        .I4(charPosition3_carry_n_5),
        .I5(charPosition3_carry__0_n_7),
        .O(fontAddress_carry__0_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    fontAddress_carry__0_i_12
       (.I0(charPosition3_carry_n_5),
        .I1(charPosition3_carry__1_n_2),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\h_cntr_reg_reg[5] ),
        .I5(charPosition3_carry_n_6),
        .O(fontAddress_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAA5556)) 
    fontAddress_carry__0_i_13__0
       (.I0(charPosition3_carry_n_6),
        .I1(\h_cntr_reg_reg[5] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(charPosition3_carry__1_n_2),
        .O(fontAddress_carry__0_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h5555DDDFAAAA2220)) 
    fontAddress_carry__0_i_14
       (.I0(charPosition3_carry_n_5),
        .I1(charPosition3_carry__1_n_2),
        .I2(fontAddress_carry__0_i_5__1_0),
        .I3(\h_cntr_reg_reg[5] ),
        .I4(charPosition3_carry_n_6),
        .I5(charPosition3_carry_n_4),
        .O(fontAddress_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h55550001AAAAFFFE)) 
    fontAddress_carry__0_i_15
       (.I0(charPosition3_carry_n_6),
        .I1(\h_cntr_reg_reg[5] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(charPosition3_carry__1_n_2),
        .I5(charPosition3_carry_n_5),
        .O(fontAddress_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0404566655040456)) 
    fontAddress_carry__0_i_16
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry_n_4),
        .I2(charPosition3_carry_n_5),
        .I3(fontAddress_carry__0_i_9__0_n_0),
        .I4(charPosition3_carry_n_6),
        .I5(charPosition3_carry__1_n_2),
        .O(fontAddress_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fontAddress_carry__0_i_17
       (.I0(charPosition3_carry_n_6),
        .I1(\h_cntr_reg_reg[5] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(charPosition3_carry__1_n_2),
        .O(fontAddress_carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    fontAddress_carry__0_i_1__1
       (.I0(pixel3_carry__0_0[6]),
        .I1(fontAddress_carry__0_i_8_n_0),
        .O(fontAddress_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fontAddress_carry__0_i_2
       (.I0(pixel3_carry__0_0[6]),
        .I1(fontAddress_carry__0_i_8_n_0),
        .O(fontAddress_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEFEECBE03403103)) 
    fontAddress_carry__0_i_3__0
       (.I0(charPosition3_carry_n_4),
        .I1(charPosition3_carry_n_6),
        .I2(fontAddress_carry__0_i_9__0_n_0),
        .I3(charPosition3_carry__1_n_2),
        .I4(charPosition3_carry_n_5),
        .I5(charPosition3_carry__0_n_7),
        .O(fontAddress_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    fontAddress_carry__0_i_4
       (.I0(fontAddress_carry__0_i_8_n_0),
        .I1(pixel3_carry__0_0[6]),
        .I2(fontAddress_carry__0_i_10__0_n_0),
        .I3(pixel3_carry__0_0[7]),
        .O(fontAddress_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h66559555556695AA)) 
    fontAddress_carry__0_i_5__1
       (.I0(pixel3_carry__0_0[6]),
        .I1(fontAddress_carry__0_i_11__0_n_0),
        .I2(fontAddress_carry__0_i_12_n_0),
        .I3(fontAddress_carry__0_i_13__0_n_0),
        .I4(fontAddress_carry__0_i_14_n_0),
        .I5(fontAddress_carry__0_i_15_n_0),
        .O(fontAddress_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fontAddress_carry__0_i_6__0
       (.I0(fontAddress_carry__0_i_3__0_n_0),
        .I1(pixel3_carry__0_0[5]),
        .O(fontAddress_carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fontAddress_carry__0_i_7__0
       (.I0(pixel3_carry__0_0[4]),
        .I1(fontAddress_carry__0_i_16_n_0),
        .O(fontAddress_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'hA8AACAC16AA88CCA)) 
    fontAddress_carry__0_i_8
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry_n_4),
        .I2(charPosition3_carry_n_6),
        .I3(fontAddress_carry__0_i_9__0_n_0),
        .I4(charPosition3_carry_n_5),
        .I5(charPosition3_carry__1_n_2),
        .O(fontAddress_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fontAddress_carry__0_i_9__0
       (.I0(charPosition3_carry__1_n_2),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\h_cntr_reg_reg[5] ),
        .O(fontAddress_carry__0_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__1
       (.CI(fontAddress_carry__0_n_0),
        .CO({fontAddress_carry__1_n_2,fontAddress_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,fontAddress_carry__1_i_1__0_n_0,fontAddress_carry__1_i_2__1_n_0}),
        .O(ADDRBWRADDR[10:8]),
        .S({\<const0> ,fontAddress_carry__1_i_3__1_n_0,fontAddress_carry__1_i_4__1_n_0,fontAddress_carry__1_i_5__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    fontAddress_carry__1_i_1__0
       (.I0(pixel3_carry__0_0[8]),
        .I1(fontAddress_carry__1_i_6_n_0),
        .O(fontAddress_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fontAddress_carry__1_i_2__1
       (.I0(pixel3_carry__0_0[8]),
        .I1(fontAddress_carry__1_i_6_n_0),
        .O(fontAddress_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    fontAddress_carry__1_i_3__1
       (.I0(fontAddress_carry__1_i_7_n_0),
        .I1(pixel3_carry__0_0[9]),
        .I2(fontAddress_carry__1_i_8_n_0),
        .I3(pixel3_carry__0_0[10]),
        .O(fontAddress_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    fontAddress_carry__1_i_4__1
       (.I0(fontAddress_carry__1_i_6_n_0),
        .I1(pixel3_carry__0_0[8]),
        .I2(fontAddress_carry__1_i_7_n_0),
        .I3(pixel3_carry__0_0[9]),
        .O(fontAddress_carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9699)) 
    fontAddress_carry__1_i_5__1
       (.I0(fontAddress_carry__1_i_6_n_0),
        .I1(pixel3_carry__0_0[8]),
        .I2(fontAddress_carry__0_i_10__0_n_0),
        .I3(pixel3_carry__0_0[7]),
        .O(fontAddress_carry__1_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h0002C0002B2C222B)) 
    fontAddress_carry__1_i_6
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry_n_5),
        .I2(charPosition3_carry_n_6),
        .I3(fontAddress_carry__0_i_9__0_n_0),
        .I4(charPosition3_carry__1_n_2),
        .I5(charPosition3_carry_n_4),
        .O(fontAddress_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h19115175FFFFFFEF)) 
    fontAddress_carry__1_i_7
       (.I0(charPosition3_carry_n_4),
        .I1(charPosition3_carry_n_5),
        .I2(charPosition3_carry__1_n_2),
        .I3(fontAddress_carry__0_i_9__0_n_0),
        .I4(charPosition3_carry_n_6),
        .I5(charPosition3_carry__0_n_7),
        .O(fontAddress_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFEF0810411851)) 
    fontAddress_carry__1_i_8
       (.I0(charPosition3_carry_n_6),
        .I1(fontAddress_carry__0_i_9__0_n_0),
        .I2(charPosition3_carry__1_n_2),
        .I3(charPosition3_carry_n_5),
        .I4(charPosition3_carry_n_4),
        .I5(charPosition3_carry__0_n_7),
        .O(fontAddress_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fontAddress_carry_i_1
       (.I0(pixel3_carry__0_0[3]),
        .O(fontAddress_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fontAddress_carry_i_2__0
       (.I0(pixel3_carry__0_0[1]),
        .O(fontAddress_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(pixel3_carry__0_0[6]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__4
       (.I0(out[11]),
        .O(i__carry__0_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(pixel3_carry__0_0[4]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__3
       (.I0(pixel3_carry__0_0[11]),
        .O(i__carry__1_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__2
       (.I0(pixel3_carry__0_0[10]),
        .O(i__carry__1_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(pixel3_carry__0_0[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(pixel3_carry__0_0[8]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__1
       (.I0(out[7]),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__4
       (.I0(pixel3_carry__0_0[3]),
        .O(i__carry_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(pixel3_carry__0_0[1]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__4
       (.I0(out[5]),
        .O(i__carry_i_2__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel3_carry
       (.CI(\<const0> ),
        .CO({pixel3_carry_n_0,pixel3_carry_n_1,pixel3_carry_n_2,pixel3_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({pixel3_carry_i_1__0_n_0,pixel3_carry__0_0[5],pixel3_carry__0_0[3],pixel3_carry_i_2__0_n_0}),
        .S({pixel3_carry_i_3_n_0,pixel3_carry_i_4_n_0,pixel3_carry_i_5__0_n_0,pixel3_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel3_carry__0
       (.CI(pixel3_carry_n_0),
        .CO({pixel3_carry__0_n_2,pixel3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pixel3_carry__0_i_1__0_n_0,pixel3_carry__0_i_2__0_n_0}),
        .S({\<const0> ,\<const0> ,pixel3_carry__0_i_3__0_n_0,pixel3_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    pixel3_carry__0_i_1__0
       (.I0(pixel3_carry__0_0[11]),
        .I1(pixel3_carry__0_0[10]),
        .O(pixel3_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel3_carry__0_i_2__0
       (.I0(pixel3_carry__0_0[9]),
        .I1(pixel3_carry__0_0[8]),
        .O(pixel3_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel3_carry__0_i_3__0
       (.I0(pixel3_carry__0_0[10]),
        .I1(pixel3_carry__0_0[11]),
        .O(pixel3_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel3_carry__0_i_4__0
       (.I0(pixel3_carry__0_0[8]),
        .I1(pixel3_carry__0_0[9]),
        .O(pixel3_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel3_carry_i_1__0
       (.I0(pixel3_carry__0_0[6]),
        .I1(pixel3_carry__0_0[7]),
        .O(pixel3_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel3_carry_i_2__0
       (.I0(pixel3_carry__0_0[1]),
        .I1(pixel3_carry__0_0[0]),
        .O(pixel3_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry_i_3
       (.I0(pixel3_carry__0_0[7]),
        .I1(pixel3_carry__0_0[6]),
        .O(pixel3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry_i_4
       (.I0(pixel3_carry__0_0[4]),
        .I1(pixel3_carry__0_0[5]),
        .O(pixel3_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry_i_5__0
       (.I0(pixel3_carry__0_0[2]),
        .I1(pixel3_carry__0_0[3]),
        .O(pixel3_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry_i_6
       (.I0(pixel3_carry__0_0[1]),
        .I1(pixel3_carry__0_0[0]),
        .O(pixel3_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_10
       (.I0(out[6]),
        .I1(out[7]),
        .O(pixel_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_11
       (.I0(out[5]),
        .I1(out[4]),
        .O(pixel_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_12
       (.I0(out[3]),
        .I1(out[2]),
        .O(pixel_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel_i_13__1
       (.I0(out[0]),
        .I1(out[1]),
        .O(pixel_i_13__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_14
       (.I0(out[7]),
        .I1(out[6]),
        .O(pixel_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_15
       (.I0(out[4]),
        .I1(out[5]),
        .O(pixel_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_16__0
       (.I0(out[3]),
        .I1(out[2]),
        .O(pixel_i_16__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_i_17
       (.I0(out[1]),
        .I1(out[0]),
        .O(pixel_i_17_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    pixel_i_4__1
       (.I0(\_inferred__4/i__carry__1_n_0 ),
        .I1(\_inferred__5/i__carry__0_n_0 ),
        .I2(pixel3_carry__0_n_2),
        .I3(pixel_reg_i_6__0_n_2),
        .O(\v_cntr_reg_reg[11] ));
  LUT2 #(
    .INIT(4'h2)) 
    pixel_i_8__1
       (.I0(out[10]),
        .I1(out[11]),
        .O(pixel_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel_i_9__1
       (.I0(out[9]),
        .I1(out[8]),
        .O(pixel_i_9__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(pixel_reg_1),
        .Q(pixel_reg_0),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_6__0
       (.CI(pixel_reg_i_7_n_0),
        .CO({pixel_reg_i_6__0_n_2,pixel_reg_i_6__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,out[11],\<const0> }),
        .S({\<const0> ,\<const0> ,pixel_i_8__1_n_0,pixel_i_9__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel_reg_i_7
       (.CI(\<const0> ),
        .CO({pixel_reg_i_7_n_0,pixel_reg_i_7_n_1,pixel_reg_i_7_n_2,pixel_reg_i_7_n_3}),
        .CYINIT(\<const1> ),
        .DI({pixel_i_10_n_0,pixel_i_11_n_0,pixel_i_12_n_0,pixel_i_13__1_n_0}),
        .S({pixel_i_14_n_0,pixel_i_15_n_0,pixel_i_16__0_n_0,pixel_i_17_n_0}));
endmodule

(* ORIG_REF_NAME = "Pixel_On_Text2" *) 
module Pixel_On_Text2__parameterized3
   (pixel_reg_0,
    clk_out1,
    out,
    \_inferred__5/i__carry__1_0 ,
    CO);
  output pixel_reg_0;
  input clk_out1;
  input [11:0]out;
  input [11:0]\_inferred__5/i__carry__1_0 ;
  input [0:0]CO;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire FontRom_n_0;
  wire FontRom_n_1;
  wire FontRom_n_2;
  wire FontRom_n_3;
  wire FontRom_n_4;
  wire FontRom_n_5;
  wire \_inferred__4/i__carry__0_n_0 ;
  wire \_inferred__4/i__carry__0_n_1 ;
  wire \_inferred__4/i__carry__0_n_2 ;
  wire \_inferred__4/i__carry__0_n_3 ;
  wire \_inferred__4/i__carry__1_n_1 ;
  wire \_inferred__4/i__carry__1_n_2 ;
  wire \_inferred__4/i__carry__1_n_3 ;
  wire \_inferred__4/i__carry_n_0 ;
  wire \_inferred__4/i__carry_n_1 ;
  wire \_inferred__4/i__carry_n_2 ;
  wire \_inferred__4/i__carry_n_3 ;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire [11:0]\_inferred__5/i__carry__1_0 ;
  wire \_inferred__5/i__carry__1_n_1 ;
  wire \_inferred__5/i__carry__1_n_2 ;
  wire \_inferred__5/i__carry__1_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire charPosition3_carry__0_i_1_n_0;
  wire charPosition3_carry__0_i_2__0_n_0;
  wire charPosition3_carry__0_n_0;
  wire charPosition3_carry__0_n_1;
  wire charPosition3_carry__0_n_2;
  wire charPosition3_carry__0_n_3;
  wire charPosition3_carry__0_n_6;
  wire charPosition3_carry__0_n_7;
  wire charPosition3_carry__1_i_1__1_n_0;
  wire charPosition3_carry__1_i_2_n_0;
  wire charPosition3_carry__1_n_1;
  wire charPosition3_carry__1_n_2;
  wire charPosition3_carry__1_n_3;
  wire charPosition3_carry_i_1__1_n_0;
  wire charPosition3_carry_i_2_n_0;
  wire charPosition3_carry_i_3__1_n_0;
  wire charPosition3_carry_n_0;
  wire charPosition3_carry_n_1;
  wire charPosition3_carry_n_2;
  wire charPosition3_carry_n_3;
  wire charPosition3_carry_n_4;
  wire charPosition3_carry_n_5;
  wire charPosition3_carry_n_6;
  wire charPosition3_carry_n_7;
  wire clk_out1;
  wire fontAddress_carry__0_i_11__1_n_0;
  wire fontAddress_carry__0_i_1__0_n_0;
  wire fontAddress_carry__0_i_2__1_n_0;
  wire fontAddress_carry__0_i_3__1_n_0;
  wire fontAddress_carry__0_i_4__0_n_0;
  wire fontAddress_carry__0_i_5__0_n_0;
  wire fontAddress_carry__0_i_6__1_n_0;
  wire fontAddress_carry__0_i_7__1_n_0;
  wire fontAddress_carry__0_i_8__0_n_0;
  wire fontAddress_carry__0_n_0;
  wire fontAddress_carry__0_n_1;
  wire fontAddress_carry__0_n_2;
  wire fontAddress_carry__0_n_3;
  wire fontAddress_carry__0_n_4;
  wire fontAddress_carry__0_n_5;
  wire fontAddress_carry__0_n_6;
  wire fontAddress_carry__0_n_7;
  wire fontAddress_carry__1_n_3;
  wire fontAddress_carry__1_n_6;
  wire fontAddress_carry__1_n_7;
  wire fontAddress_carry_i_1__0_n_0;
  wire fontAddress_carry_i_2__1_n_0;
  wire fontAddress_carry_i_3_n_0;
  wire fontAddress_carry_i_4_n_0;
  wire fontAddress_carry_i_5_n_0;
  wire fontAddress_carry_i_6_n_0;
  wire fontAddress_carry_i_7_n_0;
  wire fontAddress_carry_n_0;
  wire fontAddress_carry_n_1;
  wire fontAddress_carry_n_2;
  wire fontAddress_carry_n_3;
  wire fontAddress_carry_n_4;
  wire fontAddress_carry_n_5;
  wire fontAddress_carry_n_6;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire [11:0]out;
  wire pixel3_carry__0_i_1_n_0;
  wire pixel3_carry__0_i_2_n_0;
  wire pixel3_carry__0_i_3_n_0;
  wire pixel3_carry__0_i_4_n_0;
  wire pixel3_carry__0_n_2;
  wire pixel3_carry__0_n_3;
  wire pixel3_carry_i_1_n_0;
  wire pixel3_carry_i_2_n_0;
  wire pixel3_carry_i_3__0_n_0;
  wire pixel3_carry_i_4__0_n_0;
  wire pixel3_carry_i_5_n_0;
  wire pixel3_carry_i_6__0_n_0;
  wire pixel3_carry_n_0;
  wire pixel3_carry_n_1;
  wire pixel3_carry_n_2;
  wire pixel3_carry_n_3;
  wire pixel_i_3__0_n_0;
  wire pixel_reg_0;
  wire [3:0]NLW_fontAddress_carry_O_UNCONNECTED;

  Font_Rom FontRom
       (.ADDRARDADDR({fontAddress_carry__1_n_6,fontAddress_carry__1_n_7,fontAddress_carry__0_n_4,fontAddress_carry__0_n_5,fontAddress_carry__0_n_6,fontAddress_carry__0_n_7,fontAddress_carry_n_4,fontAddress_carry_n_5,fontAddress_carry_n_6,out[1:0]}),
        .CO(charPosition3_carry__1_n_1),
        .DI(FontRom_n_1),
        .O({charPosition3_carry_n_4,charPosition3_carry_n_5,charPosition3_carry_n_6,charPosition3_carry_n_7}),
        .S({FontRom_n_4,FontRom_n_5}),
        .clk_out1(clk_out1),
        .fontAddress_carry__1_i_2__0_0({charPosition3_carry__0_n_6,charPosition3_carry__0_n_7}),
        .\h_cntr_reg_reg[0] (FontRom_n_0),
        .\h_cntr_reg_reg[0]_0 (FontRom_n_3),
        .\h_cntr_reg_reg[6] (FontRom_n_2),
        .out(out[10:8]),
        .pixel_reg(\_inferred__5/i__carry__1_0 [0]),
        .pixel_reg_0(pixel_i_3__0_n_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__4/i__carry_n_0 ,\_inferred__4/i__carry_n_1 ,\_inferred__4/i__carry_n_2 ,\_inferred__4/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({out[4],\<const0> ,out[2],\<const0> }),
        .S({i__carry_i_1__2_n_0,out[3],i__carry_i_2__3_n_0,out[1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__0 
       (.CI(\_inferred__4/i__carry_n_0 ),
        .CO({\_inferred__4/i__carry__0_n_0 ,\_inferred__4/i__carry__0_n_1 ,\_inferred__4/i__carry__0_n_2 ,\_inferred__4/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({out[8:6],\<const0> }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3_n_0,out[5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__4/i__carry__1 
       (.CI(\_inferred__4/i__carry__0_n_0 ),
        .CO({\_inferred__4/i__carry__1_n_1 ,\_inferred__4/i__carry__1_n_2 ,\_inferred__4/i__carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,out[11:10],\<const0> }),
        .S({\<const0> ,i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,out[9]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry 
       (.CI(\<const0> ),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\_inferred__5/i__carry__1_0 [4],\<const0> ,\_inferred__5/i__carry__1_0 [2],\<const0> }),
        .S({i__carry_i_1__3_n_0,\_inferred__5/i__carry__1_0 [3],i__carry_i_2_n_0,\_inferred__5/i__carry__1_0 [1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\_inferred__5/i__carry__1_0 [5]}),
        .S({\_inferred__5/i__carry__1_0 [8:6],i__carry__0_i_1__3_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__1 
       (.CI(\_inferred__5/i__carry__0_n_0 ),
        .CO({\_inferred__5/i__carry__1_n_1 ,\_inferred__5/i__carry__1_n_2 ,\_inferred__5/i__carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\_inferred__5/i__carry__1_0 [11:10],\<const0> }),
        .S({\<const0> ,i__carry__1_i_1__2_n_0,i__carry__1_i_2__0_n_0,\_inferred__5/i__carry__1_0 [9]}));
  CARRY4 charPosition3_carry
       (.CI(\<const0> ),
        .CO({charPosition3_carry_n_0,charPosition3_carry_n_1,charPosition3_carry_n_2,charPosition3_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\_inferred__5/i__carry__1_0 [4:2],\<const0> }),
        .O({charPosition3_carry_n_4,charPosition3_carry_n_5,charPosition3_carry_n_6,charPosition3_carry_n_7}),
        .S({charPosition3_carry_i_1__1_n_0,charPosition3_carry_i_2_n_0,charPosition3_carry_i_3__1_n_0,\_inferred__5/i__carry__1_0 [1]}));
  CARRY4 charPosition3_carry__0
       (.CI(charPosition3_carry_n_0),
        .CO({charPosition3_carry__0_n_0,charPosition3_carry__0_n_1,charPosition3_carry__0_n_2,charPosition3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\_inferred__5/i__carry__1_0 [6:5]}),
        .O({charPosition3_carry__0_n_6,charPosition3_carry__0_n_7}),
        .S({\_inferred__5/i__carry__1_0 [8:7],charPosition3_carry__0_i_1_n_0,charPosition3_carry__0_i_2__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__0_i_1
       (.I0(\_inferred__5/i__carry__1_0 [6]),
        .O(charPosition3_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__0_i_2__0
       (.I0(\_inferred__5/i__carry__1_0 [5]),
        .O(charPosition3_carry__0_i_2__0_n_0));
  CARRY4 charPosition3_carry__1
       (.CI(charPosition3_carry__0_n_0),
        .CO({charPosition3_carry__1_n_1,charPosition3_carry__1_n_2,charPosition3_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\_inferred__5/i__carry__1_0 [11:10],\<const0> }),
        .S({\<const0> ,charPosition3_carry__1_i_1__1_n_0,charPosition3_carry__1_i_2_n_0,\_inferred__5/i__carry__1_0 [9]}));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__1_i_1__1
       (.I0(\_inferred__5/i__carry__1_0 [11]),
        .O(charPosition3_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry__1_i_2
       (.I0(\_inferred__5/i__carry__1_0 [10]),
        .O(charPosition3_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_1__1
       (.I0(\_inferred__5/i__carry__1_0 [4]),
        .O(charPosition3_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_2
       (.I0(\_inferred__5/i__carry__1_0 [3]),
        .O(charPosition3_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    charPosition3_carry_i_3__1
       (.I0(\_inferred__5/i__carry__1_0 [2]),
        .O(charPosition3_carry_i_3__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry
       (.CI(\<const0> ),
        .CO({fontAddress_carry_n_0,fontAddress_carry_n_1,fontAddress_carry_n_2,fontAddress_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({out[4],\<const0> ,out[2],\<const0> }),
        .O({fontAddress_carry_n_4,fontAddress_carry_n_5,fontAddress_carry_n_6,NLW_fontAddress_carry_O_UNCONNECTED[0]}),
        .S({fontAddress_carry_i_1__0_n_0,out[3],fontAddress_carry_i_2__1_n_0,out[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__0
       (.CI(fontAddress_carry_n_0),
        .CO({fontAddress_carry__0_n_0,fontAddress_carry__0_n_1,fontAddress_carry__0_n_2,fontAddress_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({fontAddress_carry__0_i_1__0_n_0,fontAddress_carry__0_i_2__1_n_0,fontAddress_carry__0_i_3__1_n_0,out[5]}),
        .O({fontAddress_carry__0_n_4,fontAddress_carry__0_n_5,fontAddress_carry__0_n_6,fontAddress_carry__0_n_7}),
        .S({fontAddress_carry__0_i_4__0_n_0,fontAddress_carry__0_i_5__0_n_0,fontAddress_carry__0_i_6__1_n_0,fontAddress_carry__0_i_7__1_n_0}));
  LUT6 #(
    .INIT(64'hCD00000032FFFFFF)) 
    fontAddress_carry__0_i_11__1
       (.I0(charPosition3_carry__1_n_1),
        .I1(charPosition3_carry_n_5),
        .I2(FontRom_n_3),
        .I3(charPosition3_carry_n_4),
        .I4(charPosition3_carry__0_n_7),
        .I5(charPosition3_carry__0_n_6),
        .O(fontAddress_carry__0_i_11__1_n_0));
  LUT4 #(
    .INIT(16'hEBAA)) 
    fontAddress_carry__0_i_1__0
       (.I0(out[7]),
        .I1(fontAddress_carry_i_4_n_0),
        .I2(fontAddress_carry_i_5_n_0),
        .I3(fontAddress_carry_i_7_n_0),
        .O(fontAddress_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    fontAddress_carry__0_i_2__1
       (.I0(out[6]),
        .I1(fontAddress_carry__0_i_8__0_n_0),
        .O(fontAddress_carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0534505100000F0C)) 
    fontAddress_carry__0_i_3__1
       (.I0(charPosition3_carry__0_n_6),
        .I1(charPosition3_carry__1_n_1),
        .I2(charPosition3_carry_n_5),
        .I3(FontRom_n_3),
        .I4(charPosition3_carry_n_4),
        .I5(charPosition3_carry__0_n_7),
        .O(fontAddress_carry__0_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h007DFF82FF82007D)) 
    fontAddress_carry__0_i_4__0
       (.I0(fontAddress_carry_i_7_n_0),
        .I1(fontAddress_carry_i_5_n_0),
        .I2(fontAddress_carry_i_4_n_0),
        .I3(out[7]),
        .I4(FontRom_n_2),
        .I5(out[8]),
        .O(fontAddress_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hCABAAECA35455135)) 
    fontAddress_carry__0_i_5__0
       (.I0(out[6]),
        .I1(fontAddress_carry_i_6_n_0),
        .I2(fontAddress_carry__0_i_11__1_n_0),
        .I3(fontAddress_carry_i_5_n_0),
        .I4(fontAddress_carry_i_4_n_0),
        .I5(out[7]),
        .O(fontAddress_carry__0_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    fontAddress_carry__0_i_6__1
       (.I0(fontAddress_carry__0_i_8__0_n_0),
        .I1(out[6]),
        .I2(fontAddress_carry__0_i_3__1_n_0),
        .O(fontAddress_carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fontAddress_carry__0_i_7__1
       (.I0(fontAddress_carry__0_i_3__1_n_0),
        .I1(out[5]),
        .O(fontAddress_carry__0_i_7__1_n_0));
  LUT6 #(
    .INIT(64'hFFDFFFFF00305A49)) 
    fontAddress_carry__0_i_8__0
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry__1_n_1),
        .I2(charPosition3_carry_n_5),
        .I3(FontRom_n_3),
        .I4(charPosition3_carry_n_4),
        .I5(charPosition3_carry__0_n_6),
        .O(fontAddress_carry__0_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fontAddress_carry__1
       (.CI(fontAddress_carry__0_n_0),
        .CO(fontAddress_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,FontRom_n_1}),
        .O({fontAddress_carry__1_n_6,fontAddress_carry__1_n_7}),
        .S({\<const0> ,\<const0> ,FontRom_n_4,FontRom_n_5}));
  LUT6 #(
    .INIT(64'h55A955A996A9AAA9)) 
    fontAddress_carry_i_1__0
       (.I0(out[4]),
        .I1(fontAddress_carry_i_3_n_0),
        .I2(fontAddress_carry_i_4_n_0),
        .I3(fontAddress_carry_i_5_n_0),
        .I4(fontAddress_carry_i_6_n_0),
        .I5(fontAddress_carry_i_7_n_0),
        .O(fontAddress_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fontAddress_carry_i_2__1
       (.I0(out[2]),
        .O(fontAddress_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h32FFFFFFCD000000)) 
    fontAddress_carry_i_3
       (.I0(charPosition3_carry__1_n_1),
        .I1(charPosition3_carry_n_5),
        .I2(FontRom_n_3),
        .I3(charPosition3_carry_n_4),
        .I4(charPosition3_carry__0_n_7),
        .I5(charPosition3_carry__0_n_6),
        .O(fontAddress_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h5A59AAAA)) 
    fontAddress_carry_i_4
       (.I0(charPosition3_carry__0_n_7),
        .I1(charPosition3_carry__1_n_1),
        .I2(charPosition3_carry_n_5),
        .I3(FontRom_n_3),
        .I4(charPosition3_carry_n_4),
        .O(fontAddress_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAAA5556)) 
    fontAddress_carry_i_5
       (.I0(charPosition3_carry_n_5),
        .I1(charPosition3_carry_n_6),
        .I2(charPosition3_carry_n_7),
        .I3(\_inferred__5/i__carry__1_0 [0]),
        .I4(charPosition3_carry__1_n_1),
        .O(fontAddress_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDC22222223)) 
    fontAddress_carry_i_6
       (.I0(charPosition3_carry__1_n_1),
        .I1(charPosition3_carry_n_5),
        .I2(\_inferred__5/i__carry__1_0 [0]),
        .I3(charPosition3_carry_n_7),
        .I4(charPosition3_carry_n_6),
        .I5(charPosition3_carry_n_4),
        .O(fontAddress_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h11441141)) 
    fontAddress_carry_i_7
       (.I0(charPosition3_carry__0_n_6),
        .I1(charPosition3_carry_n_4),
        .I2(FontRom_n_3),
        .I3(charPosition3_carry_n_5),
        .I4(charPosition3_carry__1_n_1),
        .O(fontAddress_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__2
       (.I0(out[8]),
        .O(i__carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__3
       (.I0(\_inferred__5/i__carry__1_0 [5]),
        .O(i__carry__0_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__1
       (.I0(out[7]),
        .O(i__carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(out[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__1
       (.I0(out[11]),
        .O(i__carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__2
       (.I0(\_inferred__5/i__carry__1_0 [11]),
        .O(i__carry__1_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(\_inferred__5/i__carry__1_0 [10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__1
       (.I0(out[10]),
        .O(i__carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__2
       (.I0(out[4]),
        .O(i__carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__3
       (.I0(\_inferred__5/i__carry__1_0 [4]),
        .O(i__carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\_inferred__5/i__carry__1_0 [2]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__3
       (.I0(out[2]),
        .O(i__carry_i_2__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel3_carry
       (.CI(\<const0> ),
        .CO({pixel3_carry_n_0,pixel3_carry_n_1,pixel3_carry_n_2,pixel3_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({pixel3_carry_i_1_n_0,out[5],\<const0> ,pixel3_carry_i_2_n_0}),
        .S({pixel3_carry_i_3__0_n_0,pixel3_carry_i_4__0_n_0,pixel3_carry_i_5_n_0,pixel3_carry_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pixel3_carry__0
       (.CI(pixel3_carry_n_0),
        .CO({pixel3_carry__0_n_2,pixel3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pixel3_carry__0_i_1_n_0,pixel3_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,pixel3_carry__0_i_3_n_0,pixel3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    pixel3_carry__0_i_1
       (.I0(out[11]),
        .I1(out[10]),
        .O(pixel3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel3_carry__0_i_2
       (.I0(out[8]),
        .I1(out[9]),
        .O(pixel3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel3_carry__0_i_3
       (.I0(out[10]),
        .I1(out[11]),
        .O(pixel3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry__0_i_4
       (.I0(out[9]),
        .I1(out[8]),
        .O(pixel3_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel3_carry_i_1
       (.I0(out[7]),
        .I1(out[6]),
        .O(pixel3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pixel3_carry_i_2
       (.I0(out[1]),
        .I1(out[0]),
        .O(pixel3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel3_carry_i_3__0
       (.I0(out[6]),
        .I1(out[7]),
        .O(pixel3_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pixel3_carry_i_4__0
       (.I0(out[4]),
        .I1(out[5]),
        .O(pixel3_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pixel3_carry_i_5
       (.I0(out[3]),
        .I1(out[2]),
        .O(pixel3_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pixel3_carry_i_6__0
       (.I0(out[0]),
        .I1(out[1]),
        .O(pixel3_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    pixel_i_3__0
       (.I0(\_inferred__4/i__carry__1_n_1 ),
        .I1(\_inferred__5/i__carry__1_n_1 ),
        .I2(pixel3_carry__0_n_2),
        .I3(CO),
        .O(pixel_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(FontRom_n_0),
        .Q(pixel_reg_0),
        .R(\<const0> ));
endmodule

(* CORE_GENERATION_INFO = "clk_wiz_0,clk_wiz_v6_0_10_0_0,{component_name=clk_wiz_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=false,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clk_wiz_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

module clk_wiz_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(37.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(6.250000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(4),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKIN1(clk_in1),
        .CLKIN2(\<const0> ),
        .CLKINSEL(\<const1> ),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .DADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DCLK(\<const0> ),
        .DEN(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DWE(\<const0> ),
        .PSCLK(\<const0> ),
        .PSEN(\<const0> ),
        .PSINCDEC(\<const0> ),
        .PWRDWN(\<const0> ),
        .RST(\<const0> ));
endmodule

module debounce
   (\continuous_result_reg_reg[0]_0 ,
    \continuous_result_reg_reg[1]_0 ,
    \continuous_result_reg_reg[1]_1 ,
    \continuous_result_reg_reg[0]_1 ,
    \random_y_reg[0] ,
    \continuous_result_reg_reg[0]_2 ,
    \continuous_result_reg_reg[0]_3 ,
    \continuous_result_reg_reg[0]_4 ,
    \continuous_result_reg_reg[0]_5 ,
    \continuous_result_reg_reg[0]_6 ,
    game_active_reg,
    \random_x_reg[3] ,
    \continuous_result_reg_reg[0]_7 ,
    \continuous_result_reg_reg[0]_8 ,
    \continuous_result_reg_reg[0]_9 ,
    \continuous_result_reg_reg[0]_10 ,
    \random_y_reg[0]_0 ,
    \continuous_result_reg_reg[0]_11 ,
    \random_y_reg[1] ,
    \continuous_result_reg_reg[0]_12 ,
    \random_y_reg[0]_1 ,
    \continuous_result_reg_reg[0]_13 ,
    \random_y_reg[1]_0 ,
    \random_y_reg[2] ,
    \random_y_reg[4] ,
    \random_y_reg[4]_0 ,
    game_active_reg_0,
    game_active,
    direction,
    O,
    Q,
    \food_x_reg[1]_C ,
    p_2_in,
    \food_y_reg[4]_P ,
    btn_IBUF,
    clk_out1);
  output \continuous_result_reg_reg[0]_0 ;
  output \continuous_result_reg_reg[1]_0 ;
  output \continuous_result_reg_reg[1]_1 ;
  output \continuous_result_reg_reg[0]_1 ;
  output \random_y_reg[0] ;
  output \continuous_result_reg_reg[0]_2 ;
  output \continuous_result_reg_reg[0]_3 ;
  output \continuous_result_reg_reg[0]_4 ;
  output \continuous_result_reg_reg[0]_5 ;
  output \continuous_result_reg_reg[0]_6 ;
  output game_active_reg;
  output \random_x_reg[3] ;
  output \continuous_result_reg_reg[0]_7 ;
  output \continuous_result_reg_reg[0]_8 ;
  output \continuous_result_reg_reg[0]_9 ;
  output \continuous_result_reg_reg[0]_10 ;
  output \random_y_reg[0]_0 ;
  output \continuous_result_reg_reg[0]_11 ;
  output \random_y_reg[1] ;
  output \continuous_result_reg_reg[0]_12 ;
  output \random_y_reg[0]_1 ;
  output \continuous_result_reg_reg[0]_13 ;
  output \random_y_reg[1]_0 ;
  output \random_y_reg[2] ;
  output \random_y_reg[4] ;
  output \random_y_reg[4]_0 ;
  output game_active_reg_0;
  input game_active;
  input [1:0]direction;
  input [3:0]O;
  input [4:0]Q;
  input \food_x_reg[1]_C ;
  input [1:0]p_2_in;
  input \food_y_reg[4]_P ;
  input [3:0]btn_IBUF;
  input clk_out1;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]O;
  wire [4:0]Q;
  wire [3:0]btn_IBUF;
  wire [3:0]btn_confirm;
  wire clk_out1;
  wire \continuous_result_reg[3]_i_1_n_0 ;
  wire \continuous_result_reg[3]_i_3_n_0 ;
  wire \continuous_result_reg[3]_i_4_n_0 ;
  wire \continuous_result_reg[3]_i_5_n_0 ;
  wire \continuous_result_reg[3]_i_6_n_0 ;
  wire \continuous_result_reg_reg[0]_0 ;
  wire \continuous_result_reg_reg[0]_1 ;
  wire \continuous_result_reg_reg[0]_10 ;
  wire \continuous_result_reg_reg[0]_11 ;
  wire \continuous_result_reg_reg[0]_12 ;
  wire \continuous_result_reg_reg[0]_13 ;
  wire \continuous_result_reg_reg[0]_2 ;
  wire \continuous_result_reg_reg[0]_3 ;
  wire \continuous_result_reg_reg[0]_4 ;
  wire \continuous_result_reg_reg[0]_5 ;
  wire \continuous_result_reg_reg[0]_6 ;
  wire \continuous_result_reg_reg[0]_7 ;
  wire \continuous_result_reg_reg[0]_8 ;
  wire \continuous_result_reg_reg[0]_9 ;
  wire \continuous_result_reg_reg[1]_0 ;
  wire \continuous_result_reg_reg[1]_1 ;
  wire count1;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_14_n_0 ;
  wire \count[0]_i_15_n_0 ;
  wire \count[0]_i_16_n_0 ;
  wire \count[0]_i_17_n_0 ;
  wire \count[0]_i_18_n_0 ;
  wire \count[0]_i_19_n_0 ;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_20_n_0 ;
  wire \count[0]_i_21_n_0 ;
  wire \count[0]_i_22_n_0 ;
  wire \count[0]_i_23_n_0 ;
  wire \count[0]_i_24_n_0 ;
  wire \count[0]_i_25_n_0 ;
  wire \count[0]_i_26_n_0 ;
  wire \count[0]_i_27_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_13_n_0 ;
  wire \count_reg[0]_i_13_n_1 ;
  wire \count_reg[0]_i_13_n_2 ;
  wire \count_reg[0]_i_13_n_3 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_9_n_0 ;
  wire \count_reg[0]_i_9_n_1 ;
  wire \count_reg[0]_i_9_n_2 ;
  wire \count_reg[0]_i_9_n_3 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire counter_set;
  wire [1:0]direction;
  wire en_counter_i_2_n_0;
  wire en_counter_reg_n_0;
  wire [3:0]flipflop0;
  wire [3:0]flipflop1;
  wire \food_x_reg[1]_C ;
  wire \food_y_reg[4]_P ;
  wire \food_y_reg[5]_LDC_i_3_n_0 ;
  wire game_active;
  wire game_active_reg;
  wire game_active_reg_0;
  wire [3:0]p_1_in;
  wire [1:0]p_2_in;
  wire \random_x_reg[3] ;
  wire \random_y_reg[0] ;
  wire \random_y_reg[0]_0 ;
  wire \random_y_reg[0]_1 ;
  wire \random_y_reg[1] ;
  wire \random_y_reg[1]_0 ;
  wire \random_y_reg[2] ;
  wire \random_y_reg[4] ;
  wire \random_y_reg[4]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \continuous_result_reg[0]_i_1 
       (.I0(flipflop1[0]),
        .I1(counter_set),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \continuous_result_reg[1]_i_1 
       (.I0(flipflop1[1]),
        .I1(counter_set),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \continuous_result_reg[2]_i_1 
       (.I0(flipflop1[2]),
        .I1(counter_set),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \continuous_result_reg[3]_i_1 
       (.I0(\continuous_result_reg[3]_i_3_n_0 ),
        .I1(\continuous_result_reg[3]_i_4_n_0 ),
        .I2(\continuous_result_reg[3]_i_5_n_0 ),
        .I3(counter_set),
        .O(\continuous_result_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \continuous_result_reg[3]_i_2 
       (.I0(flipflop1[3]),
        .I1(counter_set),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \continuous_result_reg[3]_i_3 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(en_counter_reg_n_0),
        .I3(count1),
        .I4(count_reg[0]),
        .I5(\continuous_result_reg[3]_i_6_n_0 ),
        .O(\continuous_result_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \continuous_result_reg[3]_i_4 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(count_reg[8]),
        .I5(count_reg[5]),
        .O(\continuous_result_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \continuous_result_reg[3]_i_5 
       (.I0(count_reg[11]),
        .I1(count_reg[12]),
        .I2(count_reg[9]),
        .I3(count_reg[10]),
        .I4(count_reg[14]),
        .I5(count_reg[13]),
        .O(\continuous_result_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \continuous_result_reg[3]_i_6 
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .I2(count_reg[15]),
        .I3(count_reg[16]),
        .I4(count_reg[19]),
        .I5(count_reg[20]),
        .O(\continuous_result_reg[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \continuous_result_reg_reg[0] 
       (.C(clk_out1),
        .CE(\continuous_result_reg[3]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(btn_confirm[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \continuous_result_reg_reg[1] 
       (.C(clk_out1),
        .CE(\continuous_result_reg[3]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(btn_confirm[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \continuous_result_reg_reg[2] 
       (.C(clk_out1),
        .CE(\continuous_result_reg[3]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(btn_confirm[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \continuous_result_reg_reg[3] 
       (.C(clk_out1),
        .CE(\continuous_result_reg[3]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(btn_confirm[3]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hEA)) 
    \count[0]_i_1 
       (.I0(counter_set),
        .I1(en_counter_reg_n_0),
        .I2(count1),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_10 
       (.I0(count_reg[20]),
        .O(\count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_11 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(\count[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_12 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(\count[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_14 
       (.I0(count_reg[17]),
        .O(\count[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_15 
       (.I0(count_reg[15]),
        .O(\count[0]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_16 
       (.I0(count_reg[13]),
        .O(\count[0]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_17 
       (.I0(count_reg[11]),
        .O(\count[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_18 
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(\count[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_19 
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(\count[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_20 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(\count[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_21 
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(\count[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count[0]_i_22 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(\count[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_23 
       (.I0(count_reg[3]),
        .O(\count[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_24 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(\count[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_25 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(\count[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_26 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(\count[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_27 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(\count[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_4 
       (.I0(count_reg[0]),
        .I1(counter_set),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_5 
       (.I0(count_reg[3]),
        .I1(counter_set),
        .O(\count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_6 
       (.I0(count_reg[2]),
        .I1(counter_set),
        .O(\count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_7 
       (.I0(count_reg[1]),
        .I1(counter_set),
        .O(\count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_8 
       (.I0(count_reg[0]),
        .I1(counter_set),
        .O(\count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(counter_set),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(counter_set),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(counter_set),
        .O(\count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(counter_set),
        .O(\count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(counter_set),
        .O(\count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .I1(counter_set),
        .O(\count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .I1(counter_set),
        .O(\count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .I1(counter_set),
        .O(\count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[20]_i_2 
       (.I0(count_reg[20]),
        .I1(counter_set),
        .O(\count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(counter_set),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(counter_set),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(counter_set),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(counter_set),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(counter_set),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(counter_set),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(counter_set),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(counter_set),
        .O(\count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_13 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_13_n_0 ,\count_reg[0]_i_13_n_1 ,\count_reg[0]_i_13_n_2 ,\count_reg[0]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\count[0]_i_22_n_0 ,\<const0> ,\count[0]_i_23_n_0 }),
        .S({\count[0]_i_24_n_0 ,\count[0]_i_25_n_0 ,\count[0]_i_26_n_0 ,\count[0]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\count[0]_i_4_n_0 }),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(\count_reg[0]_i_9_n_0 ),
        .CO({count1,\count_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\count[0]_i_10_n_0 ,\count[0]_i_11_n_0 }),
        .S({\<const0> ,\<const0> ,count_reg[20],\count[0]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_9 
       (.CI(\count_reg[0]_i_13_n_0 ),
        .CO({\count_reg[0]_i_9_n_0 ,\count_reg[0]_i_9_n_1 ,\count_reg[0]_i_9_n_2 ,\count_reg[0]_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\count[0]_i_14_n_0 ,\count[0]_i_15_n_0 ,\count[0]_i_16_n_0 ,\count[0]_i_17_n_0 }),
        .S({\count[0]_i_18_n_0 ,\count[0]_i_19_n_0 ,\count[0]_i_20_n_0 ,\count[0]_i_21_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\count_reg[20]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\count[20]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h22332232)) 
    \direction[0]_i_1 
       (.I0(btn_confirm[1]),
        .I1(btn_confirm[0]),
        .I2(btn_confirm[3]),
        .I3(btn_confirm[2]),
        .I4(direction[0]),
        .O(\continuous_result_reg_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h11111110)) 
    \direction[1]_i_1 
       (.I0(btn_confirm[1]),
        .I1(btn_confirm[0]),
        .I2(btn_confirm[3]),
        .I3(btn_confirm[2]),
        .I4(direction[1]),
        .O(\continuous_result_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    en_counter_i_1
       (.I0(flipflop1[0]),
        .I1(flipflop0[0]),
        .I2(flipflop1[3]),
        .I3(flipflop0[3]),
        .I4(en_counter_i_2_n_0),
        .O(counter_set));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    en_counter_i_2
       (.I0(flipflop0[1]),
        .I1(flipflop1[1]),
        .I2(flipflop0[2]),
        .I3(flipflop1[2]),
        .O(en_counter_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_counter_reg
       (.C(clk_out1),
        .CE(\continuous_result_reg[3]_i_1_n_0 ),
        .D(counter_set),
        .Q(en_counter_reg_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop0_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(btn_IBUF[0]),
        .Q(flipflop0[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop0_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(btn_IBUF[1]),
        .Q(flipflop0[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop0_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(btn_IBUF[2]),
        .Q(flipflop0[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop0_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(btn_IBUF[3]),
        .Q(flipflop0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop1_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(flipflop0[0]),
        .Q(flipflop1[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop1_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(flipflop0[1]),
        .Q(flipflop1[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop1_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(flipflop0[2]),
        .Q(flipflop1[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \flipflop1_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(flipflop0[3]),
        .Q(flipflop1[3]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \food_x_reg[0]_LDC_i_1 
       (.I0(O[0]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\continuous_result_reg_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \food_x_reg[0]_LDC_i_2 
       (.I0(O[0]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\continuous_result_reg_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006900)) 
    \food_x_reg[1]_LDC_i_1 
       (.I0(O[1]),
        .I1(\food_x_reg[1]_C ),
        .I2(O[0]),
        .I3(btn_confirm[0]),
        .I4(game_active),
        .O(\continuous_result_reg_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20020220)) 
    \food_x_reg[1]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(O[1]),
        .I3(\food_x_reg[1]_C ),
        .I4(O[0]),
        .O(\continuous_result_reg_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h000000006AA90000)) 
    \food_x_reg[2]_LDC_i_1 
       (.I0(O[2]),
        .I1(\food_x_reg[1]_C ),
        .I2(O[1]),
        .I3(O[0]),
        .I4(btn_confirm[0]),
        .I5(game_active),
        .O(\continuous_result_reg_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h2002020202020220)) 
    \food_x_reg[2]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(O[2]),
        .I3(\food_x_reg[1]_C ),
        .I4(O[1]),
        .I5(O[0]),
        .O(\continuous_result_reg_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAA9)) 
    \food_x_reg[3]_LDC_i_1 
       (.I0(O[3]),
        .I1(\food_x_reg[1]_C ),
        .I2(O[1]),
        .I3(O[2]),
        .I4(O[0]),
        .I5(\food_y_reg[5]_LDC_i_3_n_0 ),
        .O(\random_x_reg[3] ));
  LUT6 #(
    .INIT(64'h4111111111111114)) 
    \food_x_reg[3]_LDC_i_2 
       (.I0(\food_y_reg[5]_LDC_i_3_n_0 ),
        .I1(O[3]),
        .I2(\food_x_reg[1]_C ),
        .I3(O[1]),
        .I4(O[2]),
        .I5(O[0]),
        .O(game_active_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \food_x_reg[4]_LDC_i_1 
       (.I0(p_2_in[0]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\continuous_result_reg_reg[0]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \food_x_reg[4]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(p_2_in[0]),
        .O(\continuous_result_reg_reg[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \food_x_reg[5]_LDC_i_1 
       (.I0(p_2_in[1]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\continuous_result_reg_reg[0]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \food_x_reg[5]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(p_2_in[1]),
        .O(\continuous_result_reg_reg[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \food_y_reg[0]_LDC_i_1 
       (.I0(Q[0]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\random_y_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \food_y_reg[0]_LDC_i_2 
       (.I0(Q[0]),
        .I1(btn_confirm[0]),
        .I2(game_active),
        .O(\random_y_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \food_y_reg[1]_LDC_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(btn_confirm[0]),
        .I3(game_active),
        .O(\random_y_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \food_y_reg[1]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\continuous_result_reg_reg[0]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007800)) 
    \food_y_reg[2]_LDC_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(btn_confirm[0]),
        .I4(game_active),
        .O(\random_y_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000222)) 
    \food_y_reg[2]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\continuous_result_reg_reg[0]_12 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \food_y_reg[3]_LDC_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(btn_confirm[0]),
        .I5(game_active),
        .O(\random_y_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2000000002222222)) 
    \food_y_reg[3]_LDC_i_2 
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\continuous_result_reg_reg[0]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \food_y_reg[4]_LDC_i_1 
       (.I0(game_active),
        .I1(\food_y_reg[4]_P ),
        .I2(btn_confirm[0]),
        .O(game_active_reg_0));
  LUT6 #(
    .INIT(64'h4000000015555555)) 
    \food_y_reg[4]_LDC_i_2 
       (.I0(\food_y_reg[5]_LDC_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\random_y_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \food_y_reg[5]_LDC_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\food_y_reg[5]_LDC_i_3_n_0 ),
        .O(\random_y_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \food_y_reg[5]_LDC_i_2 
       (.I0(\food_y_reg[5]_LDC_i_3_n_0 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\random_y_reg[4] ));
  LUT2 #(
    .INIT(4'hB)) 
    \food_y_reg[5]_LDC_i_3 
       (.I0(game_active),
        .I1(btn_confirm[0]),
        .O(\food_y_reg[5]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    game_active_i_2
       (.I0(btn_confirm[0]),
        .I1(game_active),
        .O(\continuous_result_reg_reg[0]_0 ));
endmodule
