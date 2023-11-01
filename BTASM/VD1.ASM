.MODEL SMALL
.STACK 100h
.DATA
        m db ' Xin chao !$'
.CODE
 PS:
     mov AX,@data
     mov DS,AX
     lea DX,m
     mov AH,9
     int 21h
     mov AH,4Ch
     int 21h
     END PS
