.model small
.stack
.data  
    kt DB ?
.code
    mov ax,@data
    mov ds,ax 
     
    mov kt,'A'
  repeat:  
    MOV DL,kt
    MOV AH,02H
    INT 21H 
    
   
    cmp kt,'Z'
    je break  
    inc kt
    jmp repeat     
    
  break:     
       
       
mov ah,4ch
int 21h