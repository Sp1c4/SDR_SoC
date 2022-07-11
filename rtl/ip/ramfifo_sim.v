// Verilog netlist created by Tang Dynasty v5.6.53426
// Tue Jun 28 18:13:32 2022

`timescale 1ns / 1ps
module ramfifo  // ramfifo.v(14)
  (
  clk,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag,
  rdusedw,
  wrusedw
  );

  input clk;  // ramfifo.v(24)
  input [9:0] di;  // ramfifo.v(23)
  input re;  // ramfifo.v(25)
  input rst;  // ramfifo.v(22)
  input we;  // ramfifo.v(24)
  output [9:0] do;  // ramfifo.v(27)
  output empty_flag;  // ramfifo.v(28)
  output full_flag;  // ramfifo.v(29)
  output [15:0] rdusedw;  // ramfifo.v(30)
  output [15:0] wrusedw;  // ramfifo.v(31)

  wire  logic_ramfifo_syn_1261;
  wire  logic_ramfifo_syn_1262;
  wire  logic_ramfifo_syn_1263;
  wire  logic_ramfifo_syn_1264;
  wire  logic_ramfifo_syn_1265;
  wire  logic_ramfifo_syn_1266;
  wire  logic_ramfifo_syn_1286;
  wire  logic_ramfifo_syn_1287;
  wire  logic_ramfifo_syn_1288;
  wire  logic_ramfifo_syn_1289;
  wire  logic_ramfifo_syn_1290;
  wire  logic_ramfifo_syn_1291;
  wire  logic_ramfifo_syn_1311;
  wire  logic_ramfifo_syn_1312;
  wire  logic_ramfifo_syn_1313;
  wire  logic_ramfifo_syn_1314;
  wire  logic_ramfifo_syn_1315;
  wire  logic_ramfifo_syn_1316;
  wire  logic_ramfifo_syn_1336;
  wire  logic_ramfifo_syn_1337;
  wire  logic_ramfifo_syn_1338;
  wire  logic_ramfifo_syn_1339;
  wire  logic_ramfifo_syn_1340;
  wire  logic_ramfifo_syn_1341;
  wire  logic_ramfifo_syn_1361;
  wire  logic_ramfifo_syn_1362;
  wire  logic_ramfifo_syn_1363;
  wire  logic_ramfifo_syn_1364;
  wire  logic_ramfifo_syn_1365;
  wire  logic_ramfifo_syn_1366;
  wire  logic_ramfifo_syn_1386;
  wire  logic_ramfifo_syn_1387;
  wire  logic_ramfifo_syn_1388;
  wire  logic_ramfifo_syn_1389;
  wire  logic_ramfifo_syn_1390;
  wire  logic_ramfifo_syn_1391;
  wire  logic_ramfifo_syn_1411;
  wire  logic_ramfifo_syn_1412;
  wire  logic_ramfifo_syn_1413;
  wire  logic_ramfifo_syn_1414;
  wire  logic_ramfifo_syn_1415;
  wire  logic_ramfifo_syn_1416;
  wire  logic_ramfifo_syn_1436;
  wire  logic_ramfifo_syn_1437;
  wire  logic_ramfifo_syn_1438;
  wire  logic_ramfifo_syn_1439;
  wire  logic_ramfifo_syn_1440;
  wire  logic_ramfifo_syn_1441;
  wire  logic_ramfifo_syn_1469;
  wire  logic_ramfifo_syn_1470;
  wire  logic_ramfifo_syn_1502;
  wire  logic_ramfifo_syn_1503;
  wire [0:2] logic_ramfifo_syn_873;
  wire logic_ramfifo_syn_1;  // ramfifo.v(39)
  wire logic_ramfifo_syn_2;  // ramfifo.v(39)
  wire logic_ramfifo_syn_3;  // ramfifo.v(39)
  wire logic_ramfifo_syn_4;  // ramfifo.v(39)
  wire logic_ramfifo_syn_5;  // ramfifo.v(39)
  wire logic_ramfifo_syn_6;  // ramfifo.v(39)
  wire logic_ramfifo_syn_7;  // ramfifo.v(39)
  wire logic_ramfifo_syn_8;  // ramfifo.v(39)
  wire logic_ramfifo_syn_9;  // ramfifo.v(39)
  wire logic_ramfifo_syn_10;  // ramfifo.v(39)
  wire logic_ramfifo_syn_11;  // ramfifo.v(39)
  wire logic_ramfifo_syn_12;  // ramfifo.v(39)
  wire logic_ramfifo_syn_13;  // ramfifo.v(39)
  wire logic_ramfifo_syn_14;  // ramfifo.v(39)
  wire logic_ramfifo_syn_15;  // ramfifo.v(39)
  wire logic_ramfifo_syn_16;  // ramfifo.v(39)
  wire logic_ramfifo_syn_17;  // ramfifo.v(39)
  wire logic_ramfifo_syn_18;  // ramfifo.v(39)
  wire logic_ramfifo_syn_19;  // ramfifo.v(39)
  wire logic_ramfifo_syn_20;  // ramfifo.v(39)
  wire logic_ramfifo_syn_21;  // ramfifo.v(39)
  wire logic_ramfifo_syn_22;  // ramfifo.v(39)
  wire logic_ramfifo_syn_23;  // ramfifo.v(39)
  wire logic_ramfifo_syn_24;  // ramfifo.v(39)
  wire logic_ramfifo_syn_25;  // ramfifo.v(39)
  wire logic_ramfifo_syn_26;  // ramfifo.v(39)
  wire logic_ramfifo_syn_27;  // ramfifo.v(39)
  wire logic_ramfifo_syn_28;  // ramfifo.v(39)
  wire logic_ramfifo_syn_29;  // ramfifo.v(39)
  wire logic_ramfifo_syn_30;  // ramfifo.v(39)
  wire logic_ramfifo_syn_31;  // ramfifo.v(39)
  wire logic_ramfifo_syn_32;  // ramfifo.v(39)
  wire logic_ramfifo_syn_33;  // ramfifo.v(39)
  wire logic_ramfifo_syn_34;  // ramfifo.v(39)
  wire logic_ramfifo_syn_35;  // ramfifo.v(39)
  wire logic_ramfifo_syn_36;  // ramfifo.v(39)
  wire logic_ramfifo_syn_37;  // ramfifo.v(39)
  wire logic_ramfifo_syn_38;  // ramfifo.v(39)
  wire logic_ramfifo_syn_39;  // ramfifo.v(39)
  wire logic_ramfifo_syn_40;  // ramfifo.v(39)
  wire logic_ramfifo_syn_41;  // ramfifo.v(39)
  wire logic_ramfifo_syn_42;  // ramfifo.v(39)
  wire logic_ramfifo_syn_43;  // ramfifo.v(39)
  wire logic_ramfifo_syn_44;  // ramfifo.v(39)
  wire logic_ramfifo_syn_45;  // ramfifo.v(39)
  wire logic_ramfifo_syn_46;  // ramfifo.v(39)
  wire logic_ramfifo_syn_47;  // ramfifo.v(39)
  wire logic_ramfifo_syn_48;  // ramfifo.v(39)
  wire logic_ramfifo_syn_65;  // ramfifo.v(39)
  wire logic_ramfifo_syn_66;  // ramfifo.v(39)
  wire logic_ramfifo_syn_67;  // ramfifo.v(39)
  wire logic_ramfifo_syn_68;  // ramfifo.v(39)
  wire logic_ramfifo_syn_69;  // ramfifo.v(39)
  wire logic_ramfifo_syn_70;  // ramfifo.v(39)
  wire logic_ramfifo_syn_71;  // ramfifo.v(39)
  wire logic_ramfifo_syn_72;  // ramfifo.v(39)
  wire logic_ramfifo_syn_73;  // ramfifo.v(39)
  wire logic_ramfifo_syn_74;  // ramfifo.v(39)
  wire logic_ramfifo_syn_75;  // ramfifo.v(39)
  wire logic_ramfifo_syn_76;  // ramfifo.v(39)
  wire logic_ramfifo_syn_77;  // ramfifo.v(39)
  wire logic_ramfifo_syn_78;  // ramfifo.v(39)
  wire logic_ramfifo_syn_79;  // ramfifo.v(39)
  wire logic_ramfifo_syn_80;  // ramfifo.v(39)
  wire logic_ramfifo_syn_81;  // ramfifo.v(39)
  wire logic_ramfifo_syn_82;  // ramfifo.v(39)
  wire logic_ramfifo_syn_83;  // ramfifo.v(39)
  wire logic_ramfifo_syn_84;  // ramfifo.v(39)
  wire logic_ramfifo_syn_85;  // ramfifo.v(39)
  wire logic_ramfifo_syn_86;  // ramfifo.v(39)
  wire logic_ramfifo_syn_87;  // ramfifo.v(39)
  wire logic_ramfifo_syn_88;  // ramfifo.v(39)
  wire logic_ramfifo_syn_89;  // ramfifo.v(39)
  wire logic_ramfifo_syn_90;  // ramfifo.v(39)
  wire logic_ramfifo_syn_91;  // ramfifo.v(39)
  wire logic_ramfifo_syn_92;  // ramfifo.v(39)
  wire logic_ramfifo_syn_93;  // ramfifo.v(39)
  wire logic_ramfifo_syn_94;  // ramfifo.v(39)
  wire logic_ramfifo_syn_95;  // ramfifo.v(39)
  wire logic_ramfifo_syn_96;  // ramfifo.v(39)
  wire logic_ramfifo_syn_97;  // ramfifo.v(39)
  wire logic_ramfifo_syn_98;  // ramfifo.v(39)
  wire logic_ramfifo_syn_99;  // ramfifo.v(39)
  wire logic_ramfifo_syn_100;  // ramfifo.v(39)
  wire logic_ramfifo_syn_101;  // ramfifo.v(39)
  wire logic_ramfifo_syn_102;  // ramfifo.v(39)
  wire logic_ramfifo_syn_103;  // ramfifo.v(39)
  wire logic_ramfifo_syn_104;  // ramfifo.v(39)
  wire logic_ramfifo_syn_105;  // ramfifo.v(39)
  wire logic_ramfifo_syn_106;  // ramfifo.v(39)
  wire logic_ramfifo_syn_107;  // ramfifo.v(39)
  wire logic_ramfifo_syn_108;  // ramfifo.v(39)
  wire logic_ramfifo_syn_109;  // ramfifo.v(39)
  wire logic_ramfifo_syn_110;  // ramfifo.v(39)
  wire logic_ramfifo_syn_111;  // ramfifo.v(39)
  wire logic_ramfifo_syn_113;  // ramfifo.v(39)
  wire logic_ramfifo_syn_114;  // ramfifo.v(39)
  wire logic_ramfifo_syn_115;  // ramfifo.v(39)
  wire logic_ramfifo_syn_116;  // ramfifo.v(39)
  wire logic_ramfifo_syn_117;  // ramfifo.v(39)
  wire logic_ramfifo_syn_118;  // ramfifo.v(39)
  wire logic_ramfifo_syn_119;  // ramfifo.v(39)
  wire logic_ramfifo_syn_120;  // ramfifo.v(39)
  wire logic_ramfifo_syn_121;  // ramfifo.v(39)
  wire logic_ramfifo_syn_122;  // ramfifo.v(39)
  wire logic_ramfifo_syn_123;  // ramfifo.v(39)
  wire logic_ramfifo_syn_124;  // ramfifo.v(39)
  wire logic_ramfifo_syn_125;  // ramfifo.v(39)
  wire logic_ramfifo_syn_126;  // ramfifo.v(39)
  wire logic_ramfifo_syn_127;  // ramfifo.v(39)
  wire logic_ramfifo_syn_128;  // ramfifo.v(39)
  wire logic_ramfifo_syn_129;  // ramfifo.v(39)
  wire logic_ramfifo_syn_130;  // ramfifo.v(39)
  wire logic_ramfifo_syn_131;  // ramfifo.v(39)
  wire logic_ramfifo_syn_132;  // ramfifo.v(39)
  wire logic_ramfifo_syn_133;  // ramfifo.v(39)
  wire logic_ramfifo_syn_134;  // ramfifo.v(39)
  wire logic_ramfifo_syn_135;  // ramfifo.v(39)
  wire logic_ramfifo_syn_136;  // ramfifo.v(39)
  wire logic_ramfifo_syn_137;  // ramfifo.v(39)
  wire logic_ramfifo_syn_138;  // ramfifo.v(39)
  wire logic_ramfifo_syn_139;  // ramfifo.v(39)
  wire logic_ramfifo_syn_140;  // ramfifo.v(39)
  wire logic_ramfifo_syn_141;  // ramfifo.v(39)
  wire logic_ramfifo_syn_142;  // ramfifo.v(39)
  wire logic_ramfifo_syn_143;  // ramfifo.v(39)
  wire logic_ramfifo_syn_144;  // ramfifo.v(39)
  wire logic_ramfifo_syn_145;  // ramfifo.v(39)
  wire logic_ramfifo_syn_146;  // ramfifo.v(39)
  wire logic_ramfifo_syn_147;  // ramfifo.v(39)
  wire logic_ramfifo_syn_148;  // ramfifo.v(39)
  wire logic_ramfifo_syn_149;  // ramfifo.v(39)
  wire logic_ramfifo_syn_150;  // ramfifo.v(39)
  wire logic_ramfifo_syn_151;  // ramfifo.v(39)
  wire logic_ramfifo_syn_152;  // ramfifo.v(39)
  wire logic_ramfifo_syn_153;  // ramfifo.v(39)
  wire logic_ramfifo_syn_154;  // ramfifo.v(39)
  wire logic_ramfifo_syn_155;  // ramfifo.v(39)
  wire logic_ramfifo_syn_156;  // ramfifo.v(39)
  wire logic_ramfifo_syn_157;  // ramfifo.v(39)
  wire logic_ramfifo_syn_158;  // ramfifo.v(39)
  wire logic_ramfifo_syn_159;  // ramfifo.v(39)
  wire logic_ramfifo_syn_206;  // ramfifo.v(39)
  wire logic_ramfifo_syn_208;  // ramfifo.v(39)
  wire logic_ramfifo_syn_212;  // ramfifo.v(39)
  wire logic_ramfifo_syn_213;  // ramfifo.v(39)
  wire logic_ramfifo_syn_214;  // ramfifo.v(39)
  wire logic_ramfifo_syn_215;  // ramfifo.v(39)
  wire logic_ramfifo_syn_216;  // ramfifo.v(39)
  wire logic_ramfifo_syn_217;  // ramfifo.v(39)
  wire logic_ramfifo_syn_218;  // ramfifo.v(39)
  wire logic_ramfifo_syn_219;  // ramfifo.v(39)
  wire logic_ramfifo_syn_220;  // ramfifo.v(39)
  wire logic_ramfifo_syn_221;  // ramfifo.v(39)
  wire logic_ramfifo_syn_222;  // ramfifo.v(39)
  wire logic_ramfifo_syn_223;  // ramfifo.v(39)
  wire logic_ramfifo_syn_224;  // ramfifo.v(39)
  wire logic_ramfifo_syn_225;  // ramfifo.v(39)
  wire logic_ramfifo_syn_226;  // ramfifo.v(39)
  wire logic_ramfifo_syn_227;  // ramfifo.v(39)
  wire logic_ramfifo_syn_228;  // ramfifo.v(39)
  wire logic_ramfifo_syn_232;  // ramfifo.v(39)
  wire logic_ramfifo_syn_234;  // ramfifo.v(39)
  wire logic_ramfifo_syn_258;  // ramfifo.v(39)
  wire logic_ramfifo_syn_278;  // ramfifo.v(39)
  wire logic_ramfifo_syn_279;  // ramfifo.v(39)
  wire logic_ramfifo_syn_280;  // ramfifo.v(39)
  wire logic_ramfifo_syn_281;  // ramfifo.v(39)
  wire logic_ramfifo_syn_282;  // ramfifo.v(39)
  wire logic_ramfifo_syn_283;  // ramfifo.v(39)
  wire logic_ramfifo_syn_284;  // ramfifo.v(39)
  wire logic_ramfifo_syn_285;  // ramfifo.v(39)
  wire logic_ramfifo_syn_286;  // ramfifo.v(39)
  wire logic_ramfifo_syn_287;  // ramfifo.v(39)
  wire logic_ramfifo_syn_288;  // ramfifo.v(39)
  wire logic_ramfifo_syn_289;  // ramfifo.v(39)
  wire logic_ramfifo_syn_290;  // ramfifo.v(39)
  wire logic_ramfifo_syn_291;  // ramfifo.v(39)
  wire logic_ramfifo_syn_292;  // ramfifo.v(39)
  wire logic_ramfifo_syn_293;  // ramfifo.v(39)
  wire logic_ramfifo_syn_316;  // ramfifo.v(39)
  wire logic_ramfifo_syn_318;  // ramfifo.v(39)
  wire logic_ramfifo_syn_320;  // ramfifo.v(39)
  wire logic_ramfifo_syn_322;  // ramfifo.v(39)
  wire logic_ramfifo_syn_324;  // ramfifo.v(39)
  wire logic_ramfifo_syn_326;  // ramfifo.v(39)
  wire logic_ramfifo_syn_328;  // ramfifo.v(39)
  wire logic_ramfifo_syn_330;  // ramfifo.v(39)
  wire logic_ramfifo_syn_332;  // ramfifo.v(39)
  wire logic_ramfifo_syn_334;  // ramfifo.v(39)
  wire logic_ramfifo_syn_336;  // ramfifo.v(39)
  wire logic_ramfifo_syn_338;  // ramfifo.v(39)
  wire logic_ramfifo_syn_340;  // ramfifo.v(39)
  wire logic_ramfifo_syn_342;  // ramfifo.v(39)
  wire logic_ramfifo_syn_344;  // ramfifo.v(39)
  wire logic_ramfifo_syn_349;  // ramfifo.v(39)
  wire logic_ramfifo_syn_351;  // ramfifo.v(39)
  wire logic_ramfifo_syn_353;  // ramfifo.v(39)
  wire logic_ramfifo_syn_355;  // ramfifo.v(39)
  wire logic_ramfifo_syn_357;  // ramfifo.v(39)
  wire logic_ramfifo_syn_359;  // ramfifo.v(39)
  wire logic_ramfifo_syn_361;  // ramfifo.v(39)
  wire logic_ramfifo_syn_363;  // ramfifo.v(39)
  wire logic_ramfifo_syn_365;  // ramfifo.v(39)
  wire logic_ramfifo_syn_367;  // ramfifo.v(39)
  wire logic_ramfifo_syn_369;  // ramfifo.v(39)
  wire logic_ramfifo_syn_371;  // ramfifo.v(39)
  wire logic_ramfifo_syn_373;  // ramfifo.v(39)
  wire logic_ramfifo_syn_375;  // ramfifo.v(39)
  wire logic_ramfifo_syn_379;  // ramfifo.v(39)
  wire logic_ramfifo_syn_381;  // ramfifo.v(39)
  wire logic_ramfifo_syn_383;  // ramfifo.v(39)
  wire logic_ramfifo_syn_385;  // ramfifo.v(39)
  wire logic_ramfifo_syn_387;  // ramfifo.v(39)
  wire logic_ramfifo_syn_389;  // ramfifo.v(39)
  wire logic_ramfifo_syn_391;  // ramfifo.v(39)
  wire logic_ramfifo_syn_393;  // ramfifo.v(39)
  wire logic_ramfifo_syn_395;  // ramfifo.v(39)
  wire logic_ramfifo_syn_397;  // ramfifo.v(39)
  wire logic_ramfifo_syn_399;  // ramfifo.v(39)
  wire logic_ramfifo_syn_401;  // ramfifo.v(39)
  wire logic_ramfifo_syn_403;  // ramfifo.v(39)
  wire logic_ramfifo_syn_405;  // ramfifo.v(39)
  wire logic_ramfifo_syn_407;  // ramfifo.v(39)
  wire logic_ramfifo_syn_412;  // ramfifo.v(39)
  wire logic_ramfifo_syn_414;  // ramfifo.v(39)
  wire logic_ramfifo_syn_416;  // ramfifo.v(39)
  wire logic_ramfifo_syn_418;  // ramfifo.v(39)
  wire logic_ramfifo_syn_420;  // ramfifo.v(39)
  wire logic_ramfifo_syn_422;  // ramfifo.v(39)
  wire logic_ramfifo_syn_424;  // ramfifo.v(39)
  wire logic_ramfifo_syn_426;  // ramfifo.v(39)
  wire logic_ramfifo_syn_428;  // ramfifo.v(39)
  wire logic_ramfifo_syn_430;  // ramfifo.v(39)
  wire logic_ramfifo_syn_432;  // ramfifo.v(39)
  wire logic_ramfifo_syn_434;  // ramfifo.v(39)
  wire logic_ramfifo_syn_436;  // ramfifo.v(39)
  wire logic_ramfifo_syn_438;  // ramfifo.v(39)
  wire logic_ramfifo_syn_641;  // ramfifo.v(39)
  wire logic_ramfifo_syn_642;  // ramfifo.v(39)
  wire logic_ramfifo_syn_643;  // ramfifo.v(39)
  wire logic_ramfifo_syn_644;  // ramfifo.v(39)
  wire logic_ramfifo_syn_645;  // ramfifo.v(39)
  wire logic_ramfifo_syn_646;  // ramfifo.v(39)
  wire logic_ramfifo_syn_647;  // ramfifo.v(39)
  wire logic_ramfifo_syn_648;  // ramfifo.v(39)
  wire logic_ramfifo_syn_651;  // ramfifo.v(39)
  wire logic_ramfifo_syn_653;  // ramfifo.v(39)
  wire logic_ramfifo_syn_655;  // ramfifo.v(39)
  wire logic_ramfifo_syn_656;  // ramfifo.v(39)
  wire logic_ramfifo_syn_659;  // ramfifo.v(39)
  wire logic_ramfifo_syn_661;  // ramfifo.v(39)
  wire logic_ramfifo_syn_663;  // ramfifo.v(39)
  wire logic_ramfifo_syn_664;  // ramfifo.v(39)
  wire logic_ramfifo_syn_668;  // ramfifo.v(39)
  wire logic_ramfifo_syn_670;  // ramfifo.v(39)
  wire logic_ramfifo_syn_671;  // ramfifo.v(39)
  wire logic_ramfifo_syn_672;  // ramfifo.v(39)
  wire logic_ramfifo_syn_673;  // ramfifo.v(39)
  wire logic_ramfifo_syn_674;  // ramfifo.v(39)
  wire logic_ramfifo_syn_675;  // ramfifo.v(39)
  wire logic_ramfifo_syn_676;  // ramfifo.v(39)
  wire logic_ramfifo_syn_677;  // ramfifo.v(39)
  wire logic_ramfifo_syn_683;  // ramfifo.v(39)
  wire logic_ramfifo_syn_689;  // ramfifo.v(39)
  wire logic_ramfifo_syn_693;  // ramfifo.v(39)
  wire logic_ramfifo_syn_695;  // ramfifo.v(39)
  wire logic_ramfifo_syn_696;  // ramfifo.v(39)
  wire logic_ramfifo_syn_697;  // ramfifo.v(39)
  wire logic_ramfifo_syn_698;  // ramfifo.v(39)
  wire logic_ramfifo_syn_699;  // ramfifo.v(39)
  wire logic_ramfifo_syn_700;  // ramfifo.v(39)
  wire logic_ramfifo_syn_701;  // ramfifo.v(39)
  wire logic_ramfifo_syn_702;  // ramfifo.v(39)
  wire logic_ramfifo_syn_708;  // ramfifo.v(39)
  wire logic_ramfifo_syn_714;  // ramfifo.v(39)
  wire logic_ramfifo_syn_718;  // ramfifo.v(39)
  wire logic_ramfifo_syn_720;  // ramfifo.v(39)
  wire logic_ramfifo_syn_721;  // ramfifo.v(39)
  wire logic_ramfifo_syn_722;  // ramfifo.v(39)
  wire logic_ramfifo_syn_723;  // ramfifo.v(39)
  wire logic_ramfifo_syn_724;  // ramfifo.v(39)
  wire logic_ramfifo_syn_725;  // ramfifo.v(39)
  wire logic_ramfifo_syn_726;  // ramfifo.v(39)
  wire logic_ramfifo_syn_727;  // ramfifo.v(39)
  wire logic_ramfifo_syn_731;  // ramfifo.v(39)
  wire logic_ramfifo_syn_735;  // ramfifo.v(39)
  wire logic_ramfifo_syn_739;  // ramfifo.v(39)
  wire logic_ramfifo_syn_741;  // ramfifo.v(39)
  wire logic_ramfifo_syn_742;  // ramfifo.v(39)
  wire logic_ramfifo_syn_743;  // ramfifo.v(39)
  wire logic_ramfifo_syn_744;  // ramfifo.v(39)
  wire logic_ramfifo_syn_745;  // ramfifo.v(39)
  wire logic_ramfifo_syn_746;  // ramfifo.v(39)
  wire logic_ramfifo_syn_747;  // ramfifo.v(39)
  wire logic_ramfifo_syn_748;  // ramfifo.v(39)
  wire logic_ramfifo_syn_754;  // ramfifo.v(39)
  wire logic_ramfifo_syn_760;  // ramfifo.v(39)
  wire logic_ramfifo_syn_764;  // ramfifo.v(39)
  wire logic_ramfifo_syn_766;  // ramfifo.v(39)
  wire logic_ramfifo_syn_767;  // ramfifo.v(39)
  wire logic_ramfifo_syn_768;  // ramfifo.v(39)
  wire logic_ramfifo_syn_769;  // ramfifo.v(39)
  wire logic_ramfifo_syn_770;  // ramfifo.v(39)
  wire logic_ramfifo_syn_771;  // ramfifo.v(39)
  wire logic_ramfifo_syn_772;  // ramfifo.v(39)
  wire logic_ramfifo_syn_773;  // ramfifo.v(39)
  wire logic_ramfifo_syn_777;  // ramfifo.v(39)
  wire logic_ramfifo_syn_781;  // ramfifo.v(39)
  wire logic_ramfifo_syn_785;  // ramfifo.v(39)
  wire logic_ramfifo_syn_787;  // ramfifo.v(39)
  wire logic_ramfifo_syn_788;  // ramfifo.v(39)
  wire logic_ramfifo_syn_789;  // ramfifo.v(39)
  wire logic_ramfifo_syn_790;  // ramfifo.v(39)
  wire logic_ramfifo_syn_791;  // ramfifo.v(39)
  wire logic_ramfifo_syn_792;  // ramfifo.v(39)
  wire logic_ramfifo_syn_793;  // ramfifo.v(39)
  wire logic_ramfifo_syn_794;  // ramfifo.v(39)
  wire logic_ramfifo_syn_798;  // ramfifo.v(39)
  wire logic_ramfifo_syn_802;  // ramfifo.v(39)
  wire logic_ramfifo_syn_806;  // ramfifo.v(39)
  wire logic_ramfifo_syn_808;  // ramfifo.v(39)
  wire logic_ramfifo_syn_809;  // ramfifo.v(39)
  wire logic_ramfifo_syn_810;  // ramfifo.v(39)
  wire logic_ramfifo_syn_811;  // ramfifo.v(39)
  wire logic_ramfifo_syn_812;  // ramfifo.v(39)
  wire logic_ramfifo_syn_813;  // ramfifo.v(39)
  wire logic_ramfifo_syn_814;  // ramfifo.v(39)
  wire logic_ramfifo_syn_815;  // ramfifo.v(39)
  wire logic_ramfifo_syn_817;  // ramfifo.v(39)
  wire logic_ramfifo_syn_819;  // ramfifo.v(39)
  wire logic_ramfifo_syn_823;  // ramfifo.v(39)
  wire logic_ramfifo_syn_825;  // ramfifo.v(39)
  wire logic_ramfifo_syn_835;  // ramfifo.v(39)
  wire logic_ramfifo_syn_845;  // ramfifo.v(39)
  wire logic_ramfifo_syn_851;  // ramfifo.v(39)
  wire logic_ramfifo_syn_857;  // ramfifo.v(39)
  wire logic_ramfifo_syn_863;  // ramfifo.v(39)
  wire logic_ramfifo_syn_869;  // ramfifo.v(39)
  wire logic_ramfifo_syn_871;  // ramfifo.v(39)
  wire logic_ramfifo_syn_891;  // ramfifo.v(39)
  wire logic_ramfifo_syn_893;  // ramfifo.v(39)
  wire logic_ramfifo_syn_895;  // ramfifo.v(39)
  wire logic_ramfifo_syn_961;  // ramfifo.v(39)
  wire logic_ramfifo_syn_962;  // ramfifo.v(39)
  wire logic_ramfifo_syn_963;  // ramfifo.v(39)
  wire logic_ramfifo_syn_964;  // ramfifo.v(39)
  wire logic_ramfifo_syn_965;  // ramfifo.v(39)
  wire logic_ramfifo_syn_966;  // ramfifo.v(39)
  wire logic_ramfifo_syn_967;  // ramfifo.v(39)
  wire logic_ramfifo_syn_968;  // ramfifo.v(39)
  wire logic_ramfifo_syn_969;  // ramfifo.v(39)
  wire logic_ramfifo_syn_970;  // ramfifo.v(39)
  wire logic_ramfifo_syn_971;  // ramfifo.v(39)
  wire logic_ramfifo_syn_972;  // ramfifo.v(39)
  wire logic_ramfifo_syn_973;  // ramfifo.v(39)
  wire logic_ramfifo_syn_974;  // ramfifo.v(39)
  wire logic_ramfifo_syn_975;  // ramfifo.v(39)
  wire logic_ramfifo_syn_976;  // ramfifo.v(39)
  wire logic_ramfifo_syn_977;  // ramfifo.v(39)
  wire logic_ramfifo_syn_978;  // ramfifo.v(39)
  wire logic_ramfifo_syn_979;  // ramfifo.v(39)
  wire logic_ramfifo_syn_980;  // ramfifo.v(39)
  wire logic_ramfifo_syn_981;  // ramfifo.v(39)
  wire logic_ramfifo_syn_982;  // ramfifo.v(39)
  wire logic_ramfifo_syn_983;  // ramfifo.v(39)
  wire logic_ramfifo_syn_984;  // ramfifo.v(39)
  wire logic_ramfifo_syn_985;  // ramfifo.v(39)
  wire logic_ramfifo_syn_986;  // ramfifo.v(39)
  wire logic_ramfifo_syn_987;  // ramfifo.v(39)
  wire logic_ramfifo_syn_988;  // ramfifo.v(39)
  wire logic_ramfifo_syn_989;  // ramfifo.v(39)
  wire logic_ramfifo_syn_990;  // ramfifo.v(39)
  wire logic_ramfifo_syn_991;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1057;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1058;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1059;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1060;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1061;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1062;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1063;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1064;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1065;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1066;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1067;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1068;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1069;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1070;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1071;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1072;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1073;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1074;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1075;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1076;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1077;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1078;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1079;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1080;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1081;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1082;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1083;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1084;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1085;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1086;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1087;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1154;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1155;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1156;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1157;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1158;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1159;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1160;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1161;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1162;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1163;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1164;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1165;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1166;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1167;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1168;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1169;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1237;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1238;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1239;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1240;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1241;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1242;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1243;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1244;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1245;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1246;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1247;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1248;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1249;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1250;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1251;  // ramfifo.v(39)
  wire logic_ramfifo_syn_1252;  // ramfifo.v(39)
  wire clk_syn_1;  // ramfifo.v(24)
  wire clk_syn_2;  // ramfifo.v(24)
  wire clk_syn_3;  // ramfifo.v(24)
  wire clk_syn_4;  // ramfifo.v(24)
  wire clk_syn_5;  // ramfifo.v(24)
  wire clk_syn_6;  // ramfifo.v(24)
  wire clk_syn_7;  // ramfifo.v(24)
  wire clk_syn_8;  // ramfifo.v(24)
  wire clk_syn_9;  // ramfifo.v(24)
  wire clk_syn_10;  // ramfifo.v(24)
  wire clk_syn_11;  // ramfifo.v(24)
  wire clk_syn_12;  // ramfifo.v(24)
  wire clk_syn_13;  // ramfifo.v(24)
  wire clk_syn_14;  // ramfifo.v(24)
  wire clk_syn_15;  // ramfifo.v(24)
  wire clk_syn_16;  // ramfifo.v(24)
  wire clk_syn_17;  // ramfifo.v(24)
  wire clk_syn_19;  // ramfifo.v(24)
  wire clk_syn_21;  // ramfifo.v(24)
  wire clk_syn_23;  // ramfifo.v(24)
  wire clk_syn_25;  // ramfifo.v(24)
  wire clk_syn_27;  // ramfifo.v(24)
  wire clk_syn_29;  // ramfifo.v(24)
  wire clk_syn_31;  // ramfifo.v(24)
  wire clk_syn_33;  // ramfifo.v(24)
  wire clk_syn_35;  // ramfifo.v(24)
  wire clk_syn_37;  // ramfifo.v(24)
  wire clk_syn_39;  // ramfifo.v(24)
  wire clk_syn_41;  // ramfifo.v(24)
  wire clk_syn_43;  // ramfifo.v(24)
  wire clk_syn_45;  // ramfifo.v(24)
  wire clk_syn_47;  // ramfifo.v(24)
  wire clk_syn_49;  // ramfifo.v(24)
  wire clk_syn_55;  // ramfifo.v(24)
  wire clk_syn_57;  // ramfifo.v(24)
  wire clk_syn_59;  // ramfifo.v(24)
  wire clk_syn_61;  // ramfifo.v(24)
  wire clk_syn_63;  // ramfifo.v(24)
  wire clk_syn_65;  // ramfifo.v(24)
  wire clk_syn_67;  // ramfifo.v(24)
  wire clk_syn_69;  // ramfifo.v(24)
  wire clk_syn_71;  // ramfifo.v(24)
  wire clk_syn_73;  // ramfifo.v(24)
  wire clk_syn_75;  // ramfifo.v(24)
  wire clk_syn_77;  // ramfifo.v(24)
  wire clk_syn_79;  // ramfifo.v(24)
  wire clk_syn_81;  // ramfifo.v(24)
  wire clk_syn_83;  // ramfifo.v(24)
  wire clk_syn_85;  // ramfifo.v(24)
  wire clk_syn_87;  // ramfifo.v(24)
  wire clk_syn_89;  // ramfifo.v(24)
  wire clk_syn_91;  // ramfifo.v(24)
  wire clk_syn_93;  // ramfifo.v(24)
  wire clk_syn_95;  // ramfifo.v(24)
  wire clk_syn_97;  // ramfifo.v(24)
  wire clk_syn_99;  // ramfifo.v(24)
  wire clk_syn_101;  // ramfifo.v(24)
  wire clk_syn_103;  // ramfifo.v(24)
  wire clk_syn_105;  // ramfifo.v(24)
  wire clk_syn_107;  // ramfifo.v(24)
  wire clk_syn_109;  // ramfifo.v(24)
  wire clk_syn_111;  // ramfifo.v(24)
  wire clk_syn_113;  // ramfifo.v(24)
  wire clk_syn_115;  // ramfifo.v(24)
  wire clk_syn_116;  // ramfifo.v(24)
  wire clk_syn_117;  // ramfifo.v(24)
  wire clk_syn_118;  // ramfifo.v(24)
  wire clk_syn_119;  // ramfifo.v(24)
  wire clk_syn_120;  // ramfifo.v(24)
  wire clk_syn_121;  // ramfifo.v(24)
  wire clk_syn_122;  // ramfifo.v(24)
  wire clk_syn_123;  // ramfifo.v(24)
  wire clk_syn_124;  // ramfifo.v(24)
  wire clk_syn_125;  // ramfifo.v(24)
  wire clk_syn_126;  // ramfifo.v(24)
  wire clk_syn_127;  // ramfifo.v(24)
  wire clk_syn_128;  // ramfifo.v(24)
  wire clk_syn_129;  // ramfifo.v(24)
  wire clk_syn_130;  // ramfifo.v(24)
  wire clk_syn_131;  // ramfifo.v(24)
  wire clk_syn_132;  // ramfifo.v(24)
  wire clk_syn_134;  // ramfifo.v(24)
  wire clk_syn_135;  // ramfifo.v(24)
  wire clk_syn_136;  // ramfifo.v(24)
  wire clk_syn_137;  // ramfifo.v(24)
  wire clk_syn_138;  // ramfifo.v(24)
  wire clk_syn_139;  // ramfifo.v(24)
  wire clk_syn_140;  // ramfifo.v(24)
  wire clk_syn_141;  // ramfifo.v(24)
  wire clk_syn_142;  // ramfifo.v(24)
  wire clk_syn_143;  // ramfifo.v(24)
  wire clk_syn_144;  // ramfifo.v(24)
  wire clk_syn_145;  // ramfifo.v(24)
  wire clk_syn_146;  // ramfifo.v(24)
  wire clk_syn_147;  // ramfifo.v(24)
  wire clk_syn_148;  // ramfifo.v(24)
  wire clk_syn_149;  // ramfifo.v(24)
  wire clk_syn_150;  // ramfifo.v(24)
  wire clk_syn_152;  // ramfifo.v(24)
  wire clk_syn_154;  // ramfifo.v(24)
  wire clk_syn_156;  // ramfifo.v(24)
  wire clk_syn_158;  // ramfifo.v(24)
  wire clk_syn_160;  // ramfifo.v(24)
  wire clk_syn_162;  // ramfifo.v(24)
  wire clk_syn_164;  // ramfifo.v(24)
  wire clk_syn_166;  // ramfifo.v(24)
  wire clk_syn_168;  // ramfifo.v(24)
  wire clk_syn_170;  // ramfifo.v(24)
  wire clk_syn_172;  // ramfifo.v(24)
  wire clk_syn_174;  // ramfifo.v(24)
  wire clk_syn_176;  // ramfifo.v(24)
  wire clk_syn_178;  // ramfifo.v(24)
  wire clk_syn_180;  // ramfifo.v(24)
  wire clk_syn_182;  // ramfifo.v(24)
  wire clk_syn_188;  // ramfifo.v(24)
  wire clk_syn_190;  // ramfifo.v(24)
  wire clk_syn_192;  // ramfifo.v(24)
  wire clk_syn_194;  // ramfifo.v(24)
  wire clk_syn_196;  // ramfifo.v(24)
  wire clk_syn_198;  // ramfifo.v(24)
  wire clk_syn_200;  // ramfifo.v(24)
  wire clk_syn_202;  // ramfifo.v(24)
  wire clk_syn_204;  // ramfifo.v(24)
  wire clk_syn_206;  // ramfifo.v(24)
  wire clk_syn_208;  // ramfifo.v(24)
  wire clk_syn_210;  // ramfifo.v(24)
  wire clk_syn_212;  // ramfifo.v(24)
  wire clk_syn_214;  // ramfifo.v(24)
  wire clk_syn_216;  // ramfifo.v(24)
  wire clk_syn_218;  // ramfifo.v(24)
  wire clk_syn_220;  // ramfifo.v(24)
  wire clk_syn_222;  // ramfifo.v(24)
  wire clk_syn_224;  // ramfifo.v(24)
  wire clk_syn_226;  // ramfifo.v(24)
  wire clk_syn_228;  // ramfifo.v(24)
  wire clk_syn_230;  // ramfifo.v(24)
  wire clk_syn_232;  // ramfifo.v(24)
  wire clk_syn_234;  // ramfifo.v(24)
  wire clk_syn_236;  // ramfifo.v(24)
  wire clk_syn_238;  // ramfifo.v(24)
  wire clk_syn_240;  // ramfifo.v(24)
  wire clk_syn_242;  // ramfifo.v(24)
  wire clk_syn_244;  // ramfifo.v(24)
  wire clk_syn_246;  // ramfifo.v(24)
  wire clk_syn_248;  // ramfifo.v(24)
  wire clk_syn_249;  // ramfifo.v(24)
  wire clk_syn_250;  // ramfifo.v(24)
  wire clk_syn_251;  // ramfifo.v(24)
  wire clk_syn_252;  // ramfifo.v(24)
  wire clk_syn_253;  // ramfifo.v(24)
  wire clk_syn_254;  // ramfifo.v(24)
  wire clk_syn_255;  // ramfifo.v(24)
  wire clk_syn_256;  // ramfifo.v(24)
  wire clk_syn_257;  // ramfifo.v(24)
  wire clk_syn_258;  // ramfifo.v(24)
  wire clk_syn_259;  // ramfifo.v(24)
  wire clk_syn_260;  // ramfifo.v(24)
  wire clk_syn_261;  // ramfifo.v(24)
  wire clk_syn_262;  // ramfifo.v(24)
  wire clk_syn_263;  // ramfifo.v(24)
  wire clk_syn_264;  // ramfifo.v(24)
  wire clk_syn_265;  // ramfifo.v(24)
  wire re_syn_2;  // ramfifo.v(25)
  wire we_syn_2;  // ramfifo.v(24)
  wire _al_n1_syn_4;
  wire _al_n1_syn_6;
  wire _al_n1_syn_8;
  wire _al_n1_syn_10;
  wire _al_n1_syn_12;
  wire _al_n1_syn_14;
  wire _al_n1_syn_16;
  wire _al_n1_syn_18;
  wire _al_n1_syn_20;
  wire _al_n1_syn_22;
  wire _al_n1_syn_24;
  wire _al_n1_syn_26;
  wire _al_n1_syn_28;
  wire _al_n1_syn_30;
  wire _al_n1_syn_38;
  wire _al_n1_syn_40;
  wire _al_n1_syn_42;
  wire _al_n1_syn_44;
  wire _al_n1_syn_46;
  wire _al_n1_syn_48;
  wire _al_n1_syn_50;
  wire _al_n1_syn_52;
  wire _al_n1_syn_54;
  wire _al_n1_syn_56;
  wire _al_n1_syn_58;
  wire _al_n1_syn_60;
  wire _al_n1_syn_62;
  wire _al_n1_syn_64;

  and _al_n1_syn_11 (_al_n1_syn_12, _al_n1_syn_10, clk_syn_31);
  and _al_n1_syn_13 (_al_n1_syn_14, _al_n1_syn_12, clk_syn_33);
  and _al_n1_syn_15 (_al_n1_syn_16, _al_n1_syn_14, clk_syn_35);
  and _al_n1_syn_17 (_al_n1_syn_18, _al_n1_syn_16, clk_syn_37);
  and _al_n1_syn_19 (_al_n1_syn_20, _al_n1_syn_18, clk_syn_39);
  and _al_n1_syn_21 (_al_n1_syn_22, _al_n1_syn_20, clk_syn_41);
  and _al_n1_syn_23 (_al_n1_syn_24, _al_n1_syn_22, clk_syn_43);
  and _al_n1_syn_25 (_al_n1_syn_26, _al_n1_syn_24, clk_syn_45);
  and _al_n1_syn_27 (_al_n1_syn_28, _al_n1_syn_26, clk_syn_47);
  and _al_n1_syn_29 (_al_n1_syn_30, _al_n1_syn_28, clk_syn_49);
  and _al_n1_syn_3 (_al_n1_syn_4, clk_syn_21, clk_syn_23);
  and _al_n1_syn_37 (_al_n1_syn_38, clk_syn_154, clk_syn_156);
  and _al_n1_syn_39 (_al_n1_syn_40, _al_n1_syn_38, clk_syn_158);
  and _al_n1_syn_41 (_al_n1_syn_42, _al_n1_syn_40, clk_syn_160);
  and _al_n1_syn_43 (_al_n1_syn_44, _al_n1_syn_42, clk_syn_162);
  and _al_n1_syn_45 (_al_n1_syn_46, _al_n1_syn_44, clk_syn_164);
  and _al_n1_syn_47 (_al_n1_syn_48, _al_n1_syn_46, clk_syn_166);
  and _al_n1_syn_49 (_al_n1_syn_50, _al_n1_syn_48, clk_syn_168);
  and _al_n1_syn_5 (_al_n1_syn_6, _al_n1_syn_4, clk_syn_25);
  and _al_n1_syn_51 (_al_n1_syn_52, _al_n1_syn_50, clk_syn_170);
  and _al_n1_syn_53 (_al_n1_syn_54, _al_n1_syn_52, clk_syn_172);
  and _al_n1_syn_55 (_al_n1_syn_56, _al_n1_syn_54, clk_syn_174);
  and _al_n1_syn_57 (_al_n1_syn_58, _al_n1_syn_56, clk_syn_176);
  and _al_n1_syn_59 (_al_n1_syn_60, _al_n1_syn_58, clk_syn_178);
  and _al_n1_syn_61 (_al_n1_syn_62, _al_n1_syn_60, clk_syn_180);
  and _al_n1_syn_63 (_al_n1_syn_64, _al_n1_syn_62, clk_syn_182);
  and _al_n1_syn_7 (_al_n1_syn_8, _al_n1_syn_6, clk_syn_27);
  and _al_n1_syn_9 (_al_n1_syn_10, _al_n1_syn_8, clk_syn_29);
  and clk_syn_100 (clk_syn_101, clk_syn_13, _al_n1_syn_24);  // ramfifo.v(24)
  xor clk_syn_102 (clk_syn_103, clk_syn_14, clk_syn_101);  // ramfifo.v(24)
  and clk_syn_104 (clk_syn_105, clk_syn_14, _al_n1_syn_26);  // ramfifo.v(24)
  xor clk_syn_106 (clk_syn_107, clk_syn_15, clk_syn_105);  // ramfifo.v(24)
  and clk_syn_108 (clk_syn_109, clk_syn_15, _al_n1_syn_28);  // ramfifo.v(24)
  xor clk_syn_110 (clk_syn_111, clk_syn_16, clk_syn_109);  // ramfifo.v(24)
  and clk_syn_112 (clk_syn_113, clk_syn_19, _al_n1_syn_30);  // ramfifo.v(24)
  xor clk_syn_114 (clk_syn_115, clk_syn_17, clk_syn_113);  // ramfifo.v(24)
  or clk_syn_151 (clk_syn_152, clk_syn_150, clk_syn_149);  // ramfifo.v(24)
  not clk_syn_153 (clk_syn_154, clk_syn_134);  // ramfifo.v(24)
  not clk_syn_155 (clk_syn_156, clk_syn_135);  // ramfifo.v(24)
  not clk_syn_157 (clk_syn_158, clk_syn_136);  // ramfifo.v(24)
  not clk_syn_159 (clk_syn_160, clk_syn_137);  // ramfifo.v(24)
  not clk_syn_161 (clk_syn_162, clk_syn_138);  // ramfifo.v(24)
  not clk_syn_163 (clk_syn_164, clk_syn_139);  // ramfifo.v(24)
  not clk_syn_165 (clk_syn_166, clk_syn_140);  // ramfifo.v(24)
  not clk_syn_167 (clk_syn_168, clk_syn_141);  // ramfifo.v(24)
  not clk_syn_169 (clk_syn_170, clk_syn_142);  // ramfifo.v(24)
  not clk_syn_171 (clk_syn_172, clk_syn_143);  // ramfifo.v(24)
  not clk_syn_173 (clk_syn_174, clk_syn_144);  // ramfifo.v(24)
  not clk_syn_175 (clk_syn_176, clk_syn_145);  // ramfifo.v(24)
  not clk_syn_177 (clk_syn_178, clk_syn_146);  // ramfifo.v(24)
  not clk_syn_179 (clk_syn_180, clk_syn_147);  // ramfifo.v(24)
  or clk_syn_18 (clk_syn_19, clk_syn_17, clk_syn_16);  // ramfifo.v(24)
  not clk_syn_181 (clk_syn_182, clk_syn_148);  // ramfifo.v(24)
  xor clk_syn_187 (clk_syn_188, clk_syn_135, clk_syn_134);  // ramfifo.v(24)
  and clk_syn_189 (clk_syn_190, clk_syn_135, clk_syn_154);  // ramfifo.v(24)
  xor clk_syn_191 (clk_syn_192, clk_syn_136, clk_syn_190);  // ramfifo.v(24)
  and clk_syn_193 (clk_syn_194, clk_syn_136, _al_n1_syn_38);  // ramfifo.v(24)
  xor clk_syn_195 (clk_syn_196, clk_syn_137, clk_syn_194);  // ramfifo.v(24)
  and clk_syn_197 (clk_syn_198, clk_syn_137, _al_n1_syn_40);  // ramfifo.v(24)
  xor clk_syn_199 (clk_syn_200, clk_syn_138, clk_syn_198);  // ramfifo.v(24)
  not clk_syn_20 (clk_syn_21, clk_syn_1);  // ramfifo.v(24)
  and clk_syn_201 (clk_syn_202, clk_syn_138, _al_n1_syn_42);  // ramfifo.v(24)
  xor clk_syn_203 (clk_syn_204, clk_syn_139, clk_syn_202);  // ramfifo.v(24)
  and clk_syn_205 (clk_syn_206, clk_syn_139, _al_n1_syn_44);  // ramfifo.v(24)
  xor clk_syn_207 (clk_syn_208, clk_syn_140, clk_syn_206);  // ramfifo.v(24)
  and clk_syn_209 (clk_syn_210, clk_syn_140, _al_n1_syn_46);  // ramfifo.v(24)
  xor clk_syn_211 (clk_syn_212, clk_syn_141, clk_syn_210);  // ramfifo.v(24)
  and clk_syn_213 (clk_syn_214, clk_syn_141, _al_n1_syn_48);  // ramfifo.v(24)
  xor clk_syn_215 (clk_syn_216, clk_syn_142, clk_syn_214);  // ramfifo.v(24)
  and clk_syn_217 (clk_syn_218, clk_syn_142, _al_n1_syn_50);  // ramfifo.v(24)
  xor clk_syn_219 (clk_syn_220, clk_syn_143, clk_syn_218);  // ramfifo.v(24)
  not clk_syn_22 (clk_syn_23, clk_syn_2);  // ramfifo.v(24)
  and clk_syn_221 (clk_syn_222, clk_syn_143, _al_n1_syn_52);  // ramfifo.v(24)
  xor clk_syn_223 (clk_syn_224, clk_syn_144, clk_syn_222);  // ramfifo.v(24)
  and clk_syn_225 (clk_syn_226, clk_syn_144, _al_n1_syn_54);  // ramfifo.v(24)
  xor clk_syn_227 (clk_syn_228, clk_syn_145, clk_syn_226);  // ramfifo.v(24)
  and clk_syn_229 (clk_syn_230, clk_syn_145, _al_n1_syn_56);  // ramfifo.v(24)
  xor clk_syn_231 (clk_syn_232, clk_syn_146, clk_syn_230);  // ramfifo.v(24)
  and clk_syn_233 (clk_syn_234, clk_syn_146, _al_n1_syn_58);  // ramfifo.v(24)
  xor clk_syn_235 (clk_syn_236, clk_syn_147, clk_syn_234);  // ramfifo.v(24)
  and clk_syn_237 (clk_syn_238, clk_syn_147, _al_n1_syn_60);  // ramfifo.v(24)
  xor clk_syn_239 (clk_syn_240, clk_syn_148, clk_syn_238);  // ramfifo.v(24)
  not clk_syn_24 (clk_syn_25, clk_syn_3);  // ramfifo.v(24)
  and clk_syn_241 (clk_syn_242, clk_syn_148, _al_n1_syn_62);  // ramfifo.v(24)
  xor clk_syn_243 (clk_syn_244, clk_syn_149, clk_syn_242);  // ramfifo.v(24)
  and clk_syn_245 (clk_syn_246, clk_syn_152, _al_n1_syn_64);  // ramfifo.v(24)
  xor clk_syn_247 (clk_syn_248, clk_syn_150, clk_syn_246);  // ramfifo.v(24)
  not clk_syn_26 (clk_syn_27, clk_syn_4);  // ramfifo.v(24)
  not clk_syn_28 (clk_syn_29, clk_syn_5);  // ramfifo.v(24)
  not clk_syn_30 (clk_syn_31, clk_syn_6);  // ramfifo.v(24)
  not clk_syn_32 (clk_syn_33, clk_syn_7);  // ramfifo.v(24)
  not clk_syn_34 (clk_syn_35, clk_syn_8);  // ramfifo.v(24)
  not clk_syn_36 (clk_syn_37, clk_syn_9);  // ramfifo.v(24)
  not clk_syn_38 (clk_syn_39, clk_syn_10);  // ramfifo.v(24)
  not clk_syn_40 (clk_syn_41, clk_syn_11);  // ramfifo.v(24)
  AL_DFF_X clk_syn_400 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_116),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_1));  // ramfifo.v(24)
  AL_DFF_X clk_syn_401 (
    .ar(1'b0),
    .as(rst),
    .clk(clk),
    .d(clk_syn_117),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_2));  // ramfifo.v(24)
  AL_DFF_X clk_syn_402 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_118),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_3));  // ramfifo.v(24)
  AL_DFF_X clk_syn_403 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_119),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_4));  // ramfifo.v(24)
  AL_DFF_X clk_syn_404 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_120),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_5));  // ramfifo.v(24)
  AL_DFF_X clk_syn_405 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_121),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_6));  // ramfifo.v(24)
  AL_DFF_X clk_syn_406 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_122),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_7));  // ramfifo.v(24)
  AL_DFF_X clk_syn_407 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_123),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_8));  // ramfifo.v(24)
  AL_DFF_X clk_syn_408 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_124),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_9));  // ramfifo.v(24)
  AL_DFF_X clk_syn_409 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_125),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_10));  // ramfifo.v(24)
  AL_DFF_X clk_syn_410 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_126),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_11));  // ramfifo.v(24)
  AL_DFF_X clk_syn_411 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_127),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_12));  // ramfifo.v(24)
  AL_DFF_X clk_syn_412 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_128),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_13));  // ramfifo.v(24)
  AL_DFF_X clk_syn_413 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_129),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_14));  // ramfifo.v(24)
  AL_DFF_X clk_syn_414 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_130),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_15));  // ramfifo.v(24)
  AL_DFF_X clk_syn_415 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_131),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_16));  // ramfifo.v(24)
  AL_DFF_X clk_syn_416 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_132),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_17));  // ramfifo.v(24)
  AL_DFF_X clk_syn_417 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_249),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_134));  // ramfifo.v(24)
  AL_DFF_X clk_syn_418 (
    .ar(1'b0),
    .as(rst),
    .clk(clk),
    .d(clk_syn_250),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_135));  // ramfifo.v(24)
  AL_DFF_X clk_syn_419 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_251),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_136));  // ramfifo.v(24)
  not clk_syn_42 (clk_syn_43, clk_syn_12);  // ramfifo.v(24)
  AL_DFF_X clk_syn_420 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_252),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_137));  // ramfifo.v(24)
  AL_DFF_X clk_syn_421 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_253),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_138));  // ramfifo.v(24)
  AL_DFF_X clk_syn_422 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_254),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_139));  // ramfifo.v(24)
  AL_DFF_X clk_syn_423 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_255),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_140));  // ramfifo.v(24)
  AL_DFF_X clk_syn_424 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_256),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_141));  // ramfifo.v(24)
  AL_DFF_X clk_syn_425 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_257),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_142));  // ramfifo.v(24)
  AL_DFF_X clk_syn_426 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_258),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_143));  // ramfifo.v(24)
  AL_DFF_X clk_syn_427 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_259),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_144));  // ramfifo.v(24)
  AL_DFF_X clk_syn_428 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_260),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_145));  // ramfifo.v(24)
  AL_DFF_X clk_syn_429 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_261),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_146));  // ramfifo.v(24)
  AL_DFF_X clk_syn_430 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_262),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_147));  // ramfifo.v(24)
  AL_DFF_X clk_syn_431 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_263),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_148));  // ramfifo.v(24)
  AL_DFF_X clk_syn_432 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_264),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_149));  // ramfifo.v(24)
  AL_DFF_X clk_syn_433 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(clk_syn_265),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_syn_150));  // ramfifo.v(24)
  not clk_syn_44 (clk_syn_45, clk_syn_13);  // ramfifo.v(24)
  not clk_syn_46 (clk_syn_47, clk_syn_14);  // ramfifo.v(24)
  not clk_syn_48 (clk_syn_49, clk_syn_15);  // ramfifo.v(24)
  xor clk_syn_54 (clk_syn_55, clk_syn_2, clk_syn_1);  // ramfifo.v(24)
  and clk_syn_56 (clk_syn_57, clk_syn_2, clk_syn_21);  // ramfifo.v(24)
  xor clk_syn_58 (clk_syn_59, clk_syn_3, clk_syn_57);  // ramfifo.v(24)
  and clk_syn_60 (clk_syn_61, clk_syn_3, _al_n1_syn_4);  // ramfifo.v(24)
  xor clk_syn_62 (clk_syn_63, clk_syn_4, clk_syn_61);  // ramfifo.v(24)
  and clk_syn_64 (clk_syn_65, clk_syn_4, _al_n1_syn_6);  // ramfifo.v(24)
  xor clk_syn_66 (clk_syn_67, clk_syn_5, clk_syn_65);  // ramfifo.v(24)
  and clk_syn_68 (clk_syn_69, clk_syn_5, _al_n1_syn_8);  // ramfifo.v(24)
  xor clk_syn_70 (clk_syn_71, clk_syn_6, clk_syn_69);  // ramfifo.v(24)
  and clk_syn_72 (clk_syn_73, clk_syn_6, _al_n1_syn_10);  // ramfifo.v(24)
  xor clk_syn_74 (clk_syn_75, clk_syn_7, clk_syn_73);  // ramfifo.v(24)
  and clk_syn_76 (clk_syn_77, clk_syn_7, _al_n1_syn_12);  // ramfifo.v(24)
  xor clk_syn_78 (clk_syn_79, clk_syn_8, clk_syn_77);  // ramfifo.v(24)
  and clk_syn_80 (clk_syn_81, clk_syn_8, _al_n1_syn_14);  // ramfifo.v(24)
  xor clk_syn_82 (clk_syn_83, clk_syn_9, clk_syn_81);  // ramfifo.v(24)
  and clk_syn_84 (clk_syn_85, clk_syn_9, _al_n1_syn_16);  // ramfifo.v(24)
  xor clk_syn_86 (clk_syn_87, clk_syn_10, clk_syn_85);  // ramfifo.v(24)
  and clk_syn_88 (clk_syn_89, clk_syn_10, _al_n1_syn_18);  // ramfifo.v(24)
  xor clk_syn_90 (clk_syn_91, clk_syn_11, clk_syn_89);  // ramfifo.v(24)
  and clk_syn_92 (clk_syn_93, clk_syn_11, _al_n1_syn_20);  // ramfifo.v(24)
  xor clk_syn_94 (clk_syn_95, clk_syn_12, clk_syn_93);  // ramfifo.v(24)
  and clk_syn_96 (clk_syn_97, clk_syn_12, _al_n1_syn_22);  // ramfifo.v(24)
  xor clk_syn_98 (clk_syn_99, clk_syn_13, clk_syn_97);  // ramfifo.v(24)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  xor logic_ramfifo_syn_1000 (logic_ramfifo_syn_1064, logic_ramfifo_syn_120, logic_ramfifo_syn_40);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1001 (logic_ramfifo_syn_1065, logic_ramfifo_syn_121, logic_ramfifo_syn_41);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1002 (logic_ramfifo_syn_1066, logic_ramfifo_syn_122, logic_ramfifo_syn_42);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1003 (logic_ramfifo_syn_1067, logic_ramfifo_syn_123, logic_ramfifo_syn_43);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1004 (logic_ramfifo_syn_1068, logic_ramfifo_syn_124, logic_ramfifo_syn_44);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1005 (logic_ramfifo_syn_1069, logic_ramfifo_syn_125, logic_ramfifo_syn_45);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1006 (logic_ramfifo_syn_1070, logic_ramfifo_syn_126, logic_ramfifo_syn_46);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1007 (logic_ramfifo_syn_1071, logic_ramfifo_syn_127, logic_ramfifo_syn_47);  // ramfifo.v(39)
  xor logic_ramfifo_syn_1008 (logic_ramfifo_syn_1072, logic_ramfifo_syn_128, logic_ramfifo_syn_48);  // ramfifo.v(39)
  or logic_ramfifo_syn_1009 (logic_ramfifo_syn_1073, logic_ramfifo_syn_1057, logic_ramfifo_syn_1058);  // ramfifo.v(39)
  or logic_ramfifo_syn_1010 (logic_ramfifo_syn_1074, logic_ramfifo_syn_1059, logic_ramfifo_syn_1060);  // ramfifo.v(39)
  or logic_ramfifo_syn_1011 (logic_ramfifo_syn_1075, logic_ramfifo_syn_1073, logic_ramfifo_syn_1074);  // ramfifo.v(39)
  or logic_ramfifo_syn_1012 (logic_ramfifo_syn_1076, logic_ramfifo_syn_1061, logic_ramfifo_syn_1062);  // ramfifo.v(39)
  or logic_ramfifo_syn_1013 (logic_ramfifo_syn_1077, logic_ramfifo_syn_1063, logic_ramfifo_syn_1064);  // ramfifo.v(39)
  or logic_ramfifo_syn_1014 (logic_ramfifo_syn_1078, logic_ramfifo_syn_1076, logic_ramfifo_syn_1077);  // ramfifo.v(39)
  or logic_ramfifo_syn_1015 (logic_ramfifo_syn_1079, logic_ramfifo_syn_1075, logic_ramfifo_syn_1078);  // ramfifo.v(39)
  or logic_ramfifo_syn_1016 (logic_ramfifo_syn_1080, logic_ramfifo_syn_1065, logic_ramfifo_syn_1066);  // ramfifo.v(39)
  or logic_ramfifo_syn_1017 (logic_ramfifo_syn_1081, logic_ramfifo_syn_1067, logic_ramfifo_syn_1068);  // ramfifo.v(39)
  or logic_ramfifo_syn_1018 (logic_ramfifo_syn_1082, logic_ramfifo_syn_1080, logic_ramfifo_syn_1081);  // ramfifo.v(39)
  or logic_ramfifo_syn_1019 (logic_ramfifo_syn_1083, logic_ramfifo_syn_1069, logic_ramfifo_syn_1070);  // ramfifo.v(39)
  or logic_ramfifo_syn_1020 (logic_ramfifo_syn_1084, logic_ramfifo_syn_1071, logic_ramfifo_syn_1072);  // ramfifo.v(39)
  or logic_ramfifo_syn_1021 (logic_ramfifo_syn_1085, logic_ramfifo_syn_1083, logic_ramfifo_syn_1084);  // ramfifo.v(39)
  or logic_ramfifo_syn_1022 (logic_ramfifo_syn_1086, logic_ramfifo_syn_1082, logic_ramfifo_syn_1085);  // ramfifo.v(39)
  or logic_ramfifo_syn_1023 (logic_ramfifo_syn_1087, logic_ramfifo_syn_1079, logic_ramfifo_syn_1086);  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    logic_ramfifo_syn_1088 (
    .a(1'b0),
    .o({logic_ramfifo_syn_1154,open_n49}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1089 (
    .a(logic_ramfifo_syn_97),
    .b(logic_ramfifo_syn_81),
    .c(logic_ramfifo_syn_1154),
    .o({logic_ramfifo_syn_1155,wrusedw[0]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1090 (
    .a(logic_ramfifo_syn_98),
    .b(logic_ramfifo_syn_82),
    .c(logic_ramfifo_syn_1155),
    .o({logic_ramfifo_syn_1156,wrusedw[1]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1091 (
    .a(logic_ramfifo_syn_99),
    .b(logic_ramfifo_syn_83),
    .c(logic_ramfifo_syn_1156),
    .o({logic_ramfifo_syn_1157,wrusedw[2]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1092 (
    .a(logic_ramfifo_syn_100),
    .b(logic_ramfifo_syn_84),
    .c(logic_ramfifo_syn_1157),
    .o({logic_ramfifo_syn_1158,wrusedw[3]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1093 (
    .a(logic_ramfifo_syn_101),
    .b(logic_ramfifo_syn_85),
    .c(logic_ramfifo_syn_1158),
    .o({logic_ramfifo_syn_1159,wrusedw[4]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1094 (
    .a(logic_ramfifo_syn_102),
    .b(logic_ramfifo_syn_86),
    .c(logic_ramfifo_syn_1159),
    .o({logic_ramfifo_syn_1160,wrusedw[5]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1095 (
    .a(logic_ramfifo_syn_103),
    .b(logic_ramfifo_syn_87),
    .c(logic_ramfifo_syn_1160),
    .o({logic_ramfifo_syn_1161,wrusedw[6]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1096 (
    .a(logic_ramfifo_syn_104),
    .b(logic_ramfifo_syn_88),
    .c(logic_ramfifo_syn_1161),
    .o({logic_ramfifo_syn_1162,wrusedw[7]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1097 (
    .a(logic_ramfifo_syn_105),
    .b(logic_ramfifo_syn_89),
    .c(logic_ramfifo_syn_1162),
    .o({logic_ramfifo_syn_1163,wrusedw[8]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1098 (
    .a(logic_ramfifo_syn_106),
    .b(logic_ramfifo_syn_90),
    .c(logic_ramfifo_syn_1163),
    .o({logic_ramfifo_syn_1164,wrusedw[9]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1099 (
    .a(logic_ramfifo_syn_107),
    .b(logic_ramfifo_syn_91),
    .c(logic_ramfifo_syn_1164),
    .o({logic_ramfifo_syn_1165,wrusedw[10]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1100 (
    .a(logic_ramfifo_syn_108),
    .b(logic_ramfifo_syn_92),
    .c(logic_ramfifo_syn_1165),
    .o({logic_ramfifo_syn_1166,wrusedw[11]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1101 (
    .a(logic_ramfifo_syn_109),
    .b(logic_ramfifo_syn_93),
    .c(logic_ramfifo_syn_1166),
    .o({logic_ramfifo_syn_1167,wrusedw[12]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1102 (
    .a(logic_ramfifo_syn_110),
    .b(logic_ramfifo_syn_94),
    .c(logic_ramfifo_syn_1167),
    .o({logic_ramfifo_syn_1168,wrusedw[13]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1103 (
    .a(logic_ramfifo_syn_111),
    .b(logic_ramfifo_syn_95),
    .c(logic_ramfifo_syn_1168),
    .o({logic_ramfifo_syn_1169,wrusedw[14]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1104 (
    .a(logic_ramfifo_syn_32),
    .b(logic_ramfifo_syn_96),
    .c(logic_ramfifo_syn_1169),
    .o({open_n50,wrusedw[15]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    logic_ramfifo_syn_1171 (
    .a(1'b0),
    .o({logic_ramfifo_syn_1237,open_n53}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1172 (
    .a(logic_ramfifo_syn_129),
    .b(logic_ramfifo_syn_145),
    .c(logic_ramfifo_syn_1237),
    .o({logic_ramfifo_syn_1238,rdusedw[0]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1173 (
    .a(logic_ramfifo_syn_130),
    .b(logic_ramfifo_syn_146),
    .c(logic_ramfifo_syn_1238),
    .o({logic_ramfifo_syn_1239,rdusedw[1]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1174 (
    .a(logic_ramfifo_syn_131),
    .b(logic_ramfifo_syn_147),
    .c(logic_ramfifo_syn_1239),
    .o({logic_ramfifo_syn_1240,rdusedw[2]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1175 (
    .a(logic_ramfifo_syn_132),
    .b(logic_ramfifo_syn_148),
    .c(logic_ramfifo_syn_1240),
    .o({logic_ramfifo_syn_1241,rdusedw[3]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1176 (
    .a(logic_ramfifo_syn_133),
    .b(logic_ramfifo_syn_149),
    .c(logic_ramfifo_syn_1241),
    .o({logic_ramfifo_syn_1242,rdusedw[4]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1177 (
    .a(logic_ramfifo_syn_134),
    .b(logic_ramfifo_syn_150),
    .c(logic_ramfifo_syn_1242),
    .o({logic_ramfifo_syn_1243,rdusedw[5]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1178 (
    .a(logic_ramfifo_syn_135),
    .b(logic_ramfifo_syn_151),
    .c(logic_ramfifo_syn_1243),
    .o({logic_ramfifo_syn_1244,rdusedw[6]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1179 (
    .a(logic_ramfifo_syn_136),
    .b(logic_ramfifo_syn_152),
    .c(logic_ramfifo_syn_1244),
    .o({logic_ramfifo_syn_1245,rdusedw[7]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1180 (
    .a(logic_ramfifo_syn_137),
    .b(logic_ramfifo_syn_153),
    .c(logic_ramfifo_syn_1245),
    .o({logic_ramfifo_syn_1246,rdusedw[8]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1181 (
    .a(logic_ramfifo_syn_138),
    .b(logic_ramfifo_syn_154),
    .c(logic_ramfifo_syn_1246),
    .o({logic_ramfifo_syn_1247,rdusedw[9]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1182 (
    .a(logic_ramfifo_syn_139),
    .b(logic_ramfifo_syn_155),
    .c(logic_ramfifo_syn_1247),
    .o({logic_ramfifo_syn_1248,rdusedw[10]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1183 (
    .a(logic_ramfifo_syn_140),
    .b(logic_ramfifo_syn_156),
    .c(logic_ramfifo_syn_1248),
    .o({logic_ramfifo_syn_1249,rdusedw[11]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1184 (
    .a(logic_ramfifo_syn_141),
    .b(logic_ramfifo_syn_157),
    .c(logic_ramfifo_syn_1249),
    .o({logic_ramfifo_syn_1250,rdusedw[12]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1185 (
    .a(logic_ramfifo_syn_142),
    .b(logic_ramfifo_syn_158),
    .c(logic_ramfifo_syn_1250),
    .o({logic_ramfifo_syn_1251,rdusedw[13]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1186 (
    .a(logic_ramfifo_syn_143),
    .b(logic_ramfifo_syn_159),
    .c(logic_ramfifo_syn_1251),
    .o({logic_ramfifo_syn_1252,rdusedw[14]}));  // ramfifo.v(39)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    logic_ramfifo_syn_1187 (
    .a(logic_ramfifo_syn_144),
    .b(logic_ramfifo_syn_80),
    .c(logic_ramfifo_syn_1252),
    .o({open_n54,rdusedw[15]}));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1254 (
    .i0(logic_ramfifo_syn_1261),
    .i1(logic_ramfifo_syn_1262),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[0]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1255 (
    .i0(logic_ramfifo_syn_1263),
    .i1(logic_ramfifo_syn_1264),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1261));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1256 (
    .i0(logic_ramfifo_syn_1265),
    .i1(logic_ramfifo_syn_1266),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1262));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1257 (
    .i0(logic_ramfifo_syn_641),
    .i1(logic_ramfifo_syn_670),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1263));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1258 (
    .i0(logic_ramfifo_syn_695),
    .i1(logic_ramfifo_syn_720),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1264));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1259 (
    .i0(logic_ramfifo_syn_741),
    .i1(logic_ramfifo_syn_766),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1265));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1260 (
    .i0(logic_ramfifo_syn_787),
    .i1(logic_ramfifo_syn_808),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1266));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1279 (
    .i0(logic_ramfifo_syn_1286),
    .i1(logic_ramfifo_syn_1287),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[1]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1280 (
    .i0(logic_ramfifo_syn_1288),
    .i1(logic_ramfifo_syn_1289),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1286));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1281 (
    .i0(logic_ramfifo_syn_1290),
    .i1(logic_ramfifo_syn_1291),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1287));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1282 (
    .i0(logic_ramfifo_syn_642),
    .i1(logic_ramfifo_syn_671),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1288));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1283 (
    .i0(logic_ramfifo_syn_696),
    .i1(logic_ramfifo_syn_721),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1289));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1284 (
    .i0(logic_ramfifo_syn_742),
    .i1(logic_ramfifo_syn_767),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1290));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1285 (
    .i0(logic_ramfifo_syn_788),
    .i1(logic_ramfifo_syn_809),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1291));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1304 (
    .i0(logic_ramfifo_syn_1311),
    .i1(logic_ramfifo_syn_1312),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[2]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1305 (
    .i0(logic_ramfifo_syn_1313),
    .i1(logic_ramfifo_syn_1314),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1311));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1306 (
    .i0(logic_ramfifo_syn_1315),
    .i1(logic_ramfifo_syn_1316),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1312));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1307 (
    .i0(logic_ramfifo_syn_643),
    .i1(logic_ramfifo_syn_672),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1313));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1308 (
    .i0(logic_ramfifo_syn_697),
    .i1(logic_ramfifo_syn_722),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1314));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1309 (
    .i0(logic_ramfifo_syn_743),
    .i1(logic_ramfifo_syn_768),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1315));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1310 (
    .i0(logic_ramfifo_syn_789),
    .i1(logic_ramfifo_syn_810),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1316));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1329 (
    .i0(logic_ramfifo_syn_1336),
    .i1(logic_ramfifo_syn_1337),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[3]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1330 (
    .i0(logic_ramfifo_syn_1338),
    .i1(logic_ramfifo_syn_1339),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1336));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1331 (
    .i0(logic_ramfifo_syn_1340),
    .i1(logic_ramfifo_syn_1341),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1337));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1332 (
    .i0(logic_ramfifo_syn_644),
    .i1(logic_ramfifo_syn_673),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1338));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1333 (
    .i0(logic_ramfifo_syn_698),
    .i1(logic_ramfifo_syn_723),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1339));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1334 (
    .i0(logic_ramfifo_syn_744),
    .i1(logic_ramfifo_syn_769),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1340));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1335 (
    .i0(logic_ramfifo_syn_790),
    .i1(logic_ramfifo_syn_811),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1341));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1354 (
    .i0(logic_ramfifo_syn_1361),
    .i1(logic_ramfifo_syn_1362),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[4]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1355 (
    .i0(logic_ramfifo_syn_1363),
    .i1(logic_ramfifo_syn_1364),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1361));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1356 (
    .i0(logic_ramfifo_syn_1365),
    .i1(logic_ramfifo_syn_1366),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1362));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1357 (
    .i0(logic_ramfifo_syn_645),
    .i1(logic_ramfifo_syn_674),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1363));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1358 (
    .i0(logic_ramfifo_syn_699),
    .i1(logic_ramfifo_syn_724),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1364));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1359 (
    .i0(logic_ramfifo_syn_745),
    .i1(logic_ramfifo_syn_770),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1365));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1360 (
    .i0(logic_ramfifo_syn_791),
    .i1(logic_ramfifo_syn_812),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1366));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1379 (
    .i0(logic_ramfifo_syn_1386),
    .i1(logic_ramfifo_syn_1387),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[5]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1380 (
    .i0(logic_ramfifo_syn_1388),
    .i1(logic_ramfifo_syn_1389),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1386));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1381 (
    .i0(logic_ramfifo_syn_1390),
    .i1(logic_ramfifo_syn_1391),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1387));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1382 (
    .i0(logic_ramfifo_syn_646),
    .i1(logic_ramfifo_syn_675),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1388));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1383 (
    .i0(logic_ramfifo_syn_700),
    .i1(logic_ramfifo_syn_725),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1389));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1384 (
    .i0(logic_ramfifo_syn_746),
    .i1(logic_ramfifo_syn_771),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1390));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1385 (
    .i0(logic_ramfifo_syn_792),
    .i1(logic_ramfifo_syn_813),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1391));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1404 (
    .i0(logic_ramfifo_syn_1411),
    .i1(logic_ramfifo_syn_1412),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[6]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1405 (
    .i0(logic_ramfifo_syn_1413),
    .i1(logic_ramfifo_syn_1414),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1411));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1406 (
    .i0(logic_ramfifo_syn_1415),
    .i1(logic_ramfifo_syn_1416),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1412));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1407 (
    .i0(logic_ramfifo_syn_647),
    .i1(logic_ramfifo_syn_676),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1413));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1408 (
    .i0(logic_ramfifo_syn_701),
    .i1(logic_ramfifo_syn_726),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1414));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1409 (
    .i0(logic_ramfifo_syn_747),
    .i1(logic_ramfifo_syn_772),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1415));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1410 (
    .i0(logic_ramfifo_syn_793),
    .i1(logic_ramfifo_syn_814),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1416));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1429 (
    .i0(logic_ramfifo_syn_1436),
    .i1(logic_ramfifo_syn_1437),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[7]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1430 (
    .i0(logic_ramfifo_syn_1438),
    .i1(logic_ramfifo_syn_1439),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1436));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1431 (
    .i0(logic_ramfifo_syn_1440),
    .i1(logic_ramfifo_syn_1441),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1437));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1432 (
    .i0(logic_ramfifo_syn_648),
    .i1(logic_ramfifo_syn_677),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1438));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1433 (
    .i0(logic_ramfifo_syn_702),
    .i1(logic_ramfifo_syn_727),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1439));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1434 (
    .i0(logic_ramfifo_syn_748),
    .i1(logic_ramfifo_syn_773),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1440));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1435 (
    .i0(logic_ramfifo_syn_794),
    .i1(logic_ramfifo_syn_815),
    .sel(logic_ramfifo_syn_873[0]),
    .o(logic_ramfifo_syn_1441));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1462 (
    .i0(logic_ramfifo_syn_1469),
    .i1(logic_ramfifo_syn_1470),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[8]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1463 (
    .i0(logic_ramfifo_syn_825),
    .i1(logic_ramfifo_syn_845),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1469));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1464 (
    .i0(logic_ramfifo_syn_857),
    .i1(logic_ramfifo_syn_869),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1470));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1495 (
    .i0(logic_ramfifo_syn_1502),
    .i1(logic_ramfifo_syn_1503),
    .sel(logic_ramfifo_syn_873[2]),
    .o(do[9]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1496 (
    .i0(logic_ramfifo_syn_835),
    .i1(logic_ramfifo_syn_851),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1502));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_1497 (
    .i0(logic_ramfifo_syn_863),
    .i1(logic_ramfifo_syn_871),
    .sel(logic_ramfifo_syn_873[1]),
    .o(logic_ramfifo_syn_1503));  // ramfifo.v(39)
  not logic_ramfifo_syn_205 (logic_ramfifo_syn_206, logic_ramfifo_syn_79);  // ramfifo.v(39)
  not logic_ramfifo_syn_207 (logic_ramfifo_syn_208, logic_ramfifo_syn_80);  // ramfifo.v(39)
  not logic_ramfifo_syn_211 (logic_ramfifo_syn_212, full_flag);  // ramfifo.v(39)
  xor logic_ramfifo_syn_231 (logic_ramfifo_syn_232, logic_ramfifo_syn_48, logic_ramfifo_syn_47);  // ramfifo.v(39)
  xor logic_ramfifo_syn_233 (logic_ramfifo_syn_234, logic_ramfifo_syn_16, logic_ramfifo_syn_15);  // ramfifo.v(39)
  not logic_ramfifo_syn_257 (logic_ramfifo_syn_258, empty_flag);  // ramfifo.v(39)
  xor logic_ramfifo_syn_315 (logic_ramfifo_syn_316, logic_ramfifo_syn_80, logic_ramfifo_syn_79);  // ramfifo.v(39)
  xor logic_ramfifo_syn_317 (logic_ramfifo_syn_318, logic_ramfifo_syn_316, logic_ramfifo_syn_78);  // ramfifo.v(39)
  xor logic_ramfifo_syn_319 (logic_ramfifo_syn_320, logic_ramfifo_syn_318, logic_ramfifo_syn_77);  // ramfifo.v(39)
  xor logic_ramfifo_syn_321 (logic_ramfifo_syn_322, logic_ramfifo_syn_320, logic_ramfifo_syn_76);  // ramfifo.v(39)
  xor logic_ramfifo_syn_323 (logic_ramfifo_syn_324, logic_ramfifo_syn_322, logic_ramfifo_syn_75);  // ramfifo.v(39)
  xor logic_ramfifo_syn_325 (logic_ramfifo_syn_326, logic_ramfifo_syn_324, logic_ramfifo_syn_74);  // ramfifo.v(39)
  xor logic_ramfifo_syn_327 (logic_ramfifo_syn_328, logic_ramfifo_syn_326, logic_ramfifo_syn_73);  // ramfifo.v(39)
  xor logic_ramfifo_syn_329 (logic_ramfifo_syn_330, logic_ramfifo_syn_328, logic_ramfifo_syn_72);  // ramfifo.v(39)
  xor logic_ramfifo_syn_331 (logic_ramfifo_syn_332, logic_ramfifo_syn_330, logic_ramfifo_syn_71);  // ramfifo.v(39)
  xor logic_ramfifo_syn_333 (logic_ramfifo_syn_334, logic_ramfifo_syn_332, logic_ramfifo_syn_70);  // ramfifo.v(39)
  xor logic_ramfifo_syn_335 (logic_ramfifo_syn_336, logic_ramfifo_syn_334, logic_ramfifo_syn_69);  // ramfifo.v(39)
  xor logic_ramfifo_syn_337 (logic_ramfifo_syn_338, logic_ramfifo_syn_336, logic_ramfifo_syn_68);  // ramfifo.v(39)
  xor logic_ramfifo_syn_339 (logic_ramfifo_syn_340, logic_ramfifo_syn_338, logic_ramfifo_syn_67);  // ramfifo.v(39)
  xor logic_ramfifo_syn_341 (logic_ramfifo_syn_342, logic_ramfifo_syn_340, logic_ramfifo_syn_66);  // ramfifo.v(39)
  xor logic_ramfifo_syn_343 (logic_ramfifo_syn_344, logic_ramfifo_syn_342, logic_ramfifo_syn_65);  // ramfifo.v(39)
  xor logic_ramfifo_syn_348 (logic_ramfifo_syn_349, logic_ramfifo_syn_234, logic_ramfifo_syn_14);  // ramfifo.v(39)
  xor logic_ramfifo_syn_350 (logic_ramfifo_syn_351, logic_ramfifo_syn_349, logic_ramfifo_syn_13);  // ramfifo.v(39)
  xor logic_ramfifo_syn_352 (logic_ramfifo_syn_353, logic_ramfifo_syn_351, logic_ramfifo_syn_12);  // ramfifo.v(39)
  xor logic_ramfifo_syn_354 (logic_ramfifo_syn_355, logic_ramfifo_syn_353, logic_ramfifo_syn_11);  // ramfifo.v(39)
  xor logic_ramfifo_syn_356 (logic_ramfifo_syn_357, logic_ramfifo_syn_355, logic_ramfifo_syn_10);  // ramfifo.v(39)
  xor logic_ramfifo_syn_358 (logic_ramfifo_syn_359, logic_ramfifo_syn_357, logic_ramfifo_syn_9);  // ramfifo.v(39)
  xor logic_ramfifo_syn_360 (logic_ramfifo_syn_361, logic_ramfifo_syn_359, logic_ramfifo_syn_8);  // ramfifo.v(39)
  xor logic_ramfifo_syn_362 (logic_ramfifo_syn_363, logic_ramfifo_syn_361, logic_ramfifo_syn_7);  // ramfifo.v(39)
  xor logic_ramfifo_syn_364 (logic_ramfifo_syn_365, logic_ramfifo_syn_363, logic_ramfifo_syn_6);  // ramfifo.v(39)
  xor logic_ramfifo_syn_366 (logic_ramfifo_syn_367, logic_ramfifo_syn_365, logic_ramfifo_syn_5);  // ramfifo.v(39)
  xor logic_ramfifo_syn_368 (logic_ramfifo_syn_369, logic_ramfifo_syn_367, logic_ramfifo_syn_4);  // ramfifo.v(39)
  xor logic_ramfifo_syn_370 (logic_ramfifo_syn_371, logic_ramfifo_syn_369, logic_ramfifo_syn_3);  // ramfifo.v(39)
  xor logic_ramfifo_syn_372 (logic_ramfifo_syn_373, logic_ramfifo_syn_371, logic_ramfifo_syn_2);  // ramfifo.v(39)
  xor logic_ramfifo_syn_374 (logic_ramfifo_syn_375, logic_ramfifo_syn_373, logic_ramfifo_syn_1);  // ramfifo.v(39)
  xor logic_ramfifo_syn_378 (logic_ramfifo_syn_379, logic_ramfifo_syn_128, logic_ramfifo_syn_127);  // ramfifo.v(39)
  xor logic_ramfifo_syn_380 (logic_ramfifo_syn_381, logic_ramfifo_syn_379, logic_ramfifo_syn_126);  // ramfifo.v(39)
  xor logic_ramfifo_syn_382 (logic_ramfifo_syn_383, logic_ramfifo_syn_381, logic_ramfifo_syn_125);  // ramfifo.v(39)
  xor logic_ramfifo_syn_384 (logic_ramfifo_syn_385, logic_ramfifo_syn_383, logic_ramfifo_syn_124);  // ramfifo.v(39)
  xor logic_ramfifo_syn_386 (logic_ramfifo_syn_387, logic_ramfifo_syn_385, logic_ramfifo_syn_123);  // ramfifo.v(39)
  xor logic_ramfifo_syn_388 (logic_ramfifo_syn_389, logic_ramfifo_syn_387, logic_ramfifo_syn_122);  // ramfifo.v(39)
  xor logic_ramfifo_syn_390 (logic_ramfifo_syn_391, logic_ramfifo_syn_389, logic_ramfifo_syn_121);  // ramfifo.v(39)
  xor logic_ramfifo_syn_392 (logic_ramfifo_syn_393, logic_ramfifo_syn_391, logic_ramfifo_syn_120);  // ramfifo.v(39)
  xor logic_ramfifo_syn_394 (logic_ramfifo_syn_395, logic_ramfifo_syn_393, logic_ramfifo_syn_119);  // ramfifo.v(39)
  xor logic_ramfifo_syn_396 (logic_ramfifo_syn_397, logic_ramfifo_syn_395, logic_ramfifo_syn_118);  // ramfifo.v(39)
  xor logic_ramfifo_syn_398 (logic_ramfifo_syn_399, logic_ramfifo_syn_397, logic_ramfifo_syn_117);  // ramfifo.v(39)
  xor logic_ramfifo_syn_400 (logic_ramfifo_syn_401, logic_ramfifo_syn_399, logic_ramfifo_syn_116);  // ramfifo.v(39)
  xor logic_ramfifo_syn_402 (logic_ramfifo_syn_403, logic_ramfifo_syn_401, logic_ramfifo_syn_115);  // ramfifo.v(39)
  xor logic_ramfifo_syn_404 (logic_ramfifo_syn_405, logic_ramfifo_syn_403, logic_ramfifo_syn_114);  // ramfifo.v(39)
  xor logic_ramfifo_syn_406 (logic_ramfifo_syn_407, logic_ramfifo_syn_405, logic_ramfifo_syn_113);  // ramfifo.v(39)
  xor logic_ramfifo_syn_411 (logic_ramfifo_syn_412, logic_ramfifo_syn_232, logic_ramfifo_syn_46);  // ramfifo.v(39)
  xor logic_ramfifo_syn_413 (logic_ramfifo_syn_414, logic_ramfifo_syn_412, logic_ramfifo_syn_45);  // ramfifo.v(39)
  xor logic_ramfifo_syn_415 (logic_ramfifo_syn_416, logic_ramfifo_syn_414, logic_ramfifo_syn_44);  // ramfifo.v(39)
  xor logic_ramfifo_syn_417 (logic_ramfifo_syn_418, logic_ramfifo_syn_416, logic_ramfifo_syn_43);  // ramfifo.v(39)
  xor logic_ramfifo_syn_419 (logic_ramfifo_syn_420, logic_ramfifo_syn_418, logic_ramfifo_syn_42);  // ramfifo.v(39)
  xor logic_ramfifo_syn_421 (logic_ramfifo_syn_422, logic_ramfifo_syn_420, logic_ramfifo_syn_41);  // ramfifo.v(39)
  xor logic_ramfifo_syn_423 (logic_ramfifo_syn_424, logic_ramfifo_syn_422, logic_ramfifo_syn_40);  // ramfifo.v(39)
  xor logic_ramfifo_syn_425 (logic_ramfifo_syn_426, logic_ramfifo_syn_424, logic_ramfifo_syn_39);  // ramfifo.v(39)
  xor logic_ramfifo_syn_427 (logic_ramfifo_syn_428, logic_ramfifo_syn_426, logic_ramfifo_syn_38);  // ramfifo.v(39)
  xor logic_ramfifo_syn_429 (logic_ramfifo_syn_430, logic_ramfifo_syn_428, logic_ramfifo_syn_37);  // ramfifo.v(39)
  xor logic_ramfifo_syn_431 (logic_ramfifo_syn_432, logic_ramfifo_syn_430, logic_ramfifo_syn_36);  // ramfifo.v(39)
  xor logic_ramfifo_syn_433 (logic_ramfifo_syn_434, logic_ramfifo_syn_432, logic_ramfifo_syn_35);  // ramfifo.v(39)
  xor logic_ramfifo_syn_435 (logic_ramfifo_syn_436, logic_ramfifo_syn_434, logic_ramfifo_syn_34);  // ramfifo.v(39)
  xor logic_ramfifo_syn_437 (logic_ramfifo_syn_438, logic_ramfifo_syn_436, logic_ramfifo_syn_33);  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_477 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_213),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_1));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_478 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_214),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_2));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_479 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_215),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_3));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_480 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_216),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_4));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_481 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_217),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_5));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_482 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_218),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_6));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_483 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_219),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_7));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_484 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_220),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_8));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_485 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_221),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_9));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_486 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_222),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_10));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_487 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_223),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_11));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_488 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_224),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_12));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_489 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_225),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_13));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_490 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_226),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_14));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_491 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_227),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_15));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_492 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_228),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_16));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_493 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_17));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_494 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_2),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_18));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_495 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_3),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_19));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_496 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_4),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_20));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_497 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_5),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_21));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_498 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_6),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_22));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_499 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_7),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_23));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_500 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_8),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_24));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_501 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_9),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_25));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_502 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_10),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_26));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_503 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_11),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_27));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_504 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_12),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_28));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_505 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_13),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_29));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_506 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_14),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_30));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_507 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_15),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_31));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_508 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_16),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_32));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_512 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_278),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_33));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_513 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_279),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_34));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_514 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_280),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_35));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_515 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_281),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_36));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_516 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_282),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_37));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_517 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_283),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_38));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_518 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_284),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_39));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_519 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_285),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_40));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_520 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_286),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_41));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_521 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_287),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_42));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_522 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_288),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_43));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_523 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_289),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_44));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_524 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_290),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_45));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_525 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_291),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_46));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_526 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_292),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_47));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_527 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_293),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_48));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_544 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_33),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_65));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_545 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_34),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_66));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_546 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_35),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_67));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_547 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_36),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_68));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_548 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_37),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_69));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_549 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_38),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_70));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_550 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_39),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_71));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_551 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_40),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_72));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_552 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_41),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_73));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_553 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_42),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_74));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_554 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_43),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_75));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_555 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_44),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_76));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_556 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_45),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_77));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_557 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_46),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_78));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_558 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_47),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_79));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_559 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_48),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_80));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_560 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_344),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_81));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_561 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_342),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_82));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_562 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_340),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_83));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_563 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_338),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_84));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_564 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_336),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_85));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_565 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_334),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_86));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_566 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_332),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_87));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_567 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_330),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_88));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_568 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_328),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_89));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_569 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_326),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_90));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_570 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_324),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_91));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_571 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_322),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_92));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_572 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_320),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_93));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_573 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_318),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_94));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_574 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_316),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_95));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_575 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_80),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_96));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_576 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_375),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_97));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_577 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_373),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_98));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_578 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_371),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_99));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_579 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_369),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_100));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_580 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_367),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_101));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_581 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_365),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_102));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_582 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_363),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_103));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_583 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_361),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_104));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_584 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_359),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_105));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_585 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_357),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_106));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_586 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_355),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_107));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_587 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_353),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_108));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_588 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_351),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_109));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_589 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_349),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_110));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_590 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_234),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_111));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_592 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_17),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_113));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_593 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_18),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_114));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_594 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_19),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_115));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_595 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_20),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_116));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_596 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_21),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_117));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_597 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_22),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_118));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_598 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_23),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_119));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_599 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_24),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_120));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_600 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_25),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_121));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_601 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_26),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_122));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_602 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_27),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_123));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_603 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_28),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_124));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_604 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_29),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_125));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_605 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_30),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_126));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_606 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_31),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_127));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_607 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_32),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_128));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_608 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_407),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_129));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_609 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_405),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_130));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_610 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_403),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_131));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_611 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_401),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_132));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_612 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_399),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_133));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_613 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_397),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_134));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_614 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_395),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_135));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_615 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_393),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_136));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_616 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_391),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_137));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_617 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_389),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_138));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_618 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_387),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_139));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_619 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_385),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_140));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_620 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_383),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_141));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_621 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_381),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_142));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_622 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_379),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_143));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_623 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_128),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_144));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_624 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_438),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_145));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_625 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_436),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_146));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_626 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_434),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_147));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_627 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_432),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_148));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_628 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_430),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_149));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_629 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_428),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_150));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_630 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_426),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_151));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_631 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_424),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_152));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_632 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_422),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_153));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_633 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_420),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_154));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_634 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_418),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_155));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_635 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_416),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_156));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_636 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_414),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_157));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_637 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_412),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_158));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_638 (
    .ar(rst),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_232),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_159));  // ramfifo.v(39)
  // address_offset=0;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_640 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_656),
    .csb(logic_ramfifo_syn_668),
    .dia({open_n57,open_n58,open_n59,open_n60,open_n61,open_n62,open_n63,open_n64,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n100,open_n101,open_n102,open_n103,open_n104,open_n105,open_n106,open_n107,logic_ramfifo_syn_648,logic_ramfifo_syn_647,logic_ramfifo_syn_646,logic_ramfifo_syn_645,logic_ramfifo_syn_644,logic_ramfifo_syn_643,logic_ramfifo_syn_642,logic_ramfifo_syn_641}));  // ramfifo.v(39)
  and logic_ramfifo_syn_649 (logic_ramfifo_syn_656, logic_ramfifo_syn_651, logic_ramfifo_syn_653, logic_ramfifo_syn_655);  // ramfifo.v(39)
  not logic_ramfifo_syn_650 (logic_ramfifo_syn_651, logic_ramfifo_syn_13);  // ramfifo.v(39)
  not logic_ramfifo_syn_652 (logic_ramfifo_syn_653, logic_ramfifo_syn_14);  // ramfifo.v(39)
  not logic_ramfifo_syn_654 (logic_ramfifo_syn_655, logic_ramfifo_syn_234);  // ramfifo.v(39)
  and logic_ramfifo_syn_657 (logic_ramfifo_syn_664, logic_ramfifo_syn_659, logic_ramfifo_syn_661, logic_ramfifo_syn_663);  // ramfifo.v(39)
  not logic_ramfifo_syn_658 (logic_ramfifo_syn_659, logic_ramfifo_syn_45);  // ramfifo.v(39)
  not logic_ramfifo_syn_660 (logic_ramfifo_syn_661, logic_ramfifo_syn_46);  // ramfifo.v(39)
  not logic_ramfifo_syn_662 (logic_ramfifo_syn_663, logic_ramfifo_syn_232);  // ramfifo.v(39)
  and logic_ramfifo_syn_667 (logic_ramfifo_syn_668, logic_ramfifo_syn_664, re_syn_2);  // ramfifo.v(39)
  // address_offset=4096;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_669 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_683),
    .csb(logic_ramfifo_syn_693),
    .dia({open_n110,open_n111,open_n112,open_n113,open_n114,open_n115,open_n116,open_n117,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n153,open_n154,open_n155,open_n156,open_n157,open_n158,open_n159,open_n160,logic_ramfifo_syn_677,logic_ramfifo_syn_676,logic_ramfifo_syn_675,logic_ramfifo_syn_674,logic_ramfifo_syn_673,logic_ramfifo_syn_672,logic_ramfifo_syn_671,logic_ramfifo_syn_670}));  // ramfifo.v(39)
  and logic_ramfifo_syn_678 (logic_ramfifo_syn_683, logic_ramfifo_syn_13, logic_ramfifo_syn_653, logic_ramfifo_syn_655);  // ramfifo.v(39)
  and logic_ramfifo_syn_684 (logic_ramfifo_syn_689, logic_ramfifo_syn_45, logic_ramfifo_syn_661, logic_ramfifo_syn_663);  // ramfifo.v(39)
  and logic_ramfifo_syn_692 (logic_ramfifo_syn_693, logic_ramfifo_syn_689, re_syn_2);  // ramfifo.v(39)
  // address_offset=8192;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_694 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_708),
    .csb(logic_ramfifo_syn_718),
    .dia({open_n163,open_n164,open_n165,open_n166,open_n167,open_n168,open_n169,open_n170,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n206,open_n207,open_n208,open_n209,open_n210,open_n211,open_n212,open_n213,logic_ramfifo_syn_702,logic_ramfifo_syn_701,logic_ramfifo_syn_700,logic_ramfifo_syn_699,logic_ramfifo_syn_698,logic_ramfifo_syn_697,logic_ramfifo_syn_696,logic_ramfifo_syn_695}));  // ramfifo.v(39)
  and logic_ramfifo_syn_703 (logic_ramfifo_syn_708, logic_ramfifo_syn_651, logic_ramfifo_syn_14, logic_ramfifo_syn_655);  // ramfifo.v(39)
  and logic_ramfifo_syn_709 (logic_ramfifo_syn_714, logic_ramfifo_syn_659, logic_ramfifo_syn_46, logic_ramfifo_syn_663);  // ramfifo.v(39)
  and logic_ramfifo_syn_717 (logic_ramfifo_syn_718, logic_ramfifo_syn_714, re_syn_2);  // ramfifo.v(39)
  // address_offset=12288;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_719 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_731),
    .csb(logic_ramfifo_syn_739),
    .dia({open_n216,open_n217,open_n218,open_n219,open_n220,open_n221,open_n222,open_n223,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n259,open_n260,open_n261,open_n262,open_n263,open_n264,open_n265,open_n266,logic_ramfifo_syn_727,logic_ramfifo_syn_726,logic_ramfifo_syn_725,logic_ramfifo_syn_724,logic_ramfifo_syn_723,logic_ramfifo_syn_722,logic_ramfifo_syn_721,logic_ramfifo_syn_720}));  // ramfifo.v(39)
  and logic_ramfifo_syn_728 (logic_ramfifo_syn_731, logic_ramfifo_syn_13, logic_ramfifo_syn_14, logic_ramfifo_syn_655);  // ramfifo.v(39)
  and logic_ramfifo_syn_732 (logic_ramfifo_syn_735, logic_ramfifo_syn_45, logic_ramfifo_syn_46, logic_ramfifo_syn_663);  // ramfifo.v(39)
  and logic_ramfifo_syn_738 (logic_ramfifo_syn_739, logic_ramfifo_syn_735, re_syn_2);  // ramfifo.v(39)
  // address_offset=16384;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_740 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_754),
    .csb(logic_ramfifo_syn_764),
    .dia({open_n269,open_n270,open_n271,open_n272,open_n273,open_n274,open_n275,open_n276,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n312,open_n313,open_n314,open_n315,open_n316,open_n317,open_n318,open_n319,logic_ramfifo_syn_748,logic_ramfifo_syn_747,logic_ramfifo_syn_746,logic_ramfifo_syn_745,logic_ramfifo_syn_744,logic_ramfifo_syn_743,logic_ramfifo_syn_742,logic_ramfifo_syn_741}));  // ramfifo.v(39)
  and logic_ramfifo_syn_749 (logic_ramfifo_syn_754, logic_ramfifo_syn_651, logic_ramfifo_syn_653, logic_ramfifo_syn_234);  // ramfifo.v(39)
  and logic_ramfifo_syn_755 (logic_ramfifo_syn_760, logic_ramfifo_syn_659, logic_ramfifo_syn_661, logic_ramfifo_syn_232);  // ramfifo.v(39)
  and logic_ramfifo_syn_763 (logic_ramfifo_syn_764, logic_ramfifo_syn_760, re_syn_2);  // ramfifo.v(39)
  // address_offset=20480;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_765 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_777),
    .csb(logic_ramfifo_syn_785),
    .dia({open_n322,open_n323,open_n324,open_n325,open_n326,open_n327,open_n328,open_n329,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n365,open_n366,open_n367,open_n368,open_n369,open_n370,open_n371,open_n372,logic_ramfifo_syn_773,logic_ramfifo_syn_772,logic_ramfifo_syn_771,logic_ramfifo_syn_770,logic_ramfifo_syn_769,logic_ramfifo_syn_768,logic_ramfifo_syn_767,logic_ramfifo_syn_766}));  // ramfifo.v(39)
  and logic_ramfifo_syn_774 (logic_ramfifo_syn_777, logic_ramfifo_syn_13, logic_ramfifo_syn_653, logic_ramfifo_syn_234);  // ramfifo.v(39)
  and logic_ramfifo_syn_778 (logic_ramfifo_syn_781, logic_ramfifo_syn_45, logic_ramfifo_syn_661, logic_ramfifo_syn_232);  // ramfifo.v(39)
  and logic_ramfifo_syn_784 (logic_ramfifo_syn_785, logic_ramfifo_syn_781, re_syn_2);  // ramfifo.v(39)
  // address_offset=24576;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_786 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_798),
    .csb(logic_ramfifo_syn_806),
    .dia({open_n375,open_n376,open_n377,open_n378,open_n379,open_n380,open_n381,open_n382,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n418,open_n419,open_n420,open_n421,open_n422,open_n423,open_n424,open_n425,logic_ramfifo_syn_794,logic_ramfifo_syn_793,logic_ramfifo_syn_792,logic_ramfifo_syn_791,logic_ramfifo_syn_790,logic_ramfifo_syn_789,logic_ramfifo_syn_788,logic_ramfifo_syn_787}));  // ramfifo.v(39)
  and logic_ramfifo_syn_795 (logic_ramfifo_syn_798, logic_ramfifo_syn_651, logic_ramfifo_syn_14, logic_ramfifo_syn_234);  // ramfifo.v(39)
  and logic_ramfifo_syn_799 (logic_ramfifo_syn_802, logic_ramfifo_syn_659, logic_ramfifo_syn_46, logic_ramfifo_syn_232);  // ramfifo.v(39)
  and logic_ramfifo_syn_805 (logic_ramfifo_syn_806, logic_ramfifo_syn_802, re_syn_2);  // ramfifo.v(39)
  // address_offset=28672;data_offset=0;depth=4096;width=8;num_section=1;width_per_section=8;section_size=10;working_depth=4096;working_width=8;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM32K #(
    .DATA_WIDTH_A("8"),
    .DATA_WIDTH_B("8"),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP16K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .SRMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_807 (
    .addra({logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2}),
    .addrb({logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34}),
    .bytea(logic_ramfifo_syn_1),
    .byteb(logic_ramfifo_syn_33),
    .clka(clk),
    .clkb(clk),
    .csa(logic_ramfifo_syn_817),
    .csb(logic_ramfifo_syn_823),
    .dia({open_n428,open_n429,open_n430,open_n431,open_n432,open_n433,open_n434,open_n435,di[7:0]}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n471,open_n472,open_n473,open_n474,open_n475,open_n476,open_n477,open_n478,logic_ramfifo_syn_815,logic_ramfifo_syn_814,logic_ramfifo_syn_813,logic_ramfifo_syn_812,logic_ramfifo_syn_811,logic_ramfifo_syn_810,logic_ramfifo_syn_809,logic_ramfifo_syn_808}));  // ramfifo.v(39)
  and logic_ramfifo_syn_816 (logic_ramfifo_syn_817, logic_ramfifo_syn_13, logic_ramfifo_syn_14, logic_ramfifo_syn_234);  // ramfifo.v(39)
  and logic_ramfifo_syn_818 (logic_ramfifo_syn_819, logic_ramfifo_syn_45, logic_ramfifo_syn_46, logic_ramfifo_syn_232);  // ramfifo.v(39)
  and logic_ramfifo_syn_822 (logic_ramfifo_syn_823, logic_ramfifo_syn_819, re_syn_2);  // ramfifo.v(39)
  // address_offset=0;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_824 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n480,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n481,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n482,open_n483,open_n484,open_n485,open_n486,open_n487,open_n488,di[8],open_n489}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n511,open_n512,open_n513,open_n514,open_n515,open_n516,open_n517,open_n518,logic_ramfifo_syn_825}));  // ramfifo.v(39)
  // address_offset=0;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_834 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n520,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n521,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n522,open_n523,open_n524,open_n525,open_n526,open_n527,open_n528,di[9],open_n529}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n551,open_n552,open_n553,open_n554,open_n555,open_n556,open_n557,open_n558,logic_ramfifo_syn_835}));  // ramfifo.v(39)
  // address_offset=8192;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_844 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n560,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n561,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n562,open_n563,open_n564,open_n565,open_n566,open_n567,open_n568,di[8],open_n569}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n591,open_n592,open_n593,open_n594,open_n595,open_n596,open_n597,open_n598,logic_ramfifo_syn_845}));  // ramfifo.v(39)
  // address_offset=8192;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_850 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n600,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n601,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n602,open_n603,open_n604,open_n605,open_n606,open_n607,open_n608,di[9],open_n609}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n631,open_n632,open_n633,open_n634,open_n635,open_n636,open_n637,open_n638,logic_ramfifo_syn_851}));  // ramfifo.v(39)
  // address_offset=16384;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_856 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n640,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n641,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n642,open_n643,open_n644,open_n645,open_n646,open_n647,open_n648,di[8],open_n649}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n671,open_n672,open_n673,open_n674,open_n675,open_n676,open_n677,open_n678,logic_ramfifo_syn_857}));  // ramfifo.v(39)
  // address_offset=16384;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_862 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n680,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n681,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n682,open_n683,open_n684,open_n685,open_n686,open_n687,open_n688,di[9],open_n689}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n711,open_n712,open_n713,open_n714,open_n715,open_n716,open_n717,open_n718,logic_ramfifo_syn_863}));  // ramfifo.v(39)
  // address_offset=24576;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_868 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n720,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n721,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n722,open_n723,open_n724,open_n725,open_n726,open_n727,open_n728,di[8],open_n729}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n751,open_n752,open_n753,open_n754,open_n755,open_n756,open_n757,open_n758,logic_ramfifo_syn_869}));  // ramfifo.v(39)
  // address_offset=24576;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  // logic_ramfifo_syn_440_32768x10
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("DP8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    logic_ramfifo_syn_870 (
    .addra({logic_ramfifo_syn_13,logic_ramfifo_syn_12,logic_ramfifo_syn_11,logic_ramfifo_syn_10,logic_ramfifo_syn_9,logic_ramfifo_syn_8,logic_ramfifo_syn_7,logic_ramfifo_syn_6,logic_ramfifo_syn_5,logic_ramfifo_syn_4,logic_ramfifo_syn_3,logic_ramfifo_syn_2,logic_ramfifo_syn_1}),
    .addrb({logic_ramfifo_syn_45,logic_ramfifo_syn_44,logic_ramfifo_syn_43,logic_ramfifo_syn_42,logic_ramfifo_syn_41,logic_ramfifo_syn_40,logic_ramfifo_syn_39,logic_ramfifo_syn_38,logic_ramfifo_syn_37,logic_ramfifo_syn_36,logic_ramfifo_syn_35,logic_ramfifo_syn_34,logic_ramfifo_syn_33}),
    .ceb(re_syn_2),
    .clka(clk),
    .clkb(clk),
    .csa({open_n760,logic_ramfifo_syn_234,logic_ramfifo_syn_14}),
    .csb({open_n761,logic_ramfifo_syn_232,logic_ramfifo_syn_46}),
    .dia({open_n762,open_n763,open_n764,open_n765,open_n766,open_n767,open_n768,di[9],open_n769}),
    .rsta(rst),
    .rstb(rst),
    .wea(we_syn_2),
    .dob({open_n791,open_n792,open_n793,open_n794,open_n795,open_n796,open_n797,open_n798,logic_ramfifo_syn_871}));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_887 (
    .ar(1'b0),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_891),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_873[0]));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_888 (
    .ar(1'b0),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_893),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_873[1]));  // ramfifo.v(39)
  AL_DFF_X logic_ramfifo_syn_889 (
    .ar(1'b0),
    .as(1'b0),
    .clk(clk),
    .d(logic_ramfifo_syn_895),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(logic_ramfifo_syn_873[2]));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_890 (
    .i0(logic_ramfifo_syn_873[0]),
    .i1(logic_ramfifo_syn_45),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_891));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_892 (
    .i0(logic_ramfifo_syn_873[1]),
    .i1(logic_ramfifo_syn_46),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_893));  // ramfifo.v(39)
  AL_MUX logic_ramfifo_syn_894 (
    .i0(logic_ramfifo_syn_873[2]),
    .i1(logic_ramfifo_syn_232),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_895));  // ramfifo.v(39)
  not logic_ramfifo_syn_896 (full_flag, logic_ramfifo_syn_991);  // ramfifo.v(39)
  xor logic_ramfifo_syn_897 (logic_ramfifo_syn_961, logic_ramfifo_syn_1, logic_ramfifo_syn_65);  // ramfifo.v(39)
  xor logic_ramfifo_syn_898 (logic_ramfifo_syn_962, logic_ramfifo_syn_2, logic_ramfifo_syn_66);  // ramfifo.v(39)
  xor logic_ramfifo_syn_899 (logic_ramfifo_syn_963, logic_ramfifo_syn_3, logic_ramfifo_syn_67);  // ramfifo.v(39)
  xor logic_ramfifo_syn_900 (logic_ramfifo_syn_964, logic_ramfifo_syn_4, logic_ramfifo_syn_68);  // ramfifo.v(39)
  xor logic_ramfifo_syn_901 (logic_ramfifo_syn_965, logic_ramfifo_syn_5, logic_ramfifo_syn_69);  // ramfifo.v(39)
  xor logic_ramfifo_syn_902 (logic_ramfifo_syn_966, logic_ramfifo_syn_6, logic_ramfifo_syn_70);  // ramfifo.v(39)
  xor logic_ramfifo_syn_903 (logic_ramfifo_syn_967, logic_ramfifo_syn_7, logic_ramfifo_syn_71);  // ramfifo.v(39)
  xor logic_ramfifo_syn_904 (logic_ramfifo_syn_968, logic_ramfifo_syn_8, logic_ramfifo_syn_72);  // ramfifo.v(39)
  xor logic_ramfifo_syn_905 (logic_ramfifo_syn_969, logic_ramfifo_syn_9, logic_ramfifo_syn_73);  // ramfifo.v(39)
  xor logic_ramfifo_syn_906 (logic_ramfifo_syn_970, logic_ramfifo_syn_10, logic_ramfifo_syn_74);  // ramfifo.v(39)
  xor logic_ramfifo_syn_907 (logic_ramfifo_syn_971, logic_ramfifo_syn_11, logic_ramfifo_syn_75);  // ramfifo.v(39)
  xor logic_ramfifo_syn_908 (logic_ramfifo_syn_972, logic_ramfifo_syn_12, logic_ramfifo_syn_76);  // ramfifo.v(39)
  xor logic_ramfifo_syn_909 (logic_ramfifo_syn_973, logic_ramfifo_syn_13, logic_ramfifo_syn_77);  // ramfifo.v(39)
  xor logic_ramfifo_syn_910 (logic_ramfifo_syn_974, logic_ramfifo_syn_14, logic_ramfifo_syn_78);  // ramfifo.v(39)
  xor logic_ramfifo_syn_911 (logic_ramfifo_syn_975, logic_ramfifo_syn_15, logic_ramfifo_syn_206);  // ramfifo.v(39)
  xor logic_ramfifo_syn_912 (logic_ramfifo_syn_976, logic_ramfifo_syn_16, logic_ramfifo_syn_208);  // ramfifo.v(39)
  or logic_ramfifo_syn_913 (logic_ramfifo_syn_977, logic_ramfifo_syn_961, logic_ramfifo_syn_962);  // ramfifo.v(39)
  or logic_ramfifo_syn_914 (logic_ramfifo_syn_978, logic_ramfifo_syn_963, logic_ramfifo_syn_964);  // ramfifo.v(39)
  or logic_ramfifo_syn_915 (logic_ramfifo_syn_979, logic_ramfifo_syn_977, logic_ramfifo_syn_978);  // ramfifo.v(39)
  or logic_ramfifo_syn_916 (logic_ramfifo_syn_980, logic_ramfifo_syn_965, logic_ramfifo_syn_966);  // ramfifo.v(39)
  or logic_ramfifo_syn_917 (logic_ramfifo_syn_981, logic_ramfifo_syn_967, logic_ramfifo_syn_968);  // ramfifo.v(39)
  or logic_ramfifo_syn_918 (logic_ramfifo_syn_982, logic_ramfifo_syn_980, logic_ramfifo_syn_981);  // ramfifo.v(39)
  or logic_ramfifo_syn_919 (logic_ramfifo_syn_983, logic_ramfifo_syn_979, logic_ramfifo_syn_982);  // ramfifo.v(39)
  or logic_ramfifo_syn_920 (logic_ramfifo_syn_984, logic_ramfifo_syn_969, logic_ramfifo_syn_970);  // ramfifo.v(39)
  or logic_ramfifo_syn_921 (logic_ramfifo_syn_985, logic_ramfifo_syn_971, logic_ramfifo_syn_972);  // ramfifo.v(39)
  or logic_ramfifo_syn_922 (logic_ramfifo_syn_986, logic_ramfifo_syn_984, logic_ramfifo_syn_985);  // ramfifo.v(39)
  or logic_ramfifo_syn_923 (logic_ramfifo_syn_987, logic_ramfifo_syn_973, logic_ramfifo_syn_974);  // ramfifo.v(39)
  or logic_ramfifo_syn_924 (logic_ramfifo_syn_988, logic_ramfifo_syn_975, logic_ramfifo_syn_976);  // ramfifo.v(39)
  or logic_ramfifo_syn_925 (logic_ramfifo_syn_989, logic_ramfifo_syn_987, logic_ramfifo_syn_988);  // ramfifo.v(39)
  or logic_ramfifo_syn_926 (logic_ramfifo_syn_990, logic_ramfifo_syn_986, logic_ramfifo_syn_989);  // ramfifo.v(39)
  or logic_ramfifo_syn_927 (logic_ramfifo_syn_991, logic_ramfifo_syn_983, logic_ramfifo_syn_990);  // ramfifo.v(39)
  not logic_ramfifo_syn_992 (empty_flag, logic_ramfifo_syn_1087);  // ramfifo.v(39)
  xor logic_ramfifo_syn_993 (logic_ramfifo_syn_1057, logic_ramfifo_syn_113, logic_ramfifo_syn_33);  // ramfifo.v(39)
  xor logic_ramfifo_syn_994 (logic_ramfifo_syn_1058, logic_ramfifo_syn_114, logic_ramfifo_syn_34);  // ramfifo.v(39)
  xor logic_ramfifo_syn_995 (logic_ramfifo_syn_1059, logic_ramfifo_syn_115, logic_ramfifo_syn_35);  // ramfifo.v(39)
  xor logic_ramfifo_syn_996 (logic_ramfifo_syn_1060, logic_ramfifo_syn_116, logic_ramfifo_syn_36);  // ramfifo.v(39)
  xor logic_ramfifo_syn_997 (logic_ramfifo_syn_1061, logic_ramfifo_syn_117, logic_ramfifo_syn_37);  // ramfifo.v(39)
  xor logic_ramfifo_syn_998 (logic_ramfifo_syn_1062, logic_ramfifo_syn_118, logic_ramfifo_syn_38);  // ramfifo.v(39)
  xor logic_ramfifo_syn_999 (logic_ramfifo_syn_1063, logic_ramfifo_syn_119, logic_ramfifo_syn_39);  // ramfifo.v(39)
  and re_syn_1 (re_syn_2, re, logic_ramfifo_syn_258);  // ramfifo.v(25)
  AL_MUX re_syn_195 (
    .i0(clk_syn_134),
    .i1(clk_syn_154),
    .sel(re_syn_2),
    .o(clk_syn_249));  // ramfifo.v(25)
  AL_MUX re_syn_200 (
    .i0(clk_syn_135),
    .i1(clk_syn_188),
    .sel(re_syn_2),
    .o(clk_syn_250));  // ramfifo.v(25)
  AL_MUX re_syn_205 (
    .i0(clk_syn_136),
    .i1(clk_syn_192),
    .sel(re_syn_2),
    .o(clk_syn_251));  // ramfifo.v(25)
  AL_MUX re_syn_210 (
    .i0(clk_syn_137),
    .i1(clk_syn_196),
    .sel(re_syn_2),
    .o(clk_syn_252));  // ramfifo.v(25)
  AL_MUX re_syn_215 (
    .i0(clk_syn_138),
    .i1(clk_syn_200),
    .sel(re_syn_2),
    .o(clk_syn_253));  // ramfifo.v(25)
  AL_MUX re_syn_220 (
    .i0(clk_syn_139),
    .i1(clk_syn_204),
    .sel(re_syn_2),
    .o(clk_syn_254));  // ramfifo.v(25)
  AL_MUX re_syn_225 (
    .i0(clk_syn_140),
    .i1(clk_syn_208),
    .sel(re_syn_2),
    .o(clk_syn_255));  // ramfifo.v(25)
  AL_MUX re_syn_230 (
    .i0(clk_syn_141),
    .i1(clk_syn_212),
    .sel(re_syn_2),
    .o(clk_syn_256));  // ramfifo.v(25)
  AL_MUX re_syn_235 (
    .i0(clk_syn_142),
    .i1(clk_syn_216),
    .sel(re_syn_2),
    .o(clk_syn_257));  // ramfifo.v(25)
  AL_MUX re_syn_240 (
    .i0(clk_syn_143),
    .i1(clk_syn_220),
    .sel(re_syn_2),
    .o(clk_syn_258));  // ramfifo.v(25)
  AL_MUX re_syn_245 (
    .i0(clk_syn_144),
    .i1(clk_syn_224),
    .sel(re_syn_2),
    .o(clk_syn_259));  // ramfifo.v(25)
  AL_MUX re_syn_250 (
    .i0(clk_syn_145),
    .i1(clk_syn_228),
    .sel(re_syn_2),
    .o(clk_syn_260));  // ramfifo.v(25)
  AL_MUX re_syn_255 (
    .i0(clk_syn_146),
    .i1(clk_syn_232),
    .sel(re_syn_2),
    .o(clk_syn_261));  // ramfifo.v(25)
  AL_MUX re_syn_260 (
    .i0(clk_syn_147),
    .i1(clk_syn_236),
    .sel(re_syn_2),
    .o(clk_syn_262));  // ramfifo.v(25)
  AL_MUX re_syn_265 (
    .i0(clk_syn_148),
    .i1(clk_syn_240),
    .sel(re_syn_2),
    .o(clk_syn_263));  // ramfifo.v(25)
  AL_MUX re_syn_270 (
    .i0(clk_syn_149),
    .i1(clk_syn_244),
    .sel(re_syn_2),
    .o(clk_syn_264));  // ramfifo.v(25)
  AL_MUX re_syn_275 (
    .i0(clk_syn_150),
    .i1(clk_syn_248),
    .sel(re_syn_2),
    .o(clk_syn_265));  // ramfifo.v(25)
  AL_MUX re_syn_280 (
    .i0(logic_ramfifo_syn_33),
    .i1(clk_syn_135),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_278));  // ramfifo.v(25)
  AL_MUX re_syn_285 (
    .i0(logic_ramfifo_syn_34),
    .i1(clk_syn_136),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_279));  // ramfifo.v(25)
  AL_MUX re_syn_290 (
    .i0(logic_ramfifo_syn_35),
    .i1(clk_syn_137),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_280));  // ramfifo.v(25)
  AL_MUX re_syn_295 (
    .i0(logic_ramfifo_syn_36),
    .i1(clk_syn_138),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_281));  // ramfifo.v(25)
  AL_MUX re_syn_300 (
    .i0(logic_ramfifo_syn_37),
    .i1(clk_syn_139),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_282));  // ramfifo.v(25)
  AL_MUX re_syn_305 (
    .i0(logic_ramfifo_syn_38),
    .i1(clk_syn_140),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_283));  // ramfifo.v(25)
  AL_MUX re_syn_310 (
    .i0(logic_ramfifo_syn_39),
    .i1(clk_syn_141),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_284));  // ramfifo.v(25)
  AL_MUX re_syn_315 (
    .i0(logic_ramfifo_syn_40),
    .i1(clk_syn_142),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_285));  // ramfifo.v(25)
  AL_MUX re_syn_320 (
    .i0(logic_ramfifo_syn_41),
    .i1(clk_syn_143),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_286));  // ramfifo.v(25)
  AL_MUX re_syn_325 (
    .i0(logic_ramfifo_syn_42),
    .i1(clk_syn_144),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_287));  // ramfifo.v(25)
  AL_MUX re_syn_330 (
    .i0(logic_ramfifo_syn_43),
    .i1(clk_syn_145),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_288));  // ramfifo.v(25)
  AL_MUX re_syn_335 (
    .i0(logic_ramfifo_syn_44),
    .i1(clk_syn_146),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_289));  // ramfifo.v(25)
  AL_MUX re_syn_340 (
    .i0(logic_ramfifo_syn_45),
    .i1(clk_syn_147),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_290));  // ramfifo.v(25)
  AL_MUX re_syn_345 (
    .i0(logic_ramfifo_syn_46),
    .i1(clk_syn_148),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_291));  // ramfifo.v(25)
  AL_MUX re_syn_350 (
    .i0(logic_ramfifo_syn_47),
    .i1(clk_syn_149),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_292));  // ramfifo.v(25)
  AL_MUX re_syn_355 (
    .i0(logic_ramfifo_syn_48),
    .i1(clk_syn_150),
    .sel(re_syn_2),
    .o(logic_ramfifo_syn_293));  // ramfifo.v(25)
  and we_syn_1 (we_syn_2, we, logic_ramfifo_syn_212);  // ramfifo.v(24)
  AL_MUX we_syn_103 (
    .i0(clk_syn_14),
    .i1(clk_syn_103),
    .sel(we_syn_2),
    .o(clk_syn_129));  // ramfifo.v(24)
  AL_MUX we_syn_108 (
    .i0(clk_syn_15),
    .i1(clk_syn_107),
    .sel(we_syn_2),
    .o(clk_syn_130));  // ramfifo.v(24)
  AL_MUX we_syn_113 (
    .i0(clk_syn_16),
    .i1(clk_syn_111),
    .sel(we_syn_2),
    .o(clk_syn_131));  // ramfifo.v(24)
  AL_MUX we_syn_118 (
    .i0(clk_syn_17),
    .i1(clk_syn_115),
    .sel(we_syn_2),
    .o(clk_syn_132));  // ramfifo.v(24)
  AL_MUX we_syn_123 (
    .i0(logic_ramfifo_syn_1),
    .i1(clk_syn_2),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_213));  // ramfifo.v(24)
  AL_MUX we_syn_128 (
    .i0(logic_ramfifo_syn_2),
    .i1(clk_syn_3),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_214));  // ramfifo.v(24)
  AL_MUX we_syn_133 (
    .i0(logic_ramfifo_syn_3),
    .i1(clk_syn_4),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_215));  // ramfifo.v(24)
  AL_MUX we_syn_138 (
    .i0(logic_ramfifo_syn_4),
    .i1(clk_syn_5),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_216));  // ramfifo.v(24)
  AL_MUX we_syn_143 (
    .i0(logic_ramfifo_syn_5),
    .i1(clk_syn_6),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_217));  // ramfifo.v(24)
  AL_MUX we_syn_148 (
    .i0(logic_ramfifo_syn_6),
    .i1(clk_syn_7),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_218));  // ramfifo.v(24)
  AL_MUX we_syn_153 (
    .i0(logic_ramfifo_syn_7),
    .i1(clk_syn_8),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_219));  // ramfifo.v(24)
  AL_MUX we_syn_158 (
    .i0(logic_ramfifo_syn_8),
    .i1(clk_syn_9),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_220));  // ramfifo.v(24)
  AL_MUX we_syn_163 (
    .i0(logic_ramfifo_syn_9),
    .i1(clk_syn_10),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_221));  // ramfifo.v(24)
  AL_MUX we_syn_168 (
    .i0(logic_ramfifo_syn_10),
    .i1(clk_syn_11),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_222));  // ramfifo.v(24)
  AL_MUX we_syn_173 (
    .i0(logic_ramfifo_syn_11),
    .i1(clk_syn_12),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_223));  // ramfifo.v(24)
  AL_MUX we_syn_178 (
    .i0(logic_ramfifo_syn_12),
    .i1(clk_syn_13),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_224));  // ramfifo.v(24)
  AL_MUX we_syn_183 (
    .i0(logic_ramfifo_syn_13),
    .i1(clk_syn_14),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_225));  // ramfifo.v(24)
  AL_MUX we_syn_188 (
    .i0(logic_ramfifo_syn_14),
    .i1(clk_syn_15),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_226));  // ramfifo.v(24)
  AL_MUX we_syn_193 (
    .i0(logic_ramfifo_syn_15),
    .i1(clk_syn_16),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_227));  // ramfifo.v(24)
  AL_MUX we_syn_198 (
    .i0(logic_ramfifo_syn_16),
    .i1(clk_syn_17),
    .sel(we_syn_2),
    .o(logic_ramfifo_syn_228));  // ramfifo.v(24)
  AL_MUX we_syn_38 (
    .i0(clk_syn_1),
    .i1(clk_syn_21),
    .sel(we_syn_2),
    .o(clk_syn_116));  // ramfifo.v(24)
  AL_MUX we_syn_43 (
    .i0(clk_syn_2),
    .i1(clk_syn_55),
    .sel(we_syn_2),
    .o(clk_syn_117));  // ramfifo.v(24)
  AL_MUX we_syn_48 (
    .i0(clk_syn_3),
    .i1(clk_syn_59),
    .sel(we_syn_2),
    .o(clk_syn_118));  // ramfifo.v(24)
  AL_MUX we_syn_53 (
    .i0(clk_syn_4),
    .i1(clk_syn_63),
    .sel(we_syn_2),
    .o(clk_syn_119));  // ramfifo.v(24)
  AL_MUX we_syn_58 (
    .i0(clk_syn_5),
    .i1(clk_syn_67),
    .sel(we_syn_2),
    .o(clk_syn_120));  // ramfifo.v(24)
  AL_MUX we_syn_63 (
    .i0(clk_syn_6),
    .i1(clk_syn_71),
    .sel(we_syn_2),
    .o(clk_syn_121));  // ramfifo.v(24)
  AL_MUX we_syn_68 (
    .i0(clk_syn_7),
    .i1(clk_syn_75),
    .sel(we_syn_2),
    .o(clk_syn_122));  // ramfifo.v(24)
  AL_MUX we_syn_73 (
    .i0(clk_syn_8),
    .i1(clk_syn_79),
    .sel(we_syn_2),
    .o(clk_syn_123));  // ramfifo.v(24)
  AL_MUX we_syn_78 (
    .i0(clk_syn_9),
    .i1(clk_syn_83),
    .sel(we_syn_2),
    .o(clk_syn_124));  // ramfifo.v(24)
  AL_MUX we_syn_83 (
    .i0(clk_syn_10),
    .i1(clk_syn_87),
    .sel(we_syn_2),
    .o(clk_syn_125));  // ramfifo.v(24)
  AL_MUX we_syn_88 (
    .i0(clk_syn_11),
    .i1(clk_syn_91),
    .sel(we_syn_2),
    .o(clk_syn_126));  // ramfifo.v(24)
  AL_MUX we_syn_93 (
    .i0(clk_syn_12),
    .i1(clk_syn_95),
    .sel(we_syn_2),
    .o(clk_syn_127));  // ramfifo.v(24)
  AL_MUX we_syn_98 (
    .i0(clk_syn_13),
    .i1(clk_syn_99),
    .sel(we_syn_2),
    .o(clk_syn_128));  // ramfifo.v(24)

endmodule 

