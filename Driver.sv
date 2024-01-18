class driver;
   mailbox gen2driv;
  virtual intf vif;
  function new(mailbox gen2driv,virtual intf vif);
    this.gen2driv=gen2driv;
    this.vif=vif;
  endfunction
  task run();
    repeat(1)
       begin
      	transaction t1;
        gen2driv.get(t1);
        vif.X<=t1.X;
        vif.En<=t1.En;
         //t1.display("Driver");
       end
  endtask
endclass
        