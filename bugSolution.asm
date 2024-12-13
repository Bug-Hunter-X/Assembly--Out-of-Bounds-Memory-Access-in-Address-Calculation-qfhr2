mov ecx, input_value ; Assume input_value is the value of ecx
mov eax, array_size ; Assuming array_size holds the array size in elements

; Check if ecx is within bounds
cmp ecx, eax
jge error_handler ; Handle the error if ecx is out of bounds

mov ebx, array_base ; Assuming array_base points to the start of the array
mov eax, [ebx + ecx*4 + 8] ; Access the memory location after bounds check

; Continue program execution

error_handler:
; Handle the out-of-bounds access appropriately, for example:
; Display an error message or exit the program
mov eax, 1 ; sys_exit call number
xor ebx, ebx ; exit code 0
int 80h 