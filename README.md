# DSP-LAB
Digital Signal Processing Lab Codes

## Study Folder Contents

The following files are available in the `/study` folder:

- [01 - Basic signals.sce](./study/01%20-%20Basic%20signals.sce)
- [02 - Sampling Theorem.sce](./study/02%20-%20Sampling%20Theorem.sce)
- [03 - N-DFT.sce](./study/03%20-%20N-DFT.sce)
- [04 - DFT without builtin function.sce](./study/04%20-%20DFT%20without%20builtin%20function.sce)
- [05 - Linearity Property.sce](./study/05%20-%20Linearity%20Property.sce)
- [06 - Circular Convolution Property.sce](./study/06%20-%20Circular%20Convolution%20Property.sce)
- [07 - Parseval's Theorem.sce](./study/07%20-%20Parseval's%20Theorem.sce)
- [08 - Overlap Save Method.sce](./study/08%20-%20Overlap%20Save%20Method.sce)
- [09 - FIR Low Pass Filter Design.sce](./study/09%20-%20FIR%20Low%20Pass%20Filter%20Design.sce)
- [10 - FIR Band Pass Filter Design.sce](./study/10%20-%20FIR%20Band%20Pass%20Filter%20Design.sce)
- [11 - Filtering a signal using FIR LPF.sce](./study/11%20-%20Filtering%20a%20signal%20using%20FIR%20LPF.sce)
- [12 - Circular Convolution using Linear](./study/12%20-%20Circular%20Convolution%20using%20Linear.sce)
- [13 - Linear Convolution (Kit).c](./study/13%20-%20Linear%20Convolution%20(Kit).c)
- [14 - Circular Convolution (Kit).c](./study/14%20-%20Circular%20Convolution%20(Kit).c)
- [15 - N-DFT (Kit).c](./study/15%20-%20N-DFT%20(Kit).c)


```
Me: How can I simulate DSP code written for TMS320C764X CPU without a physical development kit? Is there a software-based solution?

ChatGPT: If you don't have access to a physical development kit for the TMS320C764X DSP CPU, you can simulate your DSP code using Code Composer Studio (CCS), which provides a built-in Processor Simulator. To simulate the code, you need to create a CCS project for your code, configure the project settings to use the Processor Simulator, and set up the memory map to match the memory layout of your actual hardware device. Once you have set up the simulation, you can run and debug your code as you would on a physical device. However, note that the behavior of the Processor Simulator may not be identical to that of an actual hardware device, so you may need to adjust your code or simulation settings to achieve accurate results.

Here are the basic steps:

1. Open CCS and create a new project for your DFT code.
2. In the "Project Properties" dialog, go to "Build" > "Target Configurations" and create a new target configuration for the Processor Simulator.
3. In the "Processor Simulator" tab of the target configuration, select the TMS320C764X DSP CPU model and configure the memory map to match the memory layout of your actual hardware device.
4. Build the project for the Processor Simulator target configuration.
5. Start the Processor Simulator by selecting the "Debug" perspective and clicking the "Start/Resume Debugging" button.
6. Load the simulated code and set breakpoints as needed to debug the code.
```

## Index
1. Generation of basic test signals
2. Verification of sampling theorem
3. Relevance of N in N-DFT
4. DFT without using fft() function
5. Verification of properties of dft
    - Linearity
    - Parseval's theorem
    - Convolution propety
