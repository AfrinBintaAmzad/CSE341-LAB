org 100h

.model small
.stack 100h
.data 
x dw ?
arr db x dup (?)
w db 10,13,"Input array length: $"   
a db 10,13,"Input the number: $"
b db 10,13,"the array after desending sorting is: $" 

.code 
main proc
    mov ax,@data
    mov ds,ax
    
mov ah,9
lea dx,w
int 21h 

mov ah,1
 int 21h 
 sub al,30h
 mov bl,al
 mov ah,0
 mov x,ax   
    
    
    

mov ah,9
lea dx,a
int 21h

mov cx,x

n:

 mov ah,1
 int 21h
 sub al,30h
 mov arr[si],al
 inc si
 loop n
 
; doing Sort 
sub x,1
mov cx,x
mov si,0

sort:
cmp cx,si
jz next 

mov al,arr[si]
mov bl,arr[si+1]

cmp al,bl
jb exchange
add si,1
jmp sort 

exchange:
mov arr[si],bl

mov arr[si+1],al
add si,1
jmp sort

next:
 mov si,0
 sub cx,1
 cmp cx,0 
 jnz sort
 
;printing in desending sorting

mov ah,9
lea dx,b
int 21h
add x,1
mov cx,x
mov [si],offset arr
mov ah,2
top:

add arr[si],30h
mov dl,arr[si]
int 21h
inc si
loop top

t:
mov ah,4ch
int 21h

main endp
end main


    

ret