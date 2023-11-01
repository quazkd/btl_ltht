_stack segment
db 100h dup(?)
_stack ends

data segment
 m db 'Xin chao!$'
data ends

code segment
assume cs:code, ds:data, ss:_stack
PS:
  mov ax,data
  mov ds,ax
  lea dx,m
  mov ah,9
  int 21h
  mov ah,4ch
  int 21h
code ends
end PS
