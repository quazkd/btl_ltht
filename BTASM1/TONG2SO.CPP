#include <iostream.h>
#include <conio.h>
int so1, so2;
void main()
{
      char tl;
   L0:
      clrscr();
      cout<<"\n Nhap so thu 1: ";
      cin>>so1;
      cout<<"\n Nhap so thu 2: ";
      cin>>so2;
      asm {
             mov ax,so1
             mov bx,so2
             add ax,bx
             mov so1,ax
          }
      cout<<"\n Tong 2 so la: "<<so1;
      cout<<"\n Co tiep tuc CT(Y/N): ";
      tl=getch();
      if (tl=='y') goto L0;
}
