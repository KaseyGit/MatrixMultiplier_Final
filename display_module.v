module display_module(input [3:0] bcd_in, input invalid, output reg [6:0] seg_out);

	//Anode: 0 = ON, 1 = OFF

    always @(*) begin
    	if(invalid)
            begin
				seg_out = 7'b1111111; //off 
			end
		else 
			begin
				case(bcd_in)
					0: seg_out = 7'b0000001; //bit order is ABCDEFG, where A = seg[6]
					1'b0001: seg_out = 7'b1001111; //can write cases either way
					2: seg_out = 7'b0010010;
					3: seg_out = 7'b0000110;
					4: seg_out = 7'b1001100;
					5: seg_out = 7'b0100100;
					6: seg_out = 7'b0100000;
					7: seg_out = 7'b0001111;
					8: seg_out = 7'b0000000;
					9: seg_out = 7'b0000100;
					default: seg_out = 7'b1111111; //default is no display
				endcase 
			end 
    end
endmodule
