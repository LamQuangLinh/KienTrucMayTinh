.model small
.stack
.data    
    input db 'hay nhap 1 chu thuong(a-z): $'
    output db 13,10,'chu hoa tuong ung la: $'
    kt db ?
.code


     mov ax,@data
     mov ds,ax
     
     lea dx,input
     mov ah,09h
     int 21h

     mov ah,01h
     int 21h 
     mov kt,al
             
     lea dx,output
     mov ah,09h
     int 21h        
     
     mov al,kt         
              
     sub al,32
     
     mov dl,al
     mov ah,02h
     int 21h





     mov ah,4ch
     int 21h