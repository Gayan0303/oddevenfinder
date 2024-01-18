class generator;
  transaction t1;
  mailbox gen2driv;
  
  function  new(mailbox gen2driv);
    this.gen2driv=gen2driv;
  endfunction
  task run();
    
      begin
        t1=new();
        t1.randomize();
		gen2driv.put(t1);       
        //t1.display("Generator");
      
      end
  endtask
endclass