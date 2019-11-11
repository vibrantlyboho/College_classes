org 0000h
mov r7, #04h
loop1: mov r0,#40h
mov r6, #04h
loop: mov a, @r0
inc r0
mov 50h, @r0
cjne a, 50h, next
sjmp down
next:
jc down
mov @r0, a
dec r0
mov @r0, 50h
down:
djnz r6, loop
djnz r7, loop1
end
