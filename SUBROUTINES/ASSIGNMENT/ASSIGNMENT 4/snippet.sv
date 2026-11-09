
//write a function to reverse a 8-bit number use always block for call


module snippet();

byte y;
function byte reverse(input byte a);

     for(int i=0;i<8;i++)
         begin
         reverse[i]=a[7-i];
         end
     $display("a=%b reverse=%b",a,reverse); 

 /*    for(int i=0;i<8;i++)
         begin
         reverse[0]=a[7];
         reverse[1]=a[6];
         reverse[2]=a[5];
         reverse[3]=a[4];
         reverse[4]=a[3];
         reverse[5]=a[2];
         reverse[6]=a[1];
         reverse[7]=a[0];
         end
     $display("a=%b reverse=%b",a,reverse);  */ 
endfunction

always
begin
y=reverse(8'b11110000);
$stop;
end

endmodule
