module UART();
    bit START;
    byte PAYLOAD;
    bit PARITY;
    bit STOP;

    initial
    begin
    $display("THE SIZE OF START IS == %0d",$bits(START));
    $display("THE SIZE OF PAYLOAD IS == %0d",$bits(PAYLOAD));
    $display("THE SIZE OF PARITY IS == %0d",$bits(PARITY));
    $display("THE SIZE OF STOP IS == %0d",$bits(STOP));
    end
endmodule

