# Assembly Out-of-Bounds Memory Access Bug

This repository demonstrates a subtle bug in assembly code that causes an out-of-bounds memory access.  The bug is triggered when the `ecx` register holds an unexpectedly large value, leading to an incorrect memory address calculation.  The code appears to function correctly under normal circumstances but fails when dealing with larger data sets.

The solution provided addresses this by adding input validation and bounds checking to ensure the calculated address is always within the valid memory range. 

## Bug Details

The core issue lies in the line `mov eax, [ebx + ecx*4 + 8]`.  This instruction calculates a memory address by adding `ebx`, `ecx*4`, and 8. If `ecx` is too large, this calculated address might be outside the allocated memory, leading to a segmentation fault or other unpredictable program behavior.

## Solution

The solution involves adding checks to validate the `ecx` value before the memory access occurs, ensuring that the calculated address remains within the safe bounds of allocated memory. 