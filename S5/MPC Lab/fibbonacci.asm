org 0000h

mov r1, #05h
mov r2, #00h
mov dptr, #2000h
movx @dptr, a
inc a
inc dptr
movx @dptr, a
dec r1
dec r1
inc dptr
mov a, #00h
mov b, #01h
loop:
add a, b
mov r2, a
movx @dptr, a
inc dptr
mov a, b
mov b, r2
djnz r1, loop
end
