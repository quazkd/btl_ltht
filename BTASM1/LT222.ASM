; a luy thua n - ham asm 2 doi ;

.model small
.code
 public @LUYTHUA$qii
 @LUYTHUA$qii proc
 push BP
 mov BP,SP
        mov bx,[BP+4]
        mov cx,[BP+6]
        mov ax,1
        and cx,cx
        jz L2
     L1:
        mul bx       ;ax*bx ->ax
        loop L1
     L2:
     pop BP
        ret
        @LUYTHUA$qii endp
     end
