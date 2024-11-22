.model small
.data
    msg db "famoso$"  
    tamanho db 0h
    msg1 db ?
    
.code
    mov ax, @data
    mov ds, ax 
      
    mov si, 05h
    mov di, 0h
    
MACRO printf str
    lea dx, str
    mov ah, 09h
    int 21h
 endm
          
   inicio:
    mov cl, msg[si]
    
    cmp cl, 00
    je cifrao
    
    mov msg1[di], cl
    
    inc di
    dec si 
   
     
    jmp inicio
    
  cifrao:
   mov msg1[di+1], "$"
   je fim 
 
 fim:
  
    printf msg1
   
    mov ah, 4ch
    int 21h
    
 
end
    