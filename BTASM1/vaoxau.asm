INCLUDE lib1.asm
.MODEL small
.DATA
header db 13,10,'          VAO XAU VA HIEN NGUOC LAI'
       db 13,10,'          -------------------------'
       db 13,10,'     Hay vao xau ky tu (kt bang Ctrl_Z): $'
str    db 100,0,100 dup(' ')
value  db 13,10,'     Dao xau vua vao la: $'
thoat  db 13,10,'     An phim bat ky de ve Main Menu$'
.CODE
 PUBLIC _DAOCHUOI
 _DAOCHUOI PROC
        ;CLRSCR
        HienString header
        mov ah,0ah
        lea dx,str
        int 21h

        mov cx,0
        mov cl, str[1]

        HienString value
        lea dx,str
        add dx,2
        mov di,dx
        add di,cx
        dec di
        mov ah,02
     l1:
        mov dl,[di]
        int 21h
        dec di
        loop l1

        HienString thoat
        mov ah,1
        int 21h
        ret
 _DAOCHUOI ENDP
END
