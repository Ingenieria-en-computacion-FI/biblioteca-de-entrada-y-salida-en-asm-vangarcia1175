SECTION .text
global scan_string

; ---------------------------------
; scan_string
; Entrada:
;   EAX = buffer destino
;   EBX = tamaño máximo
; ---------------------------------

scan_string:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. syscall read
    ; 2. guardar en buffer
    mov ecx, eax        ; ECX = direccion del buffer
    mov edx, ebx        ; EDX = tamaño maximo
    mov eax, 3          ; syscall read
    mov ebx, 0          ; fd = stdin
    int 0x80

    ; 3. agregar terminador 0
    add ecx, eax        ; apuntar al final de lo leido
    dec ecx             ; retroceder al ultimo byte
    cmp byte [ecx], 0x0A 
    je  .poner_nulo
    inc ecx             ; avanzar al siguiente

.poner_nulo:
    mov byte [ecx], 0   ; terminador nulo


    mov esp, ebp
    pop ebp
    ret
