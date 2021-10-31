.MODEL SMALL
 
.STACK 100H

.DATA 
I dw 0 
SpaceCount dw 0
Promt dw "Please take a Number: $"
.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Code here

mov ah,9
lea dx,promt        
int 21h 

mov ah,1
int 21h           
mov ah,0
mov I,ax
sub ax,30h 
mov SpaceCount,ax

mov AH,2
mov DL,0Dh   
int 21h 
mov DL,0Ah   
int 21h

mov cx,I
sub cx,30h

Start:

mov bx,I
sub bx,30h

 
Start2:
cmp bx,0
jle end
cmp bx,SpaceCount
jg end2 
mov dx,"*"
mov ah,2
int 21h 
dec bx
jmp start2

end2:
mov dx," "
mov ah,2
int 21h 


dec bx
jmp Start2 



end:
mov AH,2
mov Dx,0Dh   
int 21h 
mov Dx,0Ah    
int 21h
inc SpaceCount

loop Start





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  





