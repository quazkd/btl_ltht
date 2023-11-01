/*-------------------------*/
/*Giai thua n - ham asm khong doi*/
#include <iostream.h>
#include <conio.h>
int n;
extern int GIAITHUA();
void main()
{
        char tl;
     L0:
        clrscr();
        cout<<"\n     Nhap n: ";
        cin>>n;
        cout<<"\n     Giai thua cua "<<n<<" la: "<<GIAITHUA();
        cout<<"\n     Co muon tiep tuc khong (Y/N): ";
        tl=getch();
        if(tl=='y') goto L0;
}
