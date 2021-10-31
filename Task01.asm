;TASK_01(Take input the length of the user’s name. Then, take the name as input, and then display.)

.MODEL SMALL
 
.STACK 100H

.DATA 
 
 arr db '$' 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

 MOV SI,0
 MOV CX,13  ; Afrin=13 spaces
 start: 
 MOV AH,1
 INT 21h
 MOV arr[SI],al
 ;MOV DL,arr[SI]
 ADD SI,1
 loop start 
 
 mov ah,2    
 mov dl,0DH
 int 21h
 mov dl,0AH
 int 21h
 
 MOV SI,0
 MOV CX,13 
 print:
 MOV DL,arr[SI]
 MOV AH,2
 INT 21h
 ADD SI,1
 loop print
 
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  

