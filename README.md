# MIPS-Based-Pipelined-Processor
MIPS based 5 stage pipelined processor implementation with 4 pipeline registers

The Datapath image has been provided along with the verilog code for the processor.
The processor supports forwarding , stalling along with static branch prediction to deal with control hazards.
R-type instructions , Lw - Sw instructions , beq and jump have been incorporatd in the mini processor.

**The processor consists of 4 pipeline registers and 5 stages (IF,ID,EX,MEM and WB) as shown in the DATAPATH below:**

![](https://github.com/SaiRajat2303/MIPS-Based-Pipelined-Processor/blob/main/images/Datapath_Sai_Rajat.png)

The control signals have been tabulated as follows.

**Control Signals**

![](https://github.com/SaiRajat2303/MIPS-Based-Pipelined-Processor/blob/main/images/Control%20signals.png)

**HAZARDS**

Upon Simulation , one might encounter different kinds of hazards.
Some of the simulation images have been added into the repo. We shall discuss about some of these hazards in this readme file.

**EX Hazard :** 

Description : The wave form below specifically indicates the data hazard corresponding to the first two add 
instructions. First, instruction “add s2, s1, s0” takes place. As ‘s0’ stores 4 and ‘s1’ stores 6, the 
result is ‘10’ which has to be written back to the register for the next instruction “add s3,s2,s0” 
to use. Hence, the forward unit sets the Forward_A and Forward_B signal to ‘01’ to implement 
an execution to execution forwarding.

![](https://github.com/SaiRajat2303/MIPS-Based-Pipelined-Processor/blob/main/images/EX%20Hazard.png)

**LOAD-USE HAZARD:**

Description: The waveform below specifically indicates a stall insertion between instructions ‘lw s4, 12(s0)’ 
and ‘add s3, s4, s0’ . As it takes an extra cycle to load word into the memory, the stalling unit 
inserts a ‘NOP’ and the PC doesn’t increment for another cycle. As, visible in figure, the stall 
signal is ‘1’ after ‘lw s4, 12(s0)’ instruction and PC stays at 12 for 2 clock cycles. Also, the 
if_id_write signal becomes ‘0’, that prevents any new data from being written to the if_id 
register

![](https://github.com/SaiRajat2303/MIPS-Based-Pipelined-Processor/blob/main/images/Load%20-%20Use%20Hazard%20(Stall).png)

# BRANCH PREDICTION

**Static Branch Prediction has been applied in the code. Branch not taken scheme is used. This basically involves always assuming that branch will not be taken , and checking for the condition satisfaction at the end of EX stage. 
In case , the condition isnt satisfied , i.e. the Branch has to be taken , we flush the previous two piepline registers and reload the PC with the branch target address.
One can refer Patterson and Henessy for more details.**
