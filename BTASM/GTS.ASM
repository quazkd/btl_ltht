.model small
.stack 100h
.code
PS:
  mov cx,5
  mov ax,1
  L1:
    mul cx             ; ax*cx -> dx:ax (dx=0)
    loop L1
    mov ah,4ch
    int 21h
    end PS
