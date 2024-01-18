class transaction;
  rand bit unsigned [15:0] X;
  randc bit En;
  bit Even;
  bit Odd;
    
 
  
  function void display(string name);
    $display("In:%s,EN=%b,X=%0d,Even=%b,Odd=%b",name,En,X,Even,Odd);
    $display("--------------------------------");
    endfunction
endclass