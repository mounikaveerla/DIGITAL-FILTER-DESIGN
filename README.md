# DIGITAL-FILTER-DESIGN

"company" : CODTECH IT SOLUTIONS

"Name"  : Mounika Veerla

"Intern ID"  : CT06WC138

"Domain"   :  VLSI

"Duration"   : 6weeks

"Mentor"    :  Neela santosh

Description: 
  In this repository I perform a task called Digital filter design. In this we design a Digital FIR(Finite Impulse Response) Filter by using Verilog. In this we execute code, testbench, simulation and performance Analysis of the design FIR.

Tools used : Modelsim(Questasim) , Mentor graphics, Xilinix, Quartus prime.

In signal processing, a finite impulse response (FIR) filter is a filter whose impulse response (or response to any finite length input) is of finite duration, because it settles to zero in finite time.
This whole project was designed using a structural coding approach. For example to design a 16x1 Mux, 4x1 Muxes were used which were also designed using 2x1 Muxes. Even the clock generator and counter were generated using sequential logical circuits using JK Flip-Flops as the building blocks.

To reset the accumulator after taking the output, a reset input pulse was generated in the test bench as the synchronous clear(Sclr)  input of the accumulator was level triggered and not edge triggered.
All the given inputs and coefficients were converted to Binary using Matlab. To initialize inputs in ROM  the binary values were written in .coe format. Input is read from a text file and output is written into one for further analysis.To implement the above equation in verilog we came up with the following architecture.Inputs are taken in a shift register which are the inputs to a 16x1 Mux. Then the filter coefficients are stored in a ROM, and using a counter suitable input is multiplied with the corresponding filter coefficient and then these products are added using an accumulator. After all the products are added the output is taken from the accumulator and the accumulator is reset for calculating the next filtered value.

An example of a digital filter is a limited Impulse Response filter, which has an impulse response with a limited period. Each output sample in a FIR filter is the weighted sum of its input samples, with the weights being established by the filter coefficients. FIR filters are used for applications requiring accurate signal processing because they have a linear phase response and are intrinsically stable, in contrast to infinite impulse response (IIR) filters. FIR filters are widely used in image processing, biological signal analysis, telecommunications, and audio processing. Because of their finite impulse response feature, which makes them easily implementable with methods like convolution, they are useful tools for a variety of digital signal processing applications.

"output":








