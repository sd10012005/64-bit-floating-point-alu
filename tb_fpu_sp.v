module tb_fpu_sp #(parameter WIDTH=32);
localparam PERIOD = 10;

shortreal A;
shortreal B;
reg clk;
reg [1:0] opCode;
reg [31:0] result;
reg Ready;
reg Overflow;
reg Underflow;
fpu_sp GeneralSp ($shortrealtobits (A), $shortrealtobits (B), clk, opCode, result,Ready,Overflow,Underflow);



always begin
	# (PERIOD/2) clk = ~clk;
end

initial begin
clk = 1'b0;
//-------------------ADD---------------------------
A = 4.20;  
B = 3.20;  
opCode=2'b00;

#PERIOD
A = -0.0132;
B = -1235.3412;

#PERIOD
A = 2.82; 
B = -0.94; 

#PERIOD
A = 124054.4312345;
B = -9213743.123655343;

//------------------SUB---------------------
#(PERIOD*3)
A = -6.40; 
B = -0.50; 
opCode=2'b01;	

#PERIOD
A = 2.82; 
B = -0.94; 

#PERIOD
A = 2234.0132;
B = -1235.3412;

#PERIOD
A = 1.0132;
B = -356.29814;

//--------------MUL--------------------------------
#(PERIOD*3)
A = -0.0132;
B = -1235.3412;
opCode=2'b10;

#PERIOD
A = 0.0152;
B = -0.3412;

#PERIOD
A = -6.40; 
B = 0.50; 	

#PERIOD
A=123;
B=412;

//-------------------------DIV--------------------
#(PERIOD*3)
A = 4.20;  
B = 3.20; 
opCode=2'b11; 

#(PERIOD)
A = -0.0132;
B = -1235.3412;

#(PERIOD)
A = 2.82; 
B = -0.94;

#(PERIOD)
A = 124054.4312345;
B = -9213743.123655343;

#PERIOD;

end

initial begin
$display("Single Precision\n");


$display("Addition:\n");
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A+B);
#(PERIOD*2)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A+B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A+B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A+B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));

#(PERIOD)
$display("Subtraction:\n");
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A-B);
#(PERIOD*2)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A-B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A-B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A-B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));

#(PERIOD)
$display("Multiplication:\n");
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A*B);
#(PERIOD*2)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A*B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A*B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A*B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));

#(PERIOD)
$display("Division:\n");
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A/B);
#(PERIOD*2)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A/B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A/B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
$display("A = %f, B = %f, Expected Value = %f\n", A, B, A/B);
#(PERIOD)
$display("Result = %f\n",$bitstoshortreal(result));
#(PERIOD)

$finish;
end
endmodule