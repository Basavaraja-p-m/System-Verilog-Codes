module snippet();

class student;
   //properties
     string name;
     string sec;
     int roll_no;

endclass

//step 1 : declaration af handle - used to access the class members
student s1,s2;
     
     initial
     begin

//step 2 : memory allocating for members using new()
     s1=new();

//step 3 : accessing members of class by using instance
     s1.name="basu";
     s1.sec="A";
     s1.roll_no=16;
     $display("students=%p",s1);
     s2=s1;
     $display("students=%p",s2);
     s1=null;
     s2.name="xyz";
     s2.sec="B";
     s2.roll_no=22;

     $display("students=%p",s2);
     end

endmodule


    
