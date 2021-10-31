.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV AH,2
    MOV BL,1
    JMP EXECUTE
    
    
    EXECUTE:
    MOV DL,'*'
    INT 21H
    INC BL
    CMP BL,50
    JLE EXECUTE
    JMP EXIT
    
    
    EXIT:
    
    
    