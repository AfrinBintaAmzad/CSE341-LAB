
;TASK_02(Take an array of size 5, then taking input from the user, sort the array in the ascending
;order.)


.MODEL SMALL
 
.STACK 100H

.DATA 
array  db 1,6,5,8,3
count  dw 5

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
 ;enter your code here 

 mov cx,count      
    dec cx              
CheckScan:                
    mov bx,cx
    mov si,0 
CheckComp:
    mov al,array[si]
    mov dl,array[si+1]
    cmp al,dl
    jnc noswap 
    mov array[si],dl
    mov array[si+1],al
noswap: 
    inc si
    dec bx
    jnz CheckComp
    loop CheckScan       
    mov cx,5
    mov si,4
print:
    Mov al,array[si]  
    Add al,30h
    Mov ah,0eh
    Int  10h 
    MOV AH,2
    Mov DL , ' '
    INT 21H
    dec si
    Loop print
    
    JMP end
    
end:    

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  
