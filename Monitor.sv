class monitor;
  mailbox mon2scb;
  virtual intf vif;
  function new(virtual intf vif, mailbox mon2scb);  
    this.vif=vif;
     this.mon2scb=mon2scb;
  endfunction
  task run();
    
     #3;
      begin
        transaction t1;
        t1=new();
        t1.X=vif.X;
        t1.En=vif.En;
        t1.Even=vif.Even;
        t1.Odd=vif.Odd;
        
        //t1.display("Monitor");
        mon2scb.put(t1);
      end
  endtask
endclass
  