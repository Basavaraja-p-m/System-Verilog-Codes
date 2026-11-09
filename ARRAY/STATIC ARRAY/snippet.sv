module snippet();
  
  reg [3:0]s_array[8];

  initial
  begin
  //using index method
  s_array[0]=2;
  s_array[1]=4;
  s_array[2]=6;
  s_array[3]=8;
  s_array[4]=10;
  s_array[5]=12;
  s_array[6]=14;
  s_array[7]=15;
  $display("the size of s_array",$size(s_array));
  $display("the elements in s_array is %p",s_array);
  
  //direct method
  s_array='{2,4,6,8,10,12,14,15};
  $display("the size of s_array",$size(s_array));
  $display("the elements in s_array is %p",s_array);

  //using loop
  for(int i;i<$size(s_array);i++)
      begin
      s_array[i]=$urandom_range(1,15);
    //  $display("the elements in s_array is %p",s_array);
      end    
  $display("the elements in s_array is %p",s_array);

  //using foreach loop
  foreach(s_array[i])
      begin
      s_array[i]=$urandom_range(1,15);
      end
      $display("the elements in s_array is %p",s_array);
  end
  endmodule
