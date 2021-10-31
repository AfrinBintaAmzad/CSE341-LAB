.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV AH,2
    MOV DX,1
    MOV CX,0
    
    JMP EXECUTE
    
    EXECUTE:
    INT 21H
    INC DX
    INC CX
    MOV BX,DX
    CMP CX,5
    JGE NEXTLINE
    CMP DX,256
    JLE EXECUTE
    JMP EXIT
    
    
    NEXTLINE:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DX,BX
    MOV CX,0
    JMP EXECUTE
    
    
    
    EXIT:
    
