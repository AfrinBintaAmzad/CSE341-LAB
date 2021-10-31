.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV BX,1
    MOV AX,0
    JMP EXECUTE
    
    
    EXECUTE:
    ADD AX,BX
    ADD BX,3
    CMP BX,148
    JLE EXECUTE
    JMP COPY
    
    
    COPY:
    MOV CX,AX
    MOV DX,CX
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    