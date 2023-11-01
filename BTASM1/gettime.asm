INCLUDE lib1.asm
.MODEL small

.DATA
header db 13,10,'          CHUC NANG GET TIME'
       db 13,10,'          ------------------'
       db 13,10,'     Current time is: $'
hc     db ':$'
dc     db '.$'
thoat  db 13,10,'     An phim bat ky de ve Main menu$'

.CODE
 PUBLIC _GETTIME
 _GETTIME PROC
        ;CLRSCR
        HienString header   ;Hien thong noi dung dau tien

        mov ah,2ch          ;Chuc nang lay gio phutvaf giay cua may tinh
        int 21h             
        mov al,ch           ;Dua gio tu ch -> al
        xor ah,ah           ;ah=0
        call HIEN_SO_N      ;Hien gio
        HienString hc       ;Hien dau ':'
        mov al,cl           ;Dua phut tu cl -> al
        xor ah,ah           ;ah=0
        call HIEN_SO_N      ;Hien phut
        HienString hc       ;Hien dau ':'
        mov al,dh           ;Dua giay tu dh -> al
        xor ah,ah           ;ah=0
        call HIEN_SO_N      ;Hien giay
        HienString dc       ;Hien dau '.'
        mov al,dl           ;Dua % giay tu dl -> al
        xor ah,ah           ;ah=0
        call HIEN_SO_N      ;Hien % giay
        HienString thoat
        mov ah,1            ;Cho an 1 phim
        int 21h
        ret
 _GETTIME ENDP
 INCLUDE lib2.asm
END
