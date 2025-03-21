module tb_fpu_sp_divider #(parameter WIDTH=32);
shortreal A;
shortreal B;
reg [31:0] result;
fpu_sp_divider Div ($shortrealtobits (A), $shortrealtobits (B), result);

initial  
begin
A = 4.20;  
B = 3.20;  
#20
A = 0.66; 
B = 0.51;  
#20
A = -6.40; 
B = -0.50; 
#20
A = 6.40;  
B = -0.50;  	
#20
A = 2.82; 
B = -0.94; 
#20
A = 2234.0132;
B = -1235.3412;
#20
A = 1.0132;
B = -1235.3412;
#20
A = -0.0132;
B = -1235.3412;
#20
A = 0.0152;
B = -0.3412;
#20
A = 124054.4312345;
B = -9213743.123655343;
end

initial
begin
$display("Single Precision Division\n");
#15
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
#20
$display("A = %f, B = %f, Expected Value = %f, Result = %f\n",A,B,A/B,$bitstoshortreal(result));
$finish;
end
endmodule