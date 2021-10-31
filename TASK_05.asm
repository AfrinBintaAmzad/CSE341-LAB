.STACK 100H
.DATA  
STRING DB 100 DUP(?)
MSG1 DB "input a string: $"
MSG2 DB 0DH, 0AH, "no. of CONS_FOUND: $"
CONSONANTS DW 0     
.CODE
MAIN PROC
    
     MOV AX, @DATA
     MOV DS, AX
     MOV ES, AX
     
     MOV AH, 9
     LEA DX, MSG1
     INT 21H
     
     LEA DI, STRING
 
     MOV AH, 1 
     MOV SI,0
     Scan:
     INT 21H
     CMP AL, 0DH
     JE ENDOFSTRING
     MOV STRING[SI],AL
     INC SI
     JMP Scan
     
     ENDOFSTRING:
     MOV AL, "$"
     MOV STRING[SI],AL
     
     XOR BX, BX 
     MOV SI,0
     
     COUNT:
     MOV AL, STRING[SI]
     CMP AL, "$"
     JE EXIT    
      
      CMP AL, "A"
     JE NOT_A_CONSONANT
     CMP AL, "E"
     JE NOT_A_CONSONANT
     CMP AL, "I"
     JE NOT_A_CONSONANT
     CMP AL, "O"
     JE NOT_A_CONSONANT
     CMP AL, "U"
     JE NOT_A_CONSONANT
     
     CMP AL, "a"
     JE NOT_A_CONSONANT
     CMP AL, "e"
     JE NOT_A_CONSONANT
     CMP AL, "i"
     JE NOT_A_CONSONANT
     CMP AL, "o"
     JE NOT_A_CONSONANT
     CMP AL, "u"
     JE NOT_A_CONSONANT
     
           
     
     
           
     
     MOV CX, CONSONANTS
     INC CX
     MOV CONSONANTS, CX
     
     INC SI
     JMP COUNT
     
     NOT_A_CONSONANT:
     INC SI 
     JMP COUNT     
         
     EXIT:
     
     MOV AH, 9
     LEA DX, MSG2
     INT 21H
     
     MOV AH, 2
     MOV DX, CONSONANTS
     ADD DX, 30H
     INT 21H
     
    MAIN ENDP
END MAIN


