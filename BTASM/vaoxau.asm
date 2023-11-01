;-------------------------------------------------------
; Dao xau va hien nguoc dùng chuc nang 0ah cua int 21h  | 
; (cho phep danh sai va sua, ket thuc xau bang Enter va |
; them phan cho biet so luong ky tu vao                 |
;-------------------------------------------------------
INCLUDE lib1.asm
.MODEL small
.STACK 100h
.DATA
m1      db  13,10,'           VAO XAU VA HIEN NGUOC LAI'
        db  13,10,'           -------------------------'
        db  13,10,13,10,'     Hay vao xau ki tu (kt bang Enter): $'
m2      db  13,10,'     Dao xau vua vao la: $'

buff    db  100
        db ?
        db 100 dup(?)
;slxau   db  13,10,'     So luong ky tu xau vao la: $'
back    db  13,10,'     Co tiep tuc CT (c/k)? $'
.CODE
 PUBLIC @DAOCHUOI$qv

@DAOCHUOI$qv PROC

   L0:      
        ;clrscr          ; Xoa man hinh 
        HienString m1   ; Hien thong bao m1
        lea dx,buff     ; DX tro den dau vung buff
        mov ah,0ah      ; Chuc nang nhan xau (cho phep danh sai va sua, ket thuc
        int 21h         ; bang Enter)
        mov bx,dx       ; BX tro den dau vung buff
        inc bx          ; BX tro den byte thu 2 cua buff
        mov cl,[bx]     ; CL=so luong ky tu cua xau da vao
        xor ch,ch       ; CH=0 de CX=CL (chi so cong lap hien nguoc)

; Doan hien so luong ky tu
        ;HienString slxau; Hien thong bao xau slxau
        ;mov ax,cx       ; AX=so kuong xau
        ;call HIEN_SO_N  ; Hien so luong xau
; Ket thuc hien so luong xau
; Doan hien nguoc
        add bx,cx       ; BX tro den byte chua ky tu cuoi cung xau da vao
        HienString m2   ; Hien thong bao m2
   L1:                  ; Vong lap hien nguoc xau
        mov al,[bx]     ; AL=lan luot cac ky tu (theo chieu tu cuoi ve dau)
        mov ah,0eh      ; Chuc nang hien ky tu ASCII co trong AL ra man hinh
        int 10h
        dec bx          ; Lui con tro 1 byte
        loop L1
        HienString back ; Hien thong bao back
        mov ah,1        ; Cho nhan 1 ky tu tu ban phim
        int 21h
        cmp al,'c'      ; Lieu ky tu vao la 'c'
        jne Thoat       ; Khong phai la 'c' thi nhay den Thoat,
        jmp L0          ; con dung la 'c' thi tro ve L0
    Thoat:
        ret
@DAOCHUOI$qv ENDP
 INCLUDE lib2.asm
        END

