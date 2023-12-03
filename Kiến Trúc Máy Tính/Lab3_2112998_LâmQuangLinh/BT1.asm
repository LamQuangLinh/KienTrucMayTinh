.model
.stack
.data  
    Nhap DB 13,10,'Hay nhap mot ky tu: $'  
    kq1 DB 13,10,'Chao buoi sang$'
    kq2 DB 13,10,'Chao buoi chieu$'
    kq3 DB 13,10,'Chao buoi toi$'
    
.code
    mov ax,@data
    mov ds,ax
               
  repeat:             
    lea dx,Nhap
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
   
    cmp al,'S'
    je  resuil1   
    
     cmp al,'s'
    je  resuil1   
    
     cmp al,'C'
    je  resuil2
    
     cmp al,'c'
    je  resuil2
    
     cmp al,'T'
    je  resuil3
    
     cmp al,'t'
    je  resuil3 
    
    jmp repeat
    
  resuil1:
    lea dx,kq1
    mov ah,09h
    int 21h  
    jmp break
    
  resuil2:
    lea dx,kq2
    mov ah,09h
    int 21h 
    jmp break
    
  resuil3:
    lea dx,kq3
    mov ah,09h
    int 21h    
    jmp break
  break:       
    
    MOV AH,4CH
    INT 21H