/* a luy thua n - ham asm khong doi */
#include <iostream.h>
#include <conio.h>
int a, n;
extern int LUYTHUA();
void main(){
        char tl;
     L0:
        clrscr();
        cout<<"\n   Nhap a: ";
        cin>>a;
        cout<<"\n   Nhap n: ";
        cin>>n;
        cout<<"\n   "<<a<<" luy thua "<<n<<" la: "<<LUYTHUA();
        cout<<"\n   Tiep tuc(Y/N): ";
        tl=getch();
        if(tl=='y') goto L0;
 }
