
//write a task that takes two 8-bit inputs and displays their sum and difference  

module snippet();

int p,q;
task add_sub(input byte a,b,output int add,sub);
       add=a+b;
       $display("a=%0d b=%0d add=%0d",a,b,add);
       sub=a-b;
       $display("a=%0d b=%0d sub=%0d",a,b,sub);
endtask

initial
begin
add_sub(8,8,p,q);
end

endmodule
     
