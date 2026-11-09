module snippet();

byte a,y;

initial
begin
a=1;
/*priority case(a)
1 :   begin
      y=10;
      $display("FIRST OUTPUT");
      end
2 :   begin
      y=20;
      $display("SECOND OUTPUT");
      end
default : begin
          y=30;
          $display("THIRD OUTPUT");
          end  */ 


/*unique  case(a)
1 :   begin
      y=10;
      $display("FIRST OUTPUT");
      end
1 :   begin
      y=20;
      $display("SECOND OUTPUT");
      end*/
/*default : begin
          y=30;
          $display("THIRD OUTPUT");
          end */ 


unique0 case(a)
1 :   begin
      y=10;
      $display("FIRST OUTPUT");
      end
1 :   begin
      y=20;
      $display("SECOND OUTPUT");
      end
default : begin
          y=30;
          $display("THIRD OUTPUT");
          end
endcase
end
endmodule
