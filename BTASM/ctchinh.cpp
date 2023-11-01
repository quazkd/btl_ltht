#include <stdio.h>
#include <conio.h>
extern GETTIME();
extern DAOCHUOI();
extern KRAM();
void main()
{
      char tl;
      int cn; /*chuc nang*/
      clrscr();
      printf("\n\n          Truong Dai hoc Mo Ha Noi");
      printf("\n          KHOA CONG NGHE THONG TIN");
      printf("\n          -----------o0o----------");
      printf("\n\n\n           BAI TAP LON MON LTHT");
      printf("\n\n\n     Cac SV thuc hien:");
      printf("\n      1. Khuat Dinh Quan      Lop: 19A5");
    	 printf("\n      2. Pham Xuan Sang Lop: 19A5");
     	 printf("\n      3. Do Xuan Ha   Lop: 19A5");
		 printf("\n      3. Cap Thi Hai Ly   Lop: 19A2");
      printf("\n\n\n     Co tiep tuc CT (c/k)?");
      tl=getch();
      if(tl=='c')
     {
      while(1){
             clrscr();
             printf("\n\n            CAC CHUC NANG CUA BTL");
             printf("\n            ---------***----------");
             printf("\n\n     1. Chuc nang GET TIME");
             printf("\n     2. Vao mot xau va hien nguoc lai");
             printf("\n     3. So luong kRAM then mainboard");
             printf("\n     4. Thoat ve DOS");
             printf("\n\n     Hay chon: ");

             while(1){
                char term;
                if(scanf("%d%c", &cn, &term) != 2 || term != '\n'){
                    printf("\n     Nhap khong hop le!");
                    printf("\n\n     Hay chon lai: ");
                    fflush(stdin);
                }else{
                    if(cn>0&&cn<5){
                        break;
                    }else{
                            printf("\n     Nhap khong hop le!");
                            printf("\n\n     Hay chon lai: ");
                        }
                }
             }
             switch(cn)
             {
                 case 1: GETTIME(); break;
                 case 2: DAOCHUOI(); break;
                 case 3: KRAM(); break;
                    case 4: printf("\n     THOAT VE DOS!"); return;
                 default: printf("\n     Nhap khong hop le!");
             }
      }
      }
}
