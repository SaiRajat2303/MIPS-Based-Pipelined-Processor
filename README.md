# MIPS-Based-Pipelined-Processor
MIPS based 5 stage pipelined processor implementation with 4 pipeline registers

The Datapath image has been provided along with the verilog code for the processor.
The processor supports forwarding , stalling along with static branch prediction to deal with control hazards.
R-type instructions , Lw - Sw instructions , beq and jump have been incorporatd in the mini processor.

**The processor consists of 4 pipeline registers and 5 stages (IF,ID,EX,MEM and WB) as shown in the DATAPATH below:**

![](https://github.com/SaiRajat2303/MIPS-Based-Pipelined-Processor/blob/main/images/Datapath_Sai_Rajat.png)
