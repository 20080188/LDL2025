.model small
.stack 100h
.data
    hola db "Hola Mundo!$"  ; Cadena de texto con terminador '$' requerido por DOS

.code
main proc
    mov ax, @data  ; Cargar el segmento de datos     
    mov ds, ax     ; Moverlo a DS

    mov ah, 09h    ; Funcion 09h: imprimir cadena en DOS   
    lea dx, hola   ; Cargar la direccion de la cadena en DX  
    
    int 21h        ; Llamada a interrupcion del DOS
    mov ah, 4Ch    ; Funcion 4Ch: terminar programa correctamente
    int 21h

main endp
end main



