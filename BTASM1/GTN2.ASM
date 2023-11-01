;Giai thua n - ham asm khon doi;

.model small
.data
 extrn _n:WORD
.code
  public @GIAITHUA$qv
  @GIAITHUA$qv PROC
        mov cx,_n
        mov ax,1
        cmp cx,2
        jb L2
     L1:
        mul cx        ;ax*cx ->ax
        loop L1
     L2:
        ret
@GIAITHUA$qv ENDP
        END
