;Giai thua n - ham asm 1 doi;

.model small
.data
 extrn _n:WORD
.code
  public @GIAITHUA$qi
  @GIAITHUA$qi PROC
  push BP
  mov BP, SP
        mov cx,[BP+4]
        mov ax,1
        cmp cx,2
        jb L2
     L1:
        mul cx        ;ax*cx ->ax
        loop L1
     L2:
 pop BP
        ret
@GIAITHUA$qi ENDP
        END
