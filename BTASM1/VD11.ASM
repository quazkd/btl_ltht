.MODEL SMALL
.STACK 100h
.DATA
        m db ' Xin chao !',0
.CODE
 PS:
     mov AX,@data
     mov DS,AX
     lea si,h
  L1:
     mov al,[si]
     and al,al
     jz KT
     mov ah,0eh
     int 10h
     inc si
     jmp L1
  KT:
     mov AH,4Ch
     int 21h
     END PS
