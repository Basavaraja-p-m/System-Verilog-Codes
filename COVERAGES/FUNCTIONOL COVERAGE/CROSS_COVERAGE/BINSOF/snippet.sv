module snippet;
    bit [7:0]a;
    bit [7:0]b;

    covergroup cg;
    cp1 : coverpoint a{bins x1={[0:99]};
                      bins x2={[100:199]};
                      bins x3={[200:255]};
                     }
    cp2 : coverpoint b{bins y1={[0:74]};
                      bins y2={[75:149]};
                      bins y3={[150:255]};
                      }
    cross1 : cross cp1,cp2{bins xy1=binsof(cp1.x1);
                           bins xy2=binsof(cp2.y2);
                           bins xy3=binsof(cp1.x1) && binsof(cp2.y2);
                           bins xy4=binsof(cp1.x1) || binsof(cp2.y2);}
    endgroup

    cg c1;
    initial
    begin
    c1=new;
    repeat(10)
    begin
    {a,b}=$random;
    $display("a=%d b=%d",a,b);
    c1.sample();
    end
    end
endmodule
