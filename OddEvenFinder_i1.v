`timescale 1ns / 1ps
module OddEvenFinder(
	X,
	En,
	Even,
	Odd
    );

	input [15:0]X;
	input En;
	output Even, Odd;
	reg Even, Odd;
	
	always@(En,X)
	begin
		if(En == 1'b0)
		begin
			Even = 1'bz;
			Odd = 1'bz;
		end
		else
		begin
			if(X & 16'b0000000000000001)
			begin
				Even = 1'b0;
				Odd = 1'b1;
			end
			else
			begin
				Even = 1'b1;
				Odd = 1'b0;
			end
		end
	end

endmodule
