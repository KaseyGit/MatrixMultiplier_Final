module bin2bcd(input [3:0] bin, output reg [3:0] bcd_out, output reg invalid); //COMBINATIONAL BIN2BCD
//invalid if input is greater than 9; acts an enable signal

always @(*)begin
	if(bin > 4'd9)begin 
		invalid <= 1'b1; 
		bcd_out <= 4'd0;
	end
	else begin
		invalid <= 1'b0;
		bcd_out <= bin;
	end
end

endmodule
