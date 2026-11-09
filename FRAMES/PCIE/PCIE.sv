module PCIE();
    byte START;
    shortint SEQUENCE;
    bit [127:0]HEADER;
    bit [32767:0]PAYLOAD;
    int ECRC,LCRC;
    byte END;

    initial
    begin
    $display("SIZE OF START IS == %0d",$bits(START));
    $display("SIZE OF SEQUENCE IS == %0d",$bits(SEQUENCE));
    $display("SIZE OF HEADER IS == %0d",$bits(HEADER));
    $display("SIZE OF PAYLOAD IS == %0d",$bits(PAYLOAD));
    $display("SIZE OF ECRC IS == %0d",$bits(ECRC));
    $display("SIZE OF LCRC IS == %0d",$bits(LCRC));
    $display("SIZE OF END IS == %0d",$bits(END));
    end
    endmodule
   


