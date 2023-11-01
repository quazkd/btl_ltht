#include <iostream.h>
#include <conio.h>
/*extern GETTIME();
extern int XAUKT();
extern kRAM();
extern vedos();*/
void main()
{
      char tl;
      int cn; /*chuc nang*/
      clrscr();
      cout<<"\n          Truong Dai hoc Mo Ha Noi";
      cout<<"\n          KHOA CONG NGHE THONG TIN";
      cout<<"\n          -----------o0o----------";
      cout<<"\n\n\n           BAI TAP LON MON LTHT";
      cout<<"\n\n\n     Cac SV thuc hien:";
      cout<<"\n      1. Pham Xuan Sang     Lop: 19A5";
      cout<<"\n      2. Khuat Dinh quan        Lop: 19A5";
      cout<<"\n      3. Cap Thi Hai Ly      Lop: 19A2";
	  cout<<"\n      4. Do Xuan Ha     Lop: 19A5";
      cout<<"\n\n\n     Co tiep tuc CT (c/k)?";
      tl=getch();
      if(tl=='c')
               {
                 L1:
                 clrscr();
                 cout<<"\n            CAC CHUC NANG CUA BTL";
                 cout<<"\n            ---------***----------";
                 cout<<"\n\n   1. Lay thoi gian he thong";
                 cout<<"\n     2. Vao Xau ky tu, hien xau ky tu";
                 cout<<"\n     3. So luong kRAM co tren mainboard";
				 cout<<"\n     4. Thoat chuong trinh";
                 cout<<"\n\n     Hay chon: ";
                 cin>>cn;
                 switch(cn)
                 {
                 /*case 1: TAOTM(); break;
                 case 2: TBC2SO(); break;
                 case 3: CONGJOYSTICK(); break;
				 case 4: vedos(); break;*/
                 default: cout<<("\n     Vao sai roi, cao to oi!");
                 }
     cout<<("\n     Co thuc hien CN khac(c/k): ");
     tl=getch();
     if(tl=='c'){
      goto L1;
      }
      }
      }
