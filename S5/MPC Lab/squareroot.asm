org 0000h

mov r0, #16h
mov r1, #01h
mov r2, #00h
mov a, r0
loop:
subb a, r1
inc r2
jz ans
jc f
inc r1
inc r1
sjmp loop
f:
mov 50h, #0ffh
sjmp $
ans: mov 50h, r2
sjmp $
end
