




         ;finding maximum using macro


.MODEL SMALL               

findgreater macro x,y,z  ;bl=x bh=y cl=z     
   mov bl,x
   mov bh,y
   mov cl,z
    
   cmp bl,bh
   jge g
   
   e:
   cmp bh,cl
   jge f
   mov ah,2
   mov dl,z
   int 21h
   jmp exit
   
   f:
   mov ah,2
   mov dl,y
   int 21h
   jmp exit
   
   g:
   cmp bl,cl
   jge h
   mov ah,2 
   mov dl,z
   int 21h
   jmp exit
   
   h:
   mov ah,2
   mov dl,x
   int 21h
    
    
endm    

.STACK 100H

.DATA   

 a db 0  
 b db 0
 c db 0

.CODE
MAIN PROC
    
;initialize DS
MOV AX, @DATA
MOV DS, AX

;enter your code here
mov ah,1
int 21h
mov a,al
int 21h 
mov b,al
int 21h
mov c,al

findgreater a,b,c   

exit:
    
;exit to DOS
MOV AX, 4C00H
INT 21H

MAIN ENDP
    END MAIN



;findminimum using proc

.MODEL SMALL                 

.STACK 100H

.DATA   

 a db ?  
 b db ? 
 c db ?

.CODE
MAIN PROC
    
;initialize DS
MOV AX, @DATA
MOV DS, AX

;enter your code here
mov ah,1
int 21h
mov a,al
int 21h 
mov b,al
int 21h
mov c,al 

call findminimum  





exit:
    
;exit to DOS
MOV AX, 4C00H
INT 21H 


MAIN ENDP
    

findminimum proc  
    
   mov bl,a
   mov bh,b
   mov cl,c
    
   cmp bl,bh
   jnge g
   
   e:
   cmp bh,cl
   jnge f
   mov ah,2
   mov dl,c
   int 21h
   jmp exit
   
   f:
   mov ah,2
   mov dl,b
   int 21h
   jmp exit
   
   g:
   cmp bl,cl
   jnge h
   mov ah,2 
   mov dl,c
   int 21h
   jmp exit
   
   h:
   mov ah,2
   mov dl,a
   int 21h   
   
   ret
   
findminimum endp  

