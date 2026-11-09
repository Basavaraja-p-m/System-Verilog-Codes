module ETHERNET();
    longint PREAMBLE;
    bit [47:0]DEST_ADDR;
    bit [47:0]SOURCE_ADDR;
    shortint TYPE;
    bit [367:0]DATA;
    int FRAME_CHECK_SEQ;

    initial
    begin
    $display("THE SIZE OF PREAMBLE IS == %0d",$bits(PREAMBLE));
    $display("THE SIZE OF DEST_ADDR IS == %0d ",$bits(DEST_ADDR));
    $display("THE SIZE OF SOURCE_ADDR IS == %0d",$bits(SOURCE_ADDR));
    $display("THE SIZE OF TYPE IS == %0d",$bits(TYPE));
    $display("THE SIZE OF DATA IS == %0d",$bits(DATA));
    $display("THE SIZE OF FRAME_CHECK_SEQ IS == %0d",$bits(FRAME_CHECK_SEQ));
    end
    endmodule

