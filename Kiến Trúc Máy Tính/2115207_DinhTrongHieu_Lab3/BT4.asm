.model small
.stack
.data   
    nhap DB 'nhap mot ky tu: $'   
    dem db ?   
    xuat db 13,10,'nam ky tu dung sau: $'
    endl db 8,10,'$'   
    kt db ?
.code
    mov ax,@data
    mov ds,ax 
     
    lea dx,nhap
    mov ah,09h
    int 21h  
   
    
    mov ah,01h
    int 21h 
    mov kt,al
    
    lea dx,xuat
    mov ah,09h
    int 21h 
   
    mov dem,1 
   
    mov al,kt 
    
  repeat:  
    
    
    inc al
    MOV DL,al
    MOV AH,02H
    INT 21H
    
    mov kt,al
    lea dx,endl
    mov ah,09h
    int 21h
    mov al,kt
   
    cmp dem,5
    je break  
       
    inc dem  
     
    jmp repeat     
 
  break:     
      
       
mov ah,4ch
int 21h