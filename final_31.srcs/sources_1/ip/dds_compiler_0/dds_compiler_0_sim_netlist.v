// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3.1 (win64) Build 2035080 Fri Oct 20 14:20:01 MDT 2017
// Date        : Thu Aug 16 17:10:47 2018
// Host        : MECHA-3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               p:/18summer/engs031/G18/final_31/final_31.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_14,Vivado 2017.3.1" *) 
(* NotValidForBitStream *)
module dds_compiler_0
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [15:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "12" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "6" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "12" *) 
  (* C_PHASE_ANGLE_WIDTH = "12" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_14 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[11:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[11:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[11:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "12" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "6" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "12" *) 
(* C_PHASE_ANGLE_WIDTH = "12" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "16" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_compiler_0_dds_compiler_v6_0_14
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [15:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [11:0]debug_axi_pinc_in;
  output [11:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [11:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire event_s_phase_tlast_missing;
  wire [11:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [14:11]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[15] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[13] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[12] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[11:0] = \^m_axis_data_tdata [11:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "12" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "6" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "12" *) 
  (* C_PHASE_ANGLE_WIDTH = "12" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_14_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[11:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[11:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[11:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({\^m_axis_data_tdata [11],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[14:11],\^m_axis_data_tdata [10:0]}),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_phase_tdata[11:0]}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
M42ea1Pytkv9cEvFDBHRHyOGHemyyor/UA0DFQjMPu8Xw7JzVxM6dzJ0wZ7t6eYQ/tCXgB8YpWE2
aiZdi+8RcQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E6o/BACaH6JtmtPKwhHGF07tz4BRt8Fo8D2lW0tivO6K8O7f5Fo7TuJSwzVzngGuB3e961vOGkJu
miYiU/dtsdoj9hPJe+xpqv+y4kJptgpALEtHv55SiDHQpm2K7jxspTGMaE1pJ/QouItJTpkx9l7p
fS6gz2+yPzQ+ER4CNXo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PL8xVPTxuVPaAp4gPgeWZGbpg+ULOoht/AznTDFOti5HsfRonTb2wPhqxOGNNjegwQDySX6j3XA1
Ez6To98AwVTMKTxzqa2BmYLFASUjBcCPfT5/ZYIbdWA+NeQPlFOly9g2G8lr6Yxm8O6tmLrbY/Hc
6VyJZr+yIeUGtsB+1Bh/s6Lau3KaQ2wKrkYsv57HusNNhXwclbj/fnOlwTe2VS40F3/xBsJ9FFz5
dVSaIu8MtTGOq4VZ/M6vKpIhtA0Ai/uCT1l1VNvwCDNsCdOqMTCFs4kxiWdcSw/4Ayo7LBpGoqmz
CAKXUmPYtfaaHmOHkaaisw/nwrssMwQ9f8CW8Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vP53oG9ED0gIi37LrnlKqf+0OGRhEHYpTXDWK3mNulC9ZrH/qsen92nTZRSuK2O/+6kqT2D8F2DR
5w6SknmaLx4ExANjIIhZkKcrDVD14RY+O175oti8dPvvM0uYStEtz2fVvtOH7OjIeYjlBiKcAUM1
EtLBuCK7R2uSw+kSXCwykmlg7vz9A/kEZJA1Tet/TNTCBxDGMl5ke0JTPIloRCGVcExGUxmas+4w
RlCb/oe2kDu1MCbBwycd/Syi767X3d2GhEa0s8oSeKRU4W5S+FX4FfJFVbtnQo2DWWcXQkG3eagT
dneAOgeM9uUuehh0L2j4UO6iTQhO6+ElX8uaHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tGwKqrK1cqgPmI0mwyAPy6WJXxRCSghHQxkXxyzYh8H+lAcmRw0WBSG0fXZ25wUj2UOsv/QqoXCj
QfZ9HoZWGe0jkRnSSpkPibE2qQGnbwVWGbSeBN81hc2UfbwWZxJ2xEEBSn6B2VkUlsU49VC13iW9
mP2u+d25Fjzd1nn+2WRdGv2l7a6YAtErNyNnWlgWX7Szz6yoRClOdKTL6xrnq8pbt5vNdlxx7atp
K+eOD2S9ITDJf4pS7mi3NVM1UpCBrDC/5WDAxSVT0l+rrKYEIYNPngQN+v4NI8A/BQ3em5UmxsC0
vIvQ+gFIcfP6LzKbpwefgA3YD9E59exPSsQwgQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fFYDwWNGoDTksqXb4aYkKp3qNp2ENaN0pyjmFzyWwWB9S4dIV9mgptE92oJ5eFSXzVDKhbAD0H//
5QozW7FwZs3tiGSXpMmyTa0/Br3pkNJn3u+gwPuozmR+63rntVIYz4fRu5Ih0viARBrrnU+YRVyp
wfB7hRhgVWNxoIyffso=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JRxpiXMnD+FEJeENusouRysRSZUYpJQwa1pSJKAYtlNdKlk46DWyUyQqgzw6Jd5JM+BpYf+k+KBj
QGFKeuBMUtdZue2lnVRXMlHEsimAUqvuukG9rYNSAUtvl4WWAT+25pkq8c50lW61JR/5ym23frdY
2v7HzMqJD6UIArzx6tUo3mgGVChbGhUGiX4cd214abaHkk2WZcqlx2xIW9iT5ao3b6irGxXJTLWY
060vlOSGxWCUXNtwgSyt/yCu/jSpN6KldAkrobJ2iGmMd7svSCntJ8N4U10xXzCGmPucl4SHL5s+
jIOQhSbCr9u5FVC+Eyfn4KAVjmdUYUA286W+fw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N4tHiTACgb1jep2VZ0KUER2ud/zdM0oxbDPzSCDS8MyQiUSnYsJy+u8cwoqowJMwAE510fHchD2U
pTqVksJBIUcvhZ2ZpUvEqdyGnHLkFIkUFZPY0uMkqWtTtLKnBA8U0T1/1Lg7BDdyuv91b1HE5WnN
mehryO+9kv/xQrLbaWp3Rir7xu/w0glV47G5gozfOVe1dzwg35etVyzNy+Ap+wlKrdQDKzIAGbXj
gxQN/w45PISsjjQK2yFpLW/IMWOqLF3k8fepza8bc91kFOSpJo1/YlTwUbklGHMS+LjfRt7G0kcF
ipL23aHSZtSwmaeJjtagFXEox0asNuHSFWBCrQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PECPlMIZH5+pba4+Ueeap1Uy8SpTjljlTQXaKmq6X348vsV2z7u2gb8h7HDalhN65U/p0wY9UQxN
7AoPFFViNOV8EuOp0VrYzXLDduthfyezSpGbvw28LXKVJ1WP2xxR5/6UN1g2tueYdFSLt8MEOLCM
/7Lo1EtlpNtgVJH8MKAqRultLBgYeGYmoF6DGUxOBP4V+ANPOBEs9pLsWj+sLLN64shxq/eupdnZ
SAgNRmPbQIWD4IBRaY3qWwBkg9/LM8dsxex9LZ9D1PdnhNx6yBsV0gh9GpXCBrPkP/cEEFchAtcS
pu6jT2LXEP2sJKKuL1SIzRCKyrC0uEjjXSeVoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77152)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
