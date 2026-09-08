

## Switches

# set_location_assignment PIN_AB30  -to  vga_input_image_rgb[0]      ;#SW[0]
# set_location_assignment PIN_Y27   -to  vga_input_image_rgb[1]      ;#SW[1]
# set_location_assignment PIN_AB28  -to  vga_input_image_rgb[2]      ;#SW[2]
# set_location_assignment PIN_AC30  -to  vga_input_image_rgb[3]      ;#SW[3]
# set_location_assignment PIN_W25   -to  vga_input_image_rgb[4]      ;#SW[4]
# set_location_assignment PIN_V25   -to  vga_input_image_rgb[5]      ;#SW[5]
# set_location_assignment PIN_AC28  -to  vga_input_image_rgb[6]      ;#SW[6]
# set_location_assignment PIN_AD30  -to  vga_input_image_rgb[7]      ;#SW[7]
# set_location_assignment PIN_AC29  -to  vga_input_image_rgb[8]      ;#SW[8]
set_location_assignment PIN_AA30  -to  reset    ;                    #SW[9]


## Keys
# set_location_assignment PIN_AJ4  -to       ;#KEY[0]
# set_location_assignment PIN_AK4  -to       ;#KEY[1]
# set_location_assignment PIN_AA14 -to       ;#KEY[2]
# set_location_assignment PIN_AA15 -to       ;#KEY[3]


## LEDs
# set_location_assignment PIN_AA24  -to     ;#LEDR[0]
# set_location_assignment PIN_AB23  -to     ;#LEDR[1]
# set_location_assignment PIN_AC23  -to     ;#LEDR[2]
# set_location_assignment PIN_AD24  -to     ;#LEDR[3]
# set_location_assignment PIN_AG25  -to     ;#LEDR[4]
# set_location_assignment PIN_AF25  -to     ;#LEDR[5]
# set_location_assignment PIN_AE24  -to     ;#LEDR[6]
# set_location_assignment PIN_AF24  -to     ;#LEDR[7]
# set_location_assignment PIN_AB22  -to     ;#LEDR[8]
# set_location_assignment PIN_AC22  -to     ;#LEDR[9]


## Clocks
set_location_assignment PIN_AF14  -to  clk     ;#CLOCK_50
# set_location_assignment PIN_AA16  -to       ;#CLOCK2_50
# set_location_assignment PIN_Y26   -to       ;#CLOCK3_50
# set_location_assignment PIN_K14   -to       ;#CLOCK4_50
# set_location_assignment PIN_D25   -to       ;#HPS_CLOCK1_25
# set_location_assignment PIN_F25   -to       ;#HPS_CLOCK2_25


## 7-segment Displays
# set_location_assignment PIN_W17   -to   HEX0[0]    ;#HEX0[0]
# set_location_assignment PIN_V18   -to   HEX0[1]    ;#HEX0[1]
# set_location_assignment PIN_AG17  -to   HEX0[2]    ;#HEX0[2]
# set_location_assignment PIN_AG16  -to   HEX0[3]    ;#HEX0[3]
# set_location_assignment PIN_AH17  -to   HEX0[4]    ;#HEX0[4]
# set_location_assignment PIN_AG18  -to   HEX0[5]    ;#HEX0[5]
# set_location_assignment PIN_AH18  -to   HEX0[6]    ;#HEX0[6]

# set_location_assignment PIN_AF16  -to   HEX1[0]    ;#HEX1[0]
# set_location_assignment PIN_V16   -to   HEX1[1]    ;#HEX1[1]
# set_location_assignment PIN_AE16  -to   HEX1[2]    ;#HEX1[2]
# set_location_assignment PIN_AD17  -to   HEX1[3]    ;#HEX1[3]
# set_location_assignment PIN_AE18  -to   HEX1[4]    ;#HEX1[4]
# set_location_assignment PIN_AE17  -to   HEX1[5]    ;#HEX1[5]
# set_location_assignment PIN_V17   -to   HEX1[6]    ;#HEX1[6]

# set_location_assignment PIN_AA21  -to   HEX2[0]    ;#HEX2[0]
# set_location_assignment PIN_AB17  -to   HEX2[1]     ;#HEX2[1]
# set_location_assignment PIN_AA18  -to   HEX2[2]     ;#HEX2[2]
# set_location_assignment PIN_Y17   -to   HEX2[3]     ;#HEX2[3]
# set_location_assignment PIN_Y18   -to   HEX2[4]     ;#HEX2[4]
# set_location_assignment PIN_AF18  -to   HEX2[5]     ;#HEX2[5]
# set_location_assignment PIN_W16   -to   HEX2[6]     ;#HEX2[6]

# set_location_assignment PIN_Y19   -to   HEX3[0]    ;#HEX3[0]
# set_location_assignment PIN_W19   -to   HEX3[1]    ;#HEX3[1]
# set_location_assignment PIN_AD19  -to   HEX3[2]    ;#HEX3[2]
# set_location_assignment PIN_AA20  -to   HEX3[3]    ;#HEX3[3]
# set_location_assignment PIN_AC20  -to   HEX3[4]    ;#HEX3[4]
# set_location_assignment PIN_AA19  -to   HEX3[5]    ;#HEX3[5]
# set_location_assignment PIN_AD20  -to   HEX3[6]    ;#HEX3[6]

# set_location_assignment PIN_AD21  -to   HEX4[0]    ;#HEX4[0]
# set_location_assignment PIN_AG22  -to   HEX4[1]    ;#HEX4[1]
# set_location_assignment PIN_AE22  -to   HEX4[2]    ;#HEX4[2]
# set_location_assignment PIN_AE23  -to   HEX4[3]    ;#HEX4[3]
# set_location_assignment PIN_AG23  -to   HEX4[4]    ;#HEX4[4]
# set_location_assignment PIN_AF23  -to   HEX4[5]    ;#HEX4[5]
# set_location_assignment PIN_AH22  -to   HEX4[6]    ;#HEX4[6]

# set_location_assignment PIN_AF21  -to   HEX5[0]    ;#HEX5[0]
# set_location_assignment PIN_AG21  -to   HEX5[1]    ;#HEX5[1]
# set_location_assignment PIN_AF20  -to   HEX5[2]    ;#HEX5[2]
# set_location_assignment PIN_AG20  -to   HEX5[3]    ;#HEX5[3]
# set_location_assignment PIN_AE19  -to   HEX5[4]    ;#HEX5[4]
# set_location_assignment PIN_AF19  -to   HEX5[5]    ;#HEX5[5]
# set_location_assignment PIN_AB21  -to   HEX5[6]    ;#HEX5[6]


#VGA Output
set_location_assignment PIN_AK29  -to   rgb[0]   ;#VGA_R[0] 
set_location_assignment PIN_AK28  -to   rgb[1]   ;#VGA_R[1] 
set_location_assignment PIN_AK27  -to   rgb[2]   ;#VGA_R[2] 
set_location_assignment PIN_AJ27  -to   rgb[3]   ;#VGA_R[3] 
set_location_assignment PIN_AH27  -to   rgb[4]   ;#VGA_R[4] 
set_location_assignment PIN_AF26  -to   rgb[5]   ;#VGA_R[5] 
set_location_assignment PIN_AG26  -to   rgb[6]   ;#VGA_R[6] 
set_location_assignment PIN_AJ26  -to   rgb[7]   ;#VGA_R[7] 
set_location_assignment PIN_AK26  -to   rgb[8]   ;#VGA_G[0] 
set_location_assignment PIN_AJ25  -to   rgb[9]   ;#VGA_G[1] 
set_location_assignment PIN_AH25  -to   rgb[10]   ;#VGA_G[2] 
set_location_assignment PIN_AK24  -to   rgb[11]   ;#VGA_G[3] 
set_location_assignment PIN_AJ24  -to   rgb[12]   ;#VGA_G[4] 
set_location_assignment PIN_AH24  -to   rgb[13]   ;#VGA_G[5] 
set_location_assignment PIN_AK23  -to   rgb[14]   ;#VGA_G[6] 
set_location_assignment PIN_AH23  -to   rgb[15]   ;#VGA_G[7] 
set_location_assignment PIN_AJ21  -to   rgb[16]   ;#VGA_B[0] 
set_location_assignment PIN_AJ20  -to   rgb[17]   ;#VGA_B[1] 
set_location_assignment PIN_AH20  -to   rgb[18]   ;#VGA_B[2] 
set_location_assignment PIN_AJ19  -to   rgb[19]   ;#VGA_B[3] 
set_location_assignment PIN_AH19  -to   rgb[20]   ;#VGA_B[4] 
set_location_assignment PIN_AJ17  -to   rgb[21]   ;#VGA_B[5] 
set_location_assignment PIN_AJ16  -to   rgb[22]   ;#VGA_B[6] 
set_location_assignment PIN_AK16  -to   rgb[23]   ;#VGA_B[7] 
set_location_assignment PIN_AK21  -to   VGA_CLK   ;#VGA_CLK 
set_location_assignment PIN_AK22  -to   VGA_BLANK_N    ;#VGA_BLANK_N
set_location_assignment PIN_AK19  -to   hsync   ;#VGA_HS 
set_location_assignment PIN_AK18  -to   vsync   ;#VGA_VS 
set_location_assignment PIN_AJ22  -to   VGA_SYNC_N   ;#VGA_SYNC_N 
