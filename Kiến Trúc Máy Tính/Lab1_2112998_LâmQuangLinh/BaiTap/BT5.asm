.MODEL SMALL
  .STACK
.DATA
    NHAP DB 'Hay nhap ky tu thu nhat: $'   
    NHAP2 DB 13,10,'Hay nhap ky tu thu hai: $'
    XUAT DB 13,10,'ky tu tong: $'
    kt DB ?
    kt2 DB ?
    tong DB ?
.CODE
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,NHAP
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    INT 21H 
    
    MOV kt,AL     
    LEA DX,NHAP2
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    INT 21H  
    
    MOV kt2,AL        
    LEA DX,XUAT
    MOV AH,09H  
    INT 21H        
            
    mov AL, kt
    mov BL, kt2 
    add AL, BL
    add al, 2h 
    mov tong, AL
    
    
    mov ah, 02h 
    mov dl,tong
    int 21h
    
    MOV AH,4CH
    INT 21H