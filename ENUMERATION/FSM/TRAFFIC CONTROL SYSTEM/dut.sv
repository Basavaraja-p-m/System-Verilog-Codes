module dut(input clk,rst,output string signol);

typedef enum {red,yellow,green}tcs;

tcs cs,ns;
int count;
always @(posedge clk or negedge rst)
begin
if(!rst)
    begin
 //   signol<=0;
    cs<=red;
    count<=0;
    end
    else
        begin
        cs<=ns;
        if(ns == red && cs == green)
            count<=0;
        else
            count<=count+1;
        end
end

always @(*)
begin
case(cs)
red : if(count==40)
          begin
          ns<=yellow;
          signol<="YELLOW";
    //      $display("YELLOW");
          end
      else
          begin
          ns<=cs;
          signol<="RED";
   //       $display("RED");

          end

yellow : if(count==50)
              begin
              ns<=green;
           //   $display("GREEN");
              signol<="GREEN" ;                
              end
         else
              begin
              ns<=cs;
              signol<="YELLOW";
            //  $display("YELLOW");

              end

green : if(count==60)
              begin
              ns<=red;
              signol<="RED";
          //    $display("RED");
              end
        else
              begin
              ns<=cs;
              signol<="GREEN";
          ///           $display("GREEN");

              end
endcase
end
endmodule

