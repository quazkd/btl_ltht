; a luy thua n - ham asm khong doi ;

.model small
.data
extrn _a:WORD, _n:WORD
.code
 public @LUYTHUA$qv
 @LUYTHUA$qv proc
        mov bx,_a
        mov cx,_n
        mov ax,1
        and cx,cx
        jz L2
     L1:
        mul bx       ;ax*bx ->ax
        loop L1
     L2:
        ret
        @LUYTHUA$qv endp
     end
