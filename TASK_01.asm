
.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
MOV CX, 8


INPUT:
 MOV AH, 1
 INT 21H
 
 XOR AH, AH
 PUSH AX
 
LOOP INPUT 

MOV AH, 2
MOV DL, 0DH

INT 21H
MOV DL, 0AH
INT 21H

MOV CX, 8
OUTPUT:
  MOV AH, 2 
  
  POP DX
  INT 21H 

LOOP OUTPUT
 



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN



