global _start

section .data

    index db 1
    max db 10
    sum db 0

; do this: (int i = 1; i <= 10; i++) counter+= i;

section .text
_start:
    jmp loop

loop: 
    mov al, byte[index]
    cmp al, byte[max]
    jg exit_here
    add byte[sum], al
    inc byte[index]
    jmp loop

exit_here: 
    mov rax, 60
    xor rdi, rdi
    syscall