interface inter(input clk,rst);
     parameter width=8,depth=8;
     logic rd,wr;
     logic [width-1:0]data_in,data_out;
     logic empty,full;

endinterface
