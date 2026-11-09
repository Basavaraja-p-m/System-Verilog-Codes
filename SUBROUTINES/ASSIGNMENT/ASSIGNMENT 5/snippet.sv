module snippet();

task name(input shortint a);

for(int i=0;i<16;i++)
     if(a[i]==1) 
     $display("a=%b i=%d",a,i);
endtask

initial
begin
name(16'b1010101010101010);
end

endmodule


