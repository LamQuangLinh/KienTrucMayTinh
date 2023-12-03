.model small
.stack
.data  
    Nhap DB 13,10,'Hay nhap mot ky tu: $'  
    TBChu DB 13,10, 'Ky tu nhap la chu$'
    TBSo DB 13,10, 'Ky tu nhap la so$'
    TBKhac DB 13,10, 'Ky tu nhap khac chu/so$'
.code
    mov ax,@data
    mov ds,ax  
 repeat:   
    lea dx,Nhap
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h  
              
    cmp al,'A'
    jnb cmp1   
     cmp al,'a'
    jnb cmp2
     cmp al,'0'
    jnb cmp3 
        
    jmp resuil3
    
  cmp1:   
    cmp al,'Z' 
    jbe resuil1
  cmp2:    
    cmp al,'z'
    jbe resuil1
  cmp3:
    cmp al,'9'
    jbe resuil2
      
    
     
  resuil1:    
    lea dx,TBChu
    mov ah,09h
    int 21h
    jmp break
  resuil2: 
    lea dx,TBSo
    mov ah,09h
    int 21h
    jmp break
  resuil3: 
    lea dx,TBKhac
    mov ah,09h
    int 21h
    jmp break 
  break:
    
    MOV AH,4CH
    INT 21H