program tb(inter1 t1,inter2 t2);

/*initial
begin
t1.a=4'b1111;
t1.s=0;#10;
t1.s=1;#10;
t1.s=2;#10;
t1.s=3;#10;
end

initial
begin
t2.b=1011;
t2.s=0;#10;
t2.s=1;#10;
t2.s=2;#10;
t2.s=3;#10;
end
*/

reg  Y;
reg [3:0]Z;

task gen1();
    begin
    t1.a=$random;
    t1.s=0;#10;
    t1.s=1;#10;
    t1.s=2;#10;
    t1.s=3;#10;
    end
endtask
task gen2();
    begin
    t2.b=$random;
    t2.s=0;#10;
    Z=4'b0000;
    t2.s=1;#10;
    t2.s=2;#10;
    t2.s=3;#10;
    end
endtask

task bfm1;
    begin
    Y=(t1.s==0)?t1.a[0]:(t1.s==1)?t1.a[1]:(t1.s==2)?t1.a[2]:t1.a[3];
    end
endtask

task bfm2;
    begin
    case(t2.s)
    0 : Z[0]=t2.b;
    1 : Z[1]=t2.b;
    2 : Z[2]=t2.b;
    3 : Z[3]=t2.b;
    endcase
    end 

  //  t2.b=Z[t2.s];
endtask

task sb1;
    begin
    if(Y==t1.y)
        begin
        $display("a=%b s=%b y=%b Y=%b",t1.a,t1.s,t1.y,Y);
        $display("DUT1 IS PASSED");
        end
        else 
            begin
            $display("a=%b s=%b y=%b Y=%b",t1.a,t1.s,t1.y,Y);
            $display("DUT1 IS FAILED");
            end
    end
endtask

task sb2;
      begin
    if(Z==t2.z)
        begin
        $display("b=%b s=%b z=%b Z=%b",t2.b,t2.s,t2.z,Z);
        $display("DUT2 IS PASSED");
        end
        else 
            begin
            $display("b=%b s=%b z=%b Z=%b",t2.b,t2.s,t2.z,Z);
            $display("DUT2 IS FAILED");
            end
      end
endtask

initial
begin
gen1();
gen2();
bfm1();
bfm2();#10;
sb1();
sb2();
end

endprogram
