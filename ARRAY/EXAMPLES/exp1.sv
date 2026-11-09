/*module exp1();
   byte s_array [10];

   initial
   begin
      foreach(s_array[i])
          s_array[i] = i + 1;
   end
   initial
   $display("the value is %p",s_array);
endmodule*/

/*module exp1();
    reg [3:0] s_array[10];

    initial
    begin
    s_array = '{1,2,3,4,5,6,7,8,9,10};
    $display("values is %p",s_array);
    end
endmodule*/

/*module exp1();
   byte arr[10] = '{1,2,3,4,5,6,7,8,9,10};
   int sum;
   int avg;

   initial
   begin
     foreach(arr[i])
         
         sum += arr[i];
         avg = sum / arr.size();
        
     $display("avg = %p",avg);
   end  
endmodule*/

/*module exp1();
    byte arr[5] = '{1,2,3,4,5};
    int even_count = 0;
    int odd_count = 0;
    initial
    begin
      foreach(arr[i])
          if(arr[i] % 2 == 0)
              even_count = even_count + 1;
              else
                  odd_count = odd_count + 1;
      $display("even_count = %p",even_count);
      $display("odd_count = %p",odd_count);

    end
endmodule*/

/*module exp1();
   int q[$] = '{1,2,3,4,5};

   initial
   begin
   foreach (q[i])
      q.push_front(q[i]);
      $display("sorting elements is %p",q);
   end
endmodule*/

/*module exp1();
   int arr1[4] = '{1,2,3,4};
   int arr2[4];

   initial
   begin
      foreach(arr1[i])
          arr2[i] = arr1[i];
          $display("arr2 is %p",arr2);
   end
   endmodule*/

   module exp1();
       bit [7:0]data = 8'b11100011;
       int count;

       initial
       begin
          //  count = $countones(data);
          //  $display("data element is %p",count);
            for(int i=0;i<8;i++)
                if(data[i])
                    count++;

            $display("data element is %p",count);

       end
      
   endmodule













    
