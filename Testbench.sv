`include "Interface.sv"
`include "Test.sv"
module tbench_top;
  intf i_intf();
  test t1(i_intf);
  OddEvenFinder O1(
    .X(i_intf.X),		
    .En(i_intf.En),
    .Even(i_intf.Even),
    .Odd(i_intf.Odd)
);
        
              
endmodule
