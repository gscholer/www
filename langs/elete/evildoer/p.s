        default rel
        section .text
        extern _meaning
        global _entry
_entry:
        sub rsp, 8
        call _meaning
        add rax, 1
        add rsp, 8
        ret
