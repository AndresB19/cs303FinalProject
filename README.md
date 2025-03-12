# cs330FinalProject

Authors of this project: Andres Bracho Valles and Sophie Quinn

Most of the code was pulled from [here](https://github.com/JoshuaJB/cuda_scheduling_examiner_mirror) (based on [this artifact](https://www.cs.unc.edu/~jbakita/rtas23-ae/)) and [here](https://github.com/vancemiller/gpu-sync/tree/master).

To see our final results:

## Figure Recreation:

Run make in the SecondMirror folder. Then something else...

We created the file configs/cs330_h.json to encode the kernels and masks for the figure. 
We also modified scriptsview_blocksbysm.py to only display 1024 threads per SM and to not print the kernel label if thread count is < 20.

## Wrapper Program:

See gpu-sync/HelloWorld/Kernel_Log. To run, do this...

Compiler errors to fix from ....:
- find and replace all 'CUDARTAPI' with nothing
- In 9 places with a function that is _v2 or _v3, delete the middle token of the return statement
- In remaining errors regarding 'expected token before =', comment out everything except the function pointer with no default parameters.
(These should be lines 775, 1375, 3910).

We changed code in GPUSync/Wrapper/make_stubs.py to log a CUDA function call and return to another file.
We then created the HelloWorld folder and files to test the functionality. 
