module snippet();

typedef struct { 
                  string    name;
                  int       roll_no;
                  string    class_sec;
                  string    gender;
                  int       dob;
                                     }students;

students student1,student2;

initial
begin
student1={"basu",16,"A","Male",2002};
$display("the student1 details is %p",student1);
student2={"madhu",90,"B","Male",2003};
$display("the student1 details is %p",student2);
student2.class_sec="C";
$display("the student2 section is %p",student2);

end
endmodule
                  
