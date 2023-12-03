  .MODEL SMALL
  .STACK
.DATA
    NHAP DB 'Hay nhap mot ky tu:$'
    XUAT DB 13,10,'Ky tu da nhap la:$'
    kt DB ?
.CODE
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,NHAP
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    INT 21H
    MOV kt,AL  
    
    LEA DX,XUAT
    MOV AH,09H
    INT 21H 
    
    MOV DL, kt
    MOV AH, 02H
    INT 21H 
    
    MOV AH,4CH
    INT 21H