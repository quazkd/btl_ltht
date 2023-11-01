; a luy thua n - ham asm 1 doi ;

.model small
.data
extrn _n:WORD
.code
 public @LUYTHUA$qi
 @LUYTHUA$qi proc
 push BP
 mov BP,SP
        mov bx,[BP+4]
        mov cx,_n
        mov ax,1
        and cx,cx
        jz L2
     L1:
        mul bx       ;ax*bx ->ax
        loop L1
     L2:
     pop BP
        ret
        @LUYTHUA$qi endp
     end
