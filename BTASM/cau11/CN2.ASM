;---------------------------------------------------
; CT con vao xau va hien nguoc dung co che PUSH-POP |
; (khi vao khong cho phep danh sai va sua,          |
; ket thuc bang to hop Ctrl_Z (ma 1Ah))             |
;---------------------------------------------------
include lib1.asm
.model small
.data
 tbao1 db '          CHUC NANG DAO CHUOI'
       db 13,10, '          --------o0o--------'
       db 13,10,13,10, '     Nhap vao mot chuoi: $'
 tbao2 db 13,10,'     Chuoi sau khi dao nguoc: $'
.code
PUBLIC @DAOCHUOI$qv 
@DAOCHUOI$qv Proc
         clrscr                 ; Xoa man hinh
         HienString  tbao1      ; Hien thong bao tbao1
         xor cx, cx             ; CX=0

; Vong lap nhan cac ky tu xau vao va de vao stack
 DOCTIEP:
         mov ah,1               ; Ham cho nhan 1 ky tu tu ban phim
         int 21h
         cmp al,1Ah             ; 1Ah ma cua to hop Ctrl_Z
	 je THOIDOC
         push ax                ; Cat vao stack
         inc cx                 ; CX dem so luong ky tu vao
         jmp DOCTIEP

 THOIDOC:
         HienString tbao2

; Vong lap hien nguoc 
 HIEN:
        pop dx
        mov ah,2
        int 21h
        loop HIEN
        ret
@DAOCHUOI$qv endp
END
