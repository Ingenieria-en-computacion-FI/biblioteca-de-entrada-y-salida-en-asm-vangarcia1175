SECTION .bss
    buffer_char resb 1          ; buffer de 1 byte para el caracter

SECTION .text
global print_char

; ---------------------------------
; print_char
; Entrada:
;   AL = caracter a imprimir
; ---------------------------------

print_char:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. Guardar el caracter en memoria
    push eax
    mov [buffer_char], al

    ; 2. Usar syscall write
    ; 3. Imprimir 1 byte

    ; write(fd=1, buffer, 1)

    mov eax, 4                  ; syscall write
    mov ebx, 1                  ; fd = stdout
    mov ecx, buffer_char        ; direccion del buffer
    mov edx, 1                  ; longitud = 1 byte
    int 0x80

    pop eax
    mov esp, ebp
    pop ebp
    ret
