/* Automatically generated from https://wokwi.com/projects/366318576852367361 */

`default_nettype none

module tt_um_wokwi_366318576852367361(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = rst_n;
  wire net2 = ui_in[0];
  wire net3 = ui_in[1];
  wire net4 = ui_in[2];
  wire net5 = ui_in[3];
  wire net6 = ui_in[4];
  wire net7 = ui_in[5];
  wire net8 = ui_in[6];
  wire net9 = ui_in[7];
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18 = uio_in[0];
  wire net19 = 1'b0;
  wire net20 = uio_in[1];
  wire net21 = uio_in[2];
  wire net22 = uio_in[3];
  wire net23 = uio_in[4];
  wire net24 = uio_in[5];
  wire net25;
  wire net26 = 1'b1;
  wire net27 = uio_in[7];
  wire net28 = 1'b0;
  wire net29 = 1'b1;
  wire net30 = 1'b0;
  wire net31 = 1'b1;
  wire net32 = 1'b1;
  wire net33 = 1'b0;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67;
  wire net68;
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;
  wire net97;
  wire net98;
  wire net99;
  wire net100;
  wire net101;
  wire net102;
  wire net103;
  wire net104;
  wire net105;
  wire net106;
  wire net107;
  wire net108;
  wire net109;
  wire net110;
  wire net111 = 1'b1;
  wire net112 = 1'b0;

  assign uo_out[0] = net10;
  assign uo_out[1] = net11;
  assign uo_out[2] = net12;
  assign uo_out[3] = net13;
  assign uo_out[4] = net14;
  assign uo_out[5] = net15;
  assign uo_out[6] = net16;
  assign uo_out[7] = net17;
  assign uio_out[0] = net19;
  assign uio_oe[0] = net19;
  assign uio_out[1] = net19;
  assign uio_oe[1] = net19;
  assign uio_out[2] = net19;
  assign uio_oe[2] = net19;
  assign uio_out[3] = net19;
  assign uio_oe[3] = net19;
  assign uio_out[4] = net19;
  assign uio_oe[4] = net19;
  assign uio_out[5] = net19;
  assign uio_oe[5] = net19;
  assign uio_out[6] = net25;
  assign uio_oe[6] = net26;
  assign uio_out[7] = net8;
  assign uio_oe[7] = net9;

  and_cell gate1 (
    .a (net34),
    .b (net35),
    .out (net36)
  );
  or_cell gate2 (
    .a (net34),
    .b (net35),
    .out (net37)
  );
  and_cell gate3 (
    .a (net37),
    .b (net38),
    .out (net39)
  );
  or_cell gate4 (
    .a (net36),
    .b (net39),
    .out (net38)
  );
  and_cell gate5 (
    .a (net2),
    .b (net1),
    .out (net34)
  );
  and_cell gate6 (
    .a (net5),
    .b (net1),
    .out (net35)
  );
  and_cell gate7 (
    .a (net40),
    .b (net41),
    .out (net42)
  );
  or_cell gate8 (
    .a (net40),
    .b (net41),
    .out (net43)
  );
  and_cell gate9 (
    .a (net43),
    .b (net44),
    .out (net45)
  );
  or_cell gate10 (
    .a (net42),
    .b (net45),
    .out (net44)
  );
  and_cell gate11 (
    .a (net2),
    .b (net1),
    .out (net40)
  );
  and_cell gate12 (
    .a (net6),
    .b (net1),
    .out (net41)
  );
  and_cell gate13 (
    .a (net46),
    .b (net47),
    .out (net48)
  );
  or_cell gate14 (
    .a (net46),
    .b (net47),
    .out (net49)
  );
  and_cell gate15 (
    .a (net49),
    .b (net50),
    .out (net51)
  );
  or_cell gate16 (
    .a (net48),
    .b (net51),
    .out (net50)
  );
  and_cell gate17 (
    .a (net2),
    .b (net1),
    .out (net46)
  );
  and_cell gate18 (
    .a (net7),
    .b (net1),
    .out (net47)
  );
  and_cell gate19 (
    .a (net52),
    .b (net53),
    .out (net54)
  );
  or_cell gate20 (
    .a (net52),
    .b (net53),
    .out (net55)
  );
  and_cell gate21 (
    .a (net55),
    .b (net56),
    .out (net57)
  );
  or_cell gate22 (
    .a (net54),
    .b (net57),
    .out (net56)
  );
  and_cell gate23 (
    .a (net3),
    .b (net1),
    .out (net52)
  );
  and_cell gate24 (
    .a (net18),
    .b (net1),
    .out (net53)
  );
  and_cell gate25 (
    .a (net58),
    .b (net59),
    .out (net60)
  );
  or_cell gate26 (
    .a (net58),
    .b (net59),
    .out (net61)
  );
  and_cell gate27 (
    .a (net61),
    .b (net62),
    .out (net63)
  );
  or_cell gate28 (
    .a (net60),
    .b (net63),
    .out (net62)
  );
  and_cell gate29 (
    .a (net3),
    .b (net1),
    .out (net58)
  );
  and_cell gate30 (
    .a (net20),
    .b (net1),
    .out (net59)
  );
  and_cell gate31 (
    .a (net64),
    .b (net65),
    .out (net66)
  );
  or_cell gate32 (
    .a (net64),
    .b (net65),
    .out (net67)
  );
  and_cell gate33 (
    .a (net67),
    .b (net68),
    .out (net69)
  );
  or_cell gate34 (
    .a (net66),
    .b (net69),
    .out (net68)
  );
  and_cell gate35 (
    .a (net3),
    .b (net1),
    .out (net64)
  );
  and_cell gate36 (
    .a (net21),
    .b (net1),
    .out (net65)
  );
  and_cell gate37 (
    .a (net70),
    .b (net71),
    .out (net72)
  );
  or_cell gate38 (
    .a (net70),
    .b (net71),
    .out (net73)
  );
  and_cell gate39 (
    .a (net73),
    .b (net74),
    .out (net75)
  );
  or_cell gate40 (
    .a (net72),
    .b (net75),
    .out (net74)
  );
  and_cell gate41 (
    .a (net4),
    .b (net1),
    .out (net70)
  );
  and_cell gate42 (
    .a (net22),
    .b (net1),
    .out (net71)
  );
  and_cell gate43 (
    .a (net76),
    .b (net77),
    .out (net78)
  );
  or_cell gate44 (
    .a (net76),
    .b (net77),
    .out (net79)
  );
  and_cell gate45 (
    .a (net79),
    .b (net80),
    .out (net81)
  );
  or_cell gate46 (
    .a (net78),
    .b (net81),
    .out (net80)
  );
  and_cell gate47 (
    .a (net4),
    .b (net1),
    .out (net76)
  );
  and_cell gate48 (
    .a (net23),
    .b (net1),
    .out (net77)
  );
  and_cell gate49 (
    .a (net82),
    .b (net83),
    .out (net84)
  );
  or_cell gate50 (
    .a (net82),
    .b (net83),
    .out (net85)
  );
  and_cell gate51 (
    .a (net85),
    .b (net86),
    .out (net87)
  );
  or_cell gate52 (
    .a (net84),
    .b (net87),
    .out (net86)
  );
  and_cell gate53 (
    .a (net4),
    .b (net1),
    .out (net82)
  );
  and_cell gate54 (
    .a (net24),
    .b (net1),
    .out (net83)
  );
  or_cell gate55 (
    .a (net38),
    .b (net56),
    .out (net88)
  );
  or_cell gate56 (
    .a (net88),
    .b (net74),
    .out (net10)
  );
  or_cell gate57 (
    .a (net44),
    .b (net62),
    .out (net89)
  );
  or_cell gate58 (
    .a (net89),
    .b (net80),
    .out (net11)
  );
  or_cell gate59 (
    .a (net50),
    .b (net68),
    .out (net90)
  );
  or_cell gate60 (
    .a (net90),
    .b (net86),
    .out (net12)
  );
  and_cell gate61 (
    .a (net38),
    .b (net44),
    .out (net91)
  );
  and_cell gate62 (
    .a (net44),
    .b (net50),
    .out (net92)
  );
  and_cell gate63 (
    .a (net38),
    .b (net50),
    .out (net93)
  );
  and_cell gate64 (
    .a (net56),
    .b (net68),
    .out (net94)
  );
  and_cell gate65 (
    .a (net56),
    .b (net62),
    .out (net95)
  );
  and_cell gate66 (
    .a (net62),
    .b (net68),
    .out (net96)
  );
  and_cell gate67 (
    .a (net74),
    .b (net86),
    .out (net97)
  );
  and_cell gate68 (
    .a (net74),
    .b (net80),
    .out (net98)
  );
  and_cell gate69 (
    .a (net80),
    .b (net86),
    .out (net99)
  );
  or_cell gate70 (
    .a (net93),
    .b (net91),
    .out (net100)
  );
  or_cell gate71 (
    .a (net100),
    .b (net92),
    .out (net14)
  );
  or_cell gate72 (
    .a (net94),
    .b (net95),
    .out (net101)
  );
  or_cell gate73 (
    .a (net101),
    .b (net96),
    .out (net15)
  );
  or_cell gate74 (
    .a (net97),
    .b (net98),
    .out (net102)
  );
  or_cell gate75 (
    .a (net102),
    .b (net99),
    .out (net16)
  );
  or_cell gate76 (
    .a (net103),
    .b (net104),
    .out (net105)
  );
  or_cell gate77 (
    .a (net105),
    .b (net106),
    .out (net17)
  );
  and_cell gate78 (
    .a (net10),
    .b (net11),
    .out (net103)
  );
  and_cell gate79 (
    .a (net10),
    .b (net12),
    .out (net104)
  );
  and_cell gate80 (
    .a (net11),
    .b (net12),
    .out (net106)
  );
  or_cell or1 (
    .a (net107),
    .b (net10),
    .out (net13)
  );
  or_cell or2 (
    .a (net12),
    .b (net11),
    .out (net107)
  );
  or_cell or3 (
    .a (net108),
    .b (net109),
    .out (net25)
  );
  or_cell or4 (
    .a (net17),
    .b (net16),
    .out (net108)
  );
  or_cell or5 (
    .a (net15),
    .b (net110),
    .out (net109)
  );
  or_cell or6 (
    .a (net14),
    .b (net27),
    .out (net110)
  );
endmodule
