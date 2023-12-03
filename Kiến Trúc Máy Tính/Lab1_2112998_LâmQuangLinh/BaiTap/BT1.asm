.MODEL SMALL
.STACK
.DATA
    string DB 'Hello, world !$'
    string2 DB 13,10,'Hello, solar system !$'
    string3 DB 13,10,'Hello, universe !$'
.CODE
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,string
    MOV AH,09H
    INT 21H 
     
    LEA DX,string2
    MOV AH,09H
    INT 21H  
     
    LEA DX,string3
    MOV AH,09H
    INT 21H   
    
    
    MOV AH,4CH
    INT 21H
