class scoreboard;
  transaction t1;
  mailbox mon2scb;
  
  
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  
  task run();
    begin
      mon2scb.get(t1);
      if(t1.En==1'b0 && t1.Even==1'bz && t1.Odd==1'bz)
        $display("Test Passed");
    end
  
    if (t1.En==1'b1)
      begin
        if(t1.Even==1'b1 && t1.Odd==1'b0)
          $display("Test Passed");
        else if(t1.Even==1'b0 && t1.Odd==1'b1)
          $display("Test Passed");
        else
          $display("Test Failed");
        t1.display("Scoreboard");
      end
    
  endtask
endclass