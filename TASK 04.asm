.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV AX,3
    MOV BX,2
    MOV CX,0
    
    JMP EXECUTE
    
    EXECUTE:
    ADD CX,AX
    DEC BX
    CMP BX,0
    JG EXECUTE
    JMP EXIT
    
    
    EXIT: