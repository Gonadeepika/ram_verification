/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_agt_top.sv

Description 	: 	Write agent top class for Dual port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_wr_agt_top from uvm_env;
class ram_wr_agt_top extends uvm_env;

   // Factory Registration
	`uvm_component_utils(ram_wr_agt_top)
    
   //Declare the agent handle
    ram_wr_agent agnth;
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
	extern function new(string name = "ram_wr_agt_top" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
	
endclass
//-----------------  constructor new method  -------------------//
// Define Constructor new() function
function ram_wr_agt_top::new(string name = "ram_wr_agt_top" , uvm_component parent);
	super.new(name,parent);
endfunction

    
//-----------------  build() phase method  -------------------//
function void ram_wr_agt_top::build_phase(uvm_phase phase);
    super.build_phase(phase);
	// Create the instance of ram_wr_agent
   	agnth=ram_wr_agent::type_id::create("agnth",this);
endfunction


//-----------------  run() phase method  -------------------//
// Print the topology
task ram_wr_agt_top::run_phase(uvm_phase phase);
	uvm_top.print_topology;
endtask   


