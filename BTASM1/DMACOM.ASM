include Lib1.asm
.model small
.stack 100h
.data
m1 db 13,10,'         THONG TIN VE DMA VA COM'
   db 13,10,13,10,'         MT DANG DUNG CO DMA KHONG? $'
m2 db 13,10,'         MT DANG DUNG CO COM KHONG? $'
co db 'Co$'
ko db 'Khong$'
m3 db 13,10,'         So luong cong COM la: $'
m4 db 13,10,'         Dia chi cac cong COM la: $'
space db' $'
.code
PS:
          mov ax,@data
          mov ds,ax
          clrscr
          HienString m1
          int 11h                 ; 0:410h -> AL va 0:411h -> AH
          mov al,ah
          shr al,1
          jc L1
          HienString ko
          jmp L2
      L1:
          HienString co
      L2:
          HienString m2
          and al,00000111b
          jnz L3
          HienString ko
          jmp KT
      L3:
          HienString co
          mov cl,al
          xor ch,ch
          HienString m3
          add al,30h
          mov ah,0eh
          int 10h
          HienString m4
          xor ax,ax
          mov es,ax
          mov bx,400h
      L4:
          mov ax,es:[bx]
          call HIEN_HEXA
          HienString space
          add bx,2
          loop L4
      KT:
          mov ah,1
          int 21h
          mov ah,4ch
          int 21h
include Lib2.asm
end ps

