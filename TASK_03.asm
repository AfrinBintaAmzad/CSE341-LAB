




.MODEL SMALL
.STACK 100H
.DATA
X DB "YES$"
Y DB "NO$"
O DB 0DH,0AH,"OUTPUT: $"
MSG1 DB 'INPUT: $'
SUM DB 0
.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX


MOV AX,@DATA 
MOV DS,AX
LEA DX,MSG1
MOV AH,9
INT 21H


XOR CX,CX

AND AX,0
MOV AX,0
PUSH AX
MI:
MOV AH,1
INT 21H
CMP AL,0DH
JE BREAK
SUB AL,30H 
ADD SUM,AL
AND AH,0
AND BX,0
MOV BL,AL
AND AX,0
POP AX
MOV CX,10
MUL CX
ADD AX,BX
PUSH AX
JMP MI
BREAK:
AND AX,0
POP BX

MOV AX,BX
DIV SUM 


CMP AH,0
JE OUTPUT_X

LEA DX,O
MOV AH,9
INT 21H
LEA DX,Y
MOV AH,9
INT 21H
JMP EXIT

OUTPUT_X:
LEA DX,O
MOV AH,9
INT 21H
LEA DX,X
MOV AH,9
INT 21H


EXIT:
MOV AH,4CH
INT 21H


END MAIN
Aa