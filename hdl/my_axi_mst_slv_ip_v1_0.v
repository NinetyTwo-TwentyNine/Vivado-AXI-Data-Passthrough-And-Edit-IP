
`timescale 1 ns / 1 ps

	module my_axi_mst_slv_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line
		parameter integer COM_AXI_DATA_WIDTH	= 32,
		parameter integer COM_AXI_ADDR_WIDTH	= 32,

        parameter [(COM_AXI_ADDR_WIDTH-1):0] AXI_RDATA_REPLACEMENT_ADDR = "0",
        parameter [(COM_AXI_DATA_WIDTH-1):0] AXI_RDATA_REPLACEMENT_VALUE = "0",
        parameter [(COM_AXI_DATA_WIDTH-1):0] AXI_RDATA_REPLACEMENT_MASK = "0",
		
        parameter [(COM_AXI_ADDR_WIDTH-1):0] AXI_WDATA_REPLACEMENT_ADDR = "0",
        parameter [(COM_AXI_DATA_WIDTH-1):0] AXI_WDATA_REPLACEMENT_VALUE = "0",
        parameter [(COM_AXI_DATA_WIDTH-1):0] AXI_WDATA_REPLACEMENT_MASK = "0",

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= COM_AXI_DATA_WIDTH,
		parameter integer C_S00_AXI_ADDR_WIDTH	= COM_AXI_ADDR_WIDTH,

		// Parameters of Axi Master Bus Interface M00_AXI
		parameter integer C_M00_AXI_ADDR_WIDTH	= COM_AXI_ADDR_WIDTH,
		parameter integer C_M00_AXI_DATA_WIDTH	= COM_AXI_DATA_WIDTH
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
		
		// Common 00 AXI ports
//		wire [C_M00_AXI_ADDR_WIDTH-1 : 0] c00_axi_awaddr,
//		wire [2 : 0] c00_axi_awprot,
//		wire  c00_axi_awvalid,
//		wire  c00_axi_awready,
//		wire [C_M00_AXI_DATA_WIDTH-1 : 0] c00_axi_wdata,
//		wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] c00_axi_wstrb,
//		wire  c00_axi_wvalid,
//		wire  c00_axi_wready,
//		wire [1 : 0] c00_axi_bresp,
//		wire  c00_axi_bvalid,
//		wire  c00_axi_bready,
//		wire [C_M00_AXI_ADDR_WIDTH-1 : 0] c00_axi_araddr,
//		wire [2 : 0] c00_axi_arprot,
//		wire  c00_axi_arvalid,
//		wire  c00_axi_arready,
//		wire [C_M00_AXI_DATA_WIDTH-1 : 0] c00_axi_rdata,
//		wire [1 : 0] c00_axi_rresp,
//		wire  c00_axi_rvalid,
//		wire  c00_axi_rready
	);

// Instantiation of Axi Bus Interface M00_AXI
	my_axi_mst_slv_ip_v1_0_M00_AXI # (
		.C_AXI_ADDR_WIDTH(COM_AXI_ADDR_WIDTH),
		.C_AXI_DATA_WIDTH(COM_AXI_DATA_WIDTH),
		.C_AXI_RDATA_REPLACEMENT_ADDR(AXI_RDATA_REPLACEMENT_ADDR),
		.C_AXI_RDATA_REPLACEMENT_VALUE(AXI_RDATA_REPLACEMENT_VALUE),
		.C_AXI_RDATA_REPLACEMENT_MASK(AXI_RDATA_REPLACEMENT_MASK),
		.C_AXI_WDATA_REPLACEMENT_ADDR(AXI_WDATA_REPLACEMENT_ADDR),
		.C_AXI_WDATA_REPLACEMENT_VALUE(AXI_WDATA_REPLACEMENT_VALUE),
		.C_AXI_WDATA_REPLACEMENT_MASK(AXI_WDATA_REPLACEMENT_MASK)
	) my_axi_mst_slv_ip_v1_0_M00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule