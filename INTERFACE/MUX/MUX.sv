module MUX(inter d);

assign d.y=(d.s)?d.i[1]:d.i[0];
endmodule


