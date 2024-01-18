`include "Transaction.sv"
`include "Generator.sv"
`include "Driver.sv"
`include "Monitor.sv"
`include "Scoreboard.sv"
 class environment;
  generator gen;
  driver driv;
  monitor mon;
  scoreboard scb;
  mailbox m1, m2;
  virtual intf vif;

  
  function new(virtual intf vif);
    this.vif=vif;
    m1=new();
    m2=new();
    gen=new(m1);
    driv=new(m1,vif);
    mon=new(vif,m2);
    scb=new(m2);
  endfunction
  task test();
    fork
      gen.run();
      driv.run();
      mon.run();
      scb.run();
    join
  endtask
  task run();
    test();
  endtask
endclass