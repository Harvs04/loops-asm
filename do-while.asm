global _start

section .data
    sum db 0
    max db 10
    index db 1

section .text
_start:
    mov al, byte[index]

do_while: 
    add byte[sum], al
    inc al
    cmp al, byte[max]
    jle do_while
    jmp exit_here

exit_here:

    mov rax, 60
    xor rdi, rdi
    syscall