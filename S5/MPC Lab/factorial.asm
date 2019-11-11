org 0000h

mov r1, #03h
mov r7, #01h
lcall fact
mov r7, a
fact:
mov a, r7
cjne r1, #00, up
sjmp up1
up: 
mov b, r1
mul ab
djnz r1,up
up1: 
ret
end
