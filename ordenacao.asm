.model small
.data
    i db 0h
    j db 0h
    k db 5h
    g db 0h
    
    array db "152834$"
    ordenado db ?
    

.code
    mov ax, @data
    mov ds, ax
    
   inicio:
   
     mov cl, j
     mov dl, k
     cmp cl,dl
     je fim 
     
     cmp array[i], array[j]
     jg troca
     
     
     
      troca:
        mov i,j
        jmp inicio
     
  fim:
    mov ah, 4ch
    int 21h   
 
 
 end