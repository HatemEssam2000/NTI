//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Decoding Circuit
// Referance : Anaas Salah
//
//////////////////////////////////////////////////////////////////////////////// 

module VGA_Sync #(parameter OUTPUT_RGB_BITS = 24)
(

    input wire clk, reset,

    // to vga monitor
    output wire hsync, vsync,
    output wire [OUTPUT_RGB_BITS-1:0] rgb,
    // frame counter output
    //output wire [10:0] hc, vc,

    output wire VGA_BLANK_N, VGA_SYNC_N, VGA_CLK
);

// localparam declaration
// vga 640-by-480 sync parameters
localparam HD = 640;  // horizontal display area
localparam HF = 16;   // h. front porch
localparam HB = 48;   // h. back porch
localparam HR = 96;   // h. retrace
localparam HT = HD+HF+HB+HR; // horizontal total (800)
localparam VD = 480;  // vertical display area
localparam VF = 10;   // v. front porch
localparam VB = 33;   // v. back porch
localparam VR = 2;    // v. retrace
localparam VT = VD+VF+VB+VR; // vertical total (525)

// signal declaration

wire freq_enable;
wire [10:0] horizontal_count, vertical_count;
wire hsync_i, vsync_i, video_on_i;
reg hsync_reg, vsync_reg;
reg [OUTPUT_RGB_BITS-1:0] rgb_reg;
//dump for this project
wire frame_start,frame_end;

//system input 
wire [OUTPUT_RGB_BITS -1:0] vga_input_image_rgb;


//clk generation
//-----------------------------------------


assign freq_enable = 1 ;

PLL pll_inst (
		.refclk   (clk),   //  refclk.clk
		.rst      (reset),      //   reset.reset
		.outclk_0 (clk_PLL), // outclk0.clk

	);

//-----------------------------------------
// image storing unit
ROM rom_inst(
	.address(((vertical_count >> 1)*320) + (horizontal_count >> 1)),
	.clock(clk_PLL),
	.q(vga_input_image_rgb));

//-----------------------------------------

// instantiate frame counter
Frame_counter #(.HMAX(HT), .VMAX(VT)) frame_unit
    (.clk(clk_PLL), .reset(reset),
     .sync_clr(0), .hcount(horizontal_count), .vcount(vertical_count), .e_inc(freq_enable),
     .frame_start(frame_start), .frame_end(frame_end));

// horizontal sync decoding
assign hsync_i = ((horizontal_count>=(HD+HF)) && (horizontal_count<=(HD+HF+HR-1))) ? 0 : 1;

// vertical sync decoding
assign vsync_i = ((vertical_count>=(VD+VF)) && (vertical_count<=(VD+VF+VR-1))) ? 0 : 1;

// display on/off
assign video_on_i = ((horizontal_count < HD) && (vertical_count < VD)) ? 1 : 0;

// buffered output to vga monitor
always @(posedge clk) begin
    vsync_reg <= vsync_i;
    hsync_reg <= hsync_i;
    if (video_on_i)
        rgb_reg <= vga_input_image_rgb;
    else
        rgb_reg <= 0;   // black when display off
end

// output
assign hsync = hsync_reg;
assign vsync = vsync_reg;
assign rgb = rgb_reg;
//assign hc = horizontal_count;
//assign vc = vertical_count;

//VGA Configrations
assign VGA_CLK = clk_PLL;
assign VGA_SYNC_N = 1'b0;
assign VGA_BLANK_N = video_on_i;
endmodule