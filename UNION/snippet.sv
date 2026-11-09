module snippet();

union {  int kannada;
         int english;
         int maths;
         int sceince;
         int social;
         int hindi;
                      }subjects;   //string was not allowed

 initial
 begin
 //subjects='{100,90,80,90,80,95};
 subjects.maths=85;
 $display("the kannada marks is %p",subjects);

 end
 endmodule
