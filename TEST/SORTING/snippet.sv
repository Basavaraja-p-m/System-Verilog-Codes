module a_sort();

int d_array[]= '{12, 5, 7, 1, 20, 3};

//d_array=new[6];

    initial begin
            
        int i = 0;
        int temp;

        while (i < d_array.size() - 1)
            begin
            if (d_array[i] < d_array[i+1])
                begin
                temp = d_array[i];
                d_array[i] = d_array[i+1];
                d_array[i+1] = temp;
                i = 0;
                end 
            else
                begin
                i++;  
                end
        end

        $display("Sorted Array = %p", d_array);
    end
 endmodule               
