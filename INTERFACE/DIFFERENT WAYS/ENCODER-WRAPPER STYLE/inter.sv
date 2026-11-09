interface inter();

    logic [3:0]a;
    logic [1:0]y;

        modport d(input a, output y);
        modport t(input y, output a);

endinterface
