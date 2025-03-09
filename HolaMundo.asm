.MODEL SMALL ;Define el modelo de memoria pequenio   

.STACK 100h  ;Reserva espacio para la pila  

.DATA  ;Seccion de datos donde se definen variables y mensajes 
 
    mensaje DB 'Hola, mundo$' ;Define la cadena de texto a mostrar terminada con '$'  
      
    
.CODE  ;Seccion de codigo donde van las instrucciones del programa   

    MOV AX, @DATA  ; Carga la direccion de la seccion de datos en AX  
    
    MOV DS, AX ; Mueve la direccion de datos al segmento de datos (DS) 

    MOV DX, OFFSET mensaje ; Carga la direccion del mensaje en DX  
    
    MOV AH, 09h  ; Funcion de interrupcion 21h para mostrar texto  
      
    INT 21h ; Llama a la interrupcion del sistema para imprimir el mensaje  

    MOV AX, 4C00h ; Codigo para terminar el programa correctamente 
     
    INT 21h   ; Llama a la interrupción del sistema para salir 
    
END ; Indica el final del programa 




