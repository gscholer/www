        default rel
        section .text
        extern _dbl
        global _entry
_entry:
        sub rsp, 8
        mov rdi, 1
        push rdi
        mov rdi, 21
        call _dbl
        pop rdi
        add rax, rdi
        add rsp, 8
        ret
