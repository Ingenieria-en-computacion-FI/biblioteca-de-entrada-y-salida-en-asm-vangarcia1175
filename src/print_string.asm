SECTION .text
global print_string
; ---------------------------------
; print_string
; Entrada:
;   EAX = direccion de cadena
;   cadena terminada en 0
; ---------------------------------
print_string:
    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. calcular longitud
    mov ecx, eax        ; ECX = puntero al inicio de la cadena
    mov edx, 0          ; EDX = contador de longitud
.loop:
    cmp byte [ecx + edx], 0     
    je  .escribir
    inc edx
    jmp .loop

.escribir:
    ; 2. syscall write
    ; write(fd=1, cadena, longitud)
    mov ebx, 1          ; fd = stdout
    mov eax, 4          ; syscall write
    int 0x80

    mov esp, ebp
    pop ebp
    ret
