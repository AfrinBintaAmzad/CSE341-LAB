.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV AH,1
    MOV CL,1
    
    JMP EXECUTE
    
    EXECUTE:
    INT 21H
    INC CL
    CMP CL,5
    JLE EXECUTE
    JMP EXIT
    
    
    EXIT:
    MOV AH,2
    INT 21H
    INC CL
    CMP CL,10
    JLE EXIT