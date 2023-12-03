.model small
.stack
.data   
    nhap DB 'nhap mot ky tu: $'   
    dem db ?   
    xuat db 13,10,'nam ky tu dung sau: $'
    xuat2 db 13,10,'nam ky tu dung truoc: $'
    endl db 8,10,'$'   
    kt db ?   
    kt0 db ?
.code
    mov ax,@data
    mov ds,ax 
     
    lea dx,nhap
    mov ah,09h
    int 21h  
   
    
    mov ah,01h
    int 21h  
    mov kt0,al
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
   
    cmp dem,5
    je  continue  
       
    inc dem  
     
    jmp repeat     
     
 continue:     
    lea dx,xuat2
    mov ah,09h
    int 21h 
   
    mov dem,1 
             
                
  repeat2:  
  
    dec kt0
    MOV DL,kt0
    MOV AH,02H
    INT 21H
   
    cmp dem,5
    je break  
       
    inc dem  
     
    jmp repeat2              
                
  break:     
      
       
mov ah,4ch
int 21h