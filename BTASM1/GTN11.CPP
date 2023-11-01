/*-------------------------*/
/*Giai thua n - ham asm co 1 doi*/
#include <iostream.h>
#include <conio.h>

extern int GIAITHUA(int i);
void main()
{
       int n;
        char tl;
     L0:
        clrscr();
        cout<<"\n     Nhap n: ";
        cin>>n;
        cout<<"\n     Giai thua cua "<<n<<" la: "<<GIAITHUA(n);
        cout<<"\n     Co muon tiep tuc khong (Y/N): ";
        tl=getch();
        if(tl=='y') goto L0;
}
