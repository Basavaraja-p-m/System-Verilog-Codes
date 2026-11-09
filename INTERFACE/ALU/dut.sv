module dut #(parameter IN=8)(input [IN-1:0]a,b,
           input [$clog2(IN):0]opcode,
           output [2*IN-1:0]y
           );

assign y=((opcode==0)?a+b:(opcode==1)?a-b:(opcode==2)?a*b:(opcode==3)?a/b:(opcode==4)?a%b:(opcode==5)?a**b:(opcode==6)?a>>1:(opcode==7)?a^b:(opcode==8)?a|b:a&b);

endmodule
