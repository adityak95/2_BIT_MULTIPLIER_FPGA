module multi(a1,a0,b1,b0,c0,c1,c3,c2);
input a1,a0,b1,b0;
output c1,c2,c3,c0;

assign c0= a0 & b0;
assign c1= (~a1&a0&b1) | (b1&(~b0)&a0) | (~b1&b0&a1) | (a1&(~a0)&b0);
assign c2= (a1&b1&(~b0)) | (a1&(~a0)&b1);
assign c3= a1 & a0 & b1 & b0;

endmodule
