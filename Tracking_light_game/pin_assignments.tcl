

## Switches
 set_location_assignment PIN_AB30  -to  in_user[0]     ;#SW[0]
 set_location_assignment PIN_Y27   -to  in_user[1]      ;#SW[1]
 set_location_assignment PIN_AB28  -to  in_user[2]      ;#SW[2]
 set_location_assignment PIN_AC30  -to  in_user[3]      ;#SW[3]
 set_location_assignment PIN_W25   -to  in_user[4]      ;#SW[4]
 set_location_assignment PIN_V25   -to  in_user[5]      ;#SW[5]
 set_location_assignment PIN_AC28  -to  in_user[6]      ;#SW[6]
 set_location_assignment PIN_AD30  -to  in_user[7]       ;#SW[7]
 set_location_assignment PIN_AC29  -to  in_user[8]     ;#SW[8]
 set_location_assignment PIN_AA30  -to  in_user[9]     ;#SW[9]


## Keys
 set_location_assignment PIN_AJ4  -to  rst_n     ;#KEY[0]
# set_location_assignment PIN_AK4  -to       ;#KEY[1]
# set_location_assignment PIN_AA14  -to       ;#KEY[2]
# set_location_assignment PIN_AA15  -to       ;#KEY[3]


## LEDs
 set_location_assignment PIN_AA24  -to leds_out[0]    ;#LEDR[0]
 set_location_assignment PIN_AB23  -to leds_out[1]    ;#LEDR[1]
 set_location_assignment PIN_AC23  -to leds_out[2]    ;#LEDR[2]
 set_location_assignment PIN_AD24  -to leds_out[3]    ;#LEDR[3]
 set_location_assignment PIN_AG25  -to leds_out[4]    ;#LEDR[4]
 set_location_assignment PIN_AF25  -to leds_out[5]    ;#LEDR[5]
 set_location_assignment PIN_AE24  -to leds_out[6]    ;#LEDR[6]
 set_location_assignment PIN_AF24  -to leds_out[7]    ;#LEDR[7]
 set_location_assignment PIN_AB22  -to leds_out[8]    ;#LEDR[8]
 set_location_assignment PIN_AC22  -to leds_out[9]    ;#LEDR[9]


## Clocks
 set_location_assignment PIN_AF14  -to   clk_ref    ;#CLOCK_50
# set_location_assignment PIN_AA16  -to       ;#CLOCK2_50
# set_location_assignment PIN_Y26   -to       ;#CLOCK3_50
# set_location_assignment PIN_K14   -to       ;#CLOCK4_50
# set_location_assignment PIN_D25   -to       ;#HPS_CLOCK1_25
# set_location_assignment PIN_F25   -to       ;#HPS_CLOCK2_25


## 7-segment Displays
set_location_assignment PIN_W17   -to   seg1_out_display[0]    ;#HEX0[0]
set_location_assignment PIN_V18   -to   seg1_out_display[1]    ;#HEX0[1]
set_location_assignment PIN_AG17  -to   seg1_out_display[2]    ;#HEX0[2]
set_location_assignment PIN_AG16  -to   seg1_out_display[3]    ;#HEX0[3]
set_location_assignment PIN_AH17  -to   seg1_out_display[4]    ;#HEX0[4]
set_location_assignment PIN_AG18  -to   seg1_out_display[5]    ;#HEX0[5]
set_location_assignment PIN_AH18  -to   seg1_out_display[6]    ;#HEX0[6]

set_location_assignment PIN_AF16  -to   seg2_out_display[0]    ;#HEX1[0]
set_location_assignment PIN_V16   -to   seg2_out_display[1]    ;#HEX1[1]
set_location_assignment PIN_AE16  -to   seg2_out_display[2]    ;#HEX1[2]
set_location_assignment PIN_AD17  -to   seg2_out_display[3]    ;#HEX1[3]
set_location_assignment PIN_AE18  -to   seg2_out_display[4]    ;#HEX1[4]
set_location_assignment PIN_AE17  -to   seg2_out_display[5]    ;#HEX1[5]
set_location_assignment PIN_V17   -to   seg2_out_display[6]    ;#HEX1[6]

set_location_assignment PIN_AA21  -to   seg3_out_display[0]     ;#HEX2[0]
set_location_assignment PIN_AB17  -to   seg3_out_display[1]     ;#HEX2[1]
set_location_assignment PIN_AA18  -to   seg3_out_display[2]     ;#HEX2[2]
set_location_assignment PIN_Y17   -to   seg3_out_display[3]     ;#HEX2[3]
set_location_assignment PIN_Y18   -to   seg3_out_display[4]     ;#HEX2[4]
set_location_assignment PIN_AF18  -to   seg3_out_display[5]     ;#HEX2[5]
set_location_assignment PIN_W16   -to   seg3_out_display[6]     ;#HEX2[6]

set_location_assignment PIN_Y19   -to   seg4_out_display[0]    ;#HEX3[0]
set_location_assignment PIN_W19   -to   seg4_out_display[1]    ;#HEX3[1]
set_location_assignment PIN_AD19  -to   seg4_out_display[2]    ;#HEX3[2]
set_location_assignment PIN_AA20  -to   seg4_out_display[3]    ;#HEX3[3]
set_location_assignment PIN_AC20  -to   seg4_out_display[4]    ;#HEX3[4]
set_location_assignment PIN_AA19  -to   seg4_out_display[5]    ;#HEX3[5]
set_location_assignment PIN_AD20  -to   seg4_out_display[6]    ;#HEX3[6]

set_location_assignment PIN_AD21  -to   seg5_out_display[0]    ;#HEX4[0]
set_location_assignment PIN_AG22  -to   seg5_out_display[1]    ;#HEX4[1]
set_location_assignment PIN_AE22  -to   seg5_out_display[2]    ;#HEX4[2]
set_location_assignment PIN_AE23  -to   seg5_out_display[3]    ;#HEX4[3]
set_location_assignment PIN_AG23  -to   seg5_out_display[4]    ;#HEX4[4]
set_location_assignment PIN_AF23  -to   seg5_out_display[5]    ;#HEX4[5]
set_location_assignment PIN_AH22  -to   seg5_out_display[6]    ;#HEX4[6]

set_location_assignment PIN_AF21  -to   seg6_out_display[0]    ;#HEX5[0]
set_location_assignment PIN_AG21  -to   seg6_out_display[1]    ;#HEX5[1]
set_location_assignment PIN_AF20  -to   seg6_out_display[2]    ;#HEX5[2]
set_location_assignment PIN_AG20  -to   seg6_out_display[3]    ;#HEX5[3]
set_location_assignment PIN_AE19  -to   seg6_out_display[4]    ;#HEX5[4]
set_location_assignment PIN_AF19  -to   seg6_out_display[5]    ;#HEX5[5]
set_location_assignment PIN_AB21  -to   seg6_out_display[6]    ;#HEX5[6]

# source "E:/courses/nti_instractor_path/FPGA CycloneV/pin_assignments.tcl"
#VGA Output
#set_location_assignment PIN_AK29  -to      ;#VGA_R[0] 
#set_location_assignment PIN_AK28  -to      ;#VGA_R[1] 
#set_location_assignment PIN_AK27  -to      ;#VGA_R[2] 
#set_location_assignment PIN_AJ27  -to      ;#VGA_R[3] 
#set_location_assignment PIN_AH27  -to      ;#VGA_R[4] 
#set_location_assignment PIN_AF26  -to      ;#VGA_R[5] 
#set_location_assignment PIN_AG26  -to      ;#VGA_R[6] 
#set_location_assignment PIN_AJ26  -to      ;#VGA_R[7] 
#set_location_assignment PIN_AK26  -to      ;#VGA_G[0] 
#set_location_assignment PIN_AJ25  -to      ;#VGA_G[1] 
#set_location_assignment PIN_AH25  -to      ;#VGA_G[2] 
#set_location_assignment PIN_AK24  -to      ;#VGA_G[3] 
#set_location_assignment PIN_AJ24  -to      ;#VGA_G[4] 
#set_location_assignment PIN_AH24  -to      ;#VGA_G[5] 
#set_location_assignment PIN_AK23  -to      ;#VGA_G[6] 
#set_location_assignment PIN_AH23  -to      ;#VGA_G[7] 
#set_location_assignment PIN_AJ21  -to      ;#VGA_B[0] 
#set_location_assignment PIN_AJ20  -to      ;#VGA_B[1] 
#set_location_assignment PIN_AH20  -to      ;#VGA_B[2] 
#set_location_assignment PIN_AJ19  -to      ;#VGA_B[3] 
#set_location_assignment PIN_AH19  -to      ;#VGA_B[4] 
#set_location_assignment PIN_AJ17  -to      ;#VGA_B[5] 
#set_location_assignment PIN_AJ16  -to      ;#VGA_B[6] 
#set_location_assignment PIN_AK16  -to      ;#VGA_B[7] 
#set_location_assignment PIN_AK21  -to      ;#VGA_CLK 
#set_location_assignment PIN_AK22  -to      ;#VGA_BLANK_N
#set_location_assignment PIN_AK19  -to      ;#VGA_HS 
#set_location_assignment PIN_AK18  -to      ;#VGA_VS 
#set_location_assignment PIN_AJ22  -to      ;#VGA_SYNC_N 
