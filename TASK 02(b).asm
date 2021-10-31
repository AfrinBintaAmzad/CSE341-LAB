.MODEL SMALL
.STACK 10H

.CODE
MAIN PROC
    MOV BX,100
    MOV AX,0
    JMP EXECUTE
    
    
    EXECUTE:
    ADD AX,BX
    SUB BX,5
    CMP BX,5
    JGE EXECUTE
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
    
    

