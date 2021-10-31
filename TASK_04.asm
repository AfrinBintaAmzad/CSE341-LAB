.model small
.stack 100h
.data
array db 10 dup(?)
msg db "Enter SIX numbers",0ah,0dh,'$'
msg0 db 0ah,0dh,"your ascending numbers are",0ah,0dh,'$'
max db 0
.code
mov ax,@data
mov ds,ax

mov ah,09h
mov dl,offset msg
int 21h

mov cx,6
l1:
mov si,offset array
mov ah,01h
int 21h

SUB AL,48
mov bl,al
l4:
cmp al,0
je l2
inc si
dec al
jmp l4

l2:
mov [si],bl
loop l1

mov ah,09h
mov dl,offset msg0
int 21h

mov si,offset array
mov cx,9
ll1:
mov al,[si]
cmp al,0

je ex1
mov ah,02h
mov dl,[si]
add dl,48
int 21h

ex1:
inc si
loop ll1

end



