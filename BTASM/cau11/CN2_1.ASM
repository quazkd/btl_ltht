;-------------------------------------------------------
; CT con nhap xau sau do dao nguoc va cat vao bien xau |
;-------------------------------------------------------

include lib1.asm
.model small
.data
 tbao1 db '              CHUC NANG DAO CHUOI'
       db 13,10, '              --------o0o--------'
       db 13,10,13,10, '     Nhap vao mot chuoi: $'
 EXTRN _xau:dword
.code
PUBLIC @DAOCHUOI$qv 
@DAOCHUOI$qv Proc
         clrscr                ; Xoa man hinh  
         HienString  tbao1     ; Hien tbao1
         xor cx, cx            ; CX=0 (dem so luong ky tu vao cua xau)

; Doan nhan cac ky vao cua xau va cat vao stack
 DOCTIEP:
         mov ah,1              ; Ham nhan 1 ky tu tu ban phim
         int 21h
         cmp al,1Ah            ; Lieu ky tu vao la to hop Ctrl_Z (1Ah) ?
         je THOIDOC            ; Dung la to hop ctrl_Z thi nhay,
         push ax               ; con khong phai thi at vao stack
         inc cx                ; Tang so ky tu vao (trong CX)
         jmp DOCTIEP

; Doan cac ky tu vao cua xau (nguoc) va cat vao bien xau
 THOIDOC:
        mov ax,SEG _xau
        mov es,ax              ; ES=phan dia chi segment chua ky tu dau xau
        mov bx,OFFSET _xau     ; BX=phan dia chi offset chua ky tu dau xau
    LX:
        pop ax                 ; Loi tu stack
        mov es:[bx],al         ; De vao cac thanh phan cua xau
        inc bx                 ; BX tro den thanh phan tiep theo cua xau
        loop LX
        xor al,al              ; Thanh phan cuoi cua xau la \0
        mov es:[bx],al
        ret
@DAOCHUOI$qv endp
END
