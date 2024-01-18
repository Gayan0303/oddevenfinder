`include "Environment.sv"
program test(intf i_intf);
  environment env;
  initial 
    begin 
      repeat(55)
        begin
          env=new(i_intf);
          env.run();
        end
      $finish;
    end
endprogram
       