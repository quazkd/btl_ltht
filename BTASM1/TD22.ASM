; tong day so nguyen - ham asm khong doi ;

.model small
.data
extrn ,_a:dword
.code
public @SUM$qi
@SUM$qi proc
        mov cx,_n
        mov ax, SEG _a
        mov es,ax
        mov bx,OFFSET _a
        xor ax,ax
      L1:  
        add ax, es:[bx]
        add bx,2
        loop L1
        ret
@SUM$qi endp
end
