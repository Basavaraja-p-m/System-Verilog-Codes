module snippet();

int x,y,z,p,q,r;
//-------------------------------passing by order-----------------------------//
function int add1(input int a,b);
     add1=a+b;
     $display("a=%d b=%d add",a,b,add1);
endfunction

//-------------------------------passing arguments by name------------------------------//
function int add2(input int  a,b);
     add2=a+b;
     $display("a=%d b=%d add2=%d",a,b,add2);
endfunction

//-------------------------------passing arguments by value-------------------------------//
function int add3(input int a,b);
     a=a+1;
     b=b+1;
     add3=a+b;
     $display("a=%d b=%d add3=%d",a,b,add3);
endfunction

//-------------------------------passing arguments by ref------------------------// 
function automatic int add4(ref int a,b);
    a=a+1;
    b=b+1;
    add4=a+b;
    $display("a=%d,b=%d,add4=%d",a,b,add4);
endfunction

//------------------------------passing arguments by constant reference--------------------//
function automatic int add5(const ref int a,b);
  //  a=a+1;
  //  b=b+1;
    add5=a+b;
    $display("a=%d b=%d add5=%d",a,b,add5);
endfunction

//-------------------------------default------------------------------------//
function int add6(input int a=10,b=10);
    add6=a+b;
endfunction

initial
begin
    $display("PASSING ARGUMENTS BY ORDER");
    x=add1(5,5);
   
    $display("PASSING ARGUMNETS BY NAME"); 
    y=add2(.b(3),.a(2));
  
    $display("PASSING ARGUMENTS BY VALUE");
    p=10;
    q=4;
    z=add3(p,q);
    $display("p=%d q=%d z=%d",p,q,z);
     
    $display("PASSING ARMUMENTS BY REF");
    p=20;
    q=10;
    z=add4(p,q);
    $display("p=%d q=%d z=%d",p,q,z);

    $display("PASSING ARGUMENTA BY CONSTANT REF");
    p=1;
    q=2;
    r=add5(p,q);
    $display("p=%d q=%d z=%d",p,q,r);
   
    $display("PASSING ARGUMNETS BY DEFAULT");
    z=add6(.b(3));
    $display("z=%d",z);
  //  $display("p=%d q=%d z=%d",p,q,z);
end
endmodule
