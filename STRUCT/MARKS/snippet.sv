module snippet();


struct { 
             int kannada;
             int english;
             int maths;
             string science;
             int social;
             int hindi;
                            }subjects;

initial
begin
subjects='{100,90,80,"ninty",80,90};
//subjects.kannada=100;
//subjects.maths=70;
//subjects.science="99";
$display("the marks of the subjects is %p",subjects);

end
endmodule


