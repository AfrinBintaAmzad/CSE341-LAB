;TASK_03(Take three inputs from the user and find the maximum of the three numbers.)

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
 MOV CX,3  
 start: 
 MOV AH,1
 INT 21h
 MOV arr[SI],al
 ADD SI,1
 loop start 
 
 mov ah,2     
 mov dl,0DH
 int 21h
 mov dl,0AH
 int 21h
  
 
 MOV SI,0
 MOV CX,13
 MOV BL,[SI]
  
 CheckCompare:
 MOV BH, arr[SI]
 CMP [SI],BL
 JGE Examine
 Continue:
 inc SI
 loop CheckCompare
 
 MOV DL,BL
 MOV AH,2
 INT 21h
 JMP end
 
 Examine:
 MOV BL,[si]
 jmp Continue

end: 
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  




