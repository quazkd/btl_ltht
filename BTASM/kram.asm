INCLUDE lib1.asm
.MODEL small
.STACK 100h
.DATA
m1     db 13,10,'     CHUC NANG SO LUONG kRAM TREN MAINBOARD'
       db 13,10,'     -------------------*------------------'
       db 13,10,13,10,'     So luong kRAM co tren MainBoard la: $'
thoat  db 13,10,'     Nhan phim bat ki de thoat$'
kR0    db '0 k$'
kR16   db '16 k$'
kR32   db '32 k$'
kR64   db '64 k$'
.CODE
 PUBLIC  @KRAM$qv
@KRAM$qv PROC
        ;CLRSCR()         ; xoa man hinh
        HienString m1    ; hien noi dung m1
        int 11h                 ; 0:410h -> AL
        and al,00001100b        ; tach 2 bit co thong tin lien quan den kRAM
        shr al,2                        ; dich bit sang phai 2 lan
        jnz L_kRAM16           ;neu khac 0 thi nhay sang L_kRAM16                                                                                                                                                                                                                                                                                                                                                       
        HienString kR0           ;con ko thi hien kR0
        jmp Exit_kRAM     ; nhay den nhan Exit_kRAM
   L_kRAM16:
        cmp al,1                  ; so sanh AL voi 1
        jne L_kRAM32      ; neu khong bang -> nhay sang nhan L_kRam32
        HienString kR16    ; neu bang thi hien xau kR16
        jmp Exit_kRAM     ;nhay den nhan Exit_kRAM
    L_kRAM32:
        cmp al,2                             ; so sanh AL voi 2                                                                                                                                                                                                                                                                                                                                                           
        jne L_kRAM64                 ; neu khong bang -> nhay den nhan L_kRam64
        HienString kR32               ; neu bang, hien xau kR32
        jmp Exit_kRAM	    ; nhay den nhan Exit_kRAM
    L_kRAM64:                
        HienString kR64	; hien xau kR64
    Exit_kRAM:
        HienString thoat         
        mov ah,1             ;|
        int 21h                 ;| cho 1 ki tu tu ban phim
        ret			; quay ve chuong trinh da goi no tu ct con
@KRAM$qv ENDP
INCLUDE lib2.asm
END
