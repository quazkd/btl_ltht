;--------------------------------------------
; Vao xau va hien nguoc theo co che PUSH-POP |
; co them yeu cau hien so luong ky tu xau vao|
;--------------------------------------------
INCLUDE lib1.asm
.MODEL small
.STACK 100h
.DATA
m1      db  13,10,'           VAO XAU VA HIEN NGUOC LAI'
        db  13,10,'           -------------------------'
        db  13,10,13,10,'     Hay vao xau ki tu (kt bang Ctrl_Z): $'
m2      db  13,10,'     Dao xau vua vao la: $'
m3      db  13,10,'     So luong ky tu xau vao: $'    ; !!!!!! Them
back    db  13,10,'     Co tiep tuc CT (c/k)? $'
.CODE
 PUBLIC @DAOCHUOI$qv
@DAOCHUOI$qv PROC
   L0:      
        clrscr          ; Xoa man hinh 
        HienString m1   ; Hien thong bao m1
        xor cx,cx       ; CX dem so luong ky tu vao (luc dau=0)
    L1:             
        mov ah,1        ; Cho nhan 1 ky tu
        int 21h
        cmp al,1ah      ; Lieu ky tu vao la Ctrl_Z (1ah)
        je  L2          ; Ky tu vao la Ctrl_Z (ket thuc vao xau) thi nhay den L2,
        push ax         ; Cat ly tu vua nhan vao stack
        inc cx          ; Dem so ky tu da vao
        jmp L1          ; Quay ve nhan ky tu tiep theo
    L2:

; Doan them so luong ky tu da vao  !!!!!!!
        HienString m3   ; Hien thong bao m3
        mov ax,cx       ; Dua so luong ky tu da vao -> AX
        call HIEN_SO_N  ; Hien so luong ky tu xau vao

; Doan hien nguoc
        HienString m2   ; Hien thong bao m2
    L3:
        pop ax          ; Loi ky tu tu stack vao AX
        mov ah,0eh      ; Chuc nang hien 1 ky tu o AL len man hinh
        int 10h
        loop L3
        HienString back ; Hien thong bao back
        mov ah,1        ; Cho nhan 1 ky tu tu ban phim
        int 21h
        cmp al,'c'      ; Lieu ky tu vao la 'c'
        jne Thoat       ; Khong phai la 'c' thi nhay den Thoat,
        jmp L0          ; con dung la 'c' thi tro ve L0
    Thoat:
        ret
@DAOCHUOI$qv  ENDP
INCLUDE lib2.asm
        END

