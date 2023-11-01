/* a luy thua n - ham asm 1 doi */
#include <iostream.h>
#include <conio.h>
int n;
extern int LUYTHUA(int i1);
void main(){
        char tl;
        int a;

     L0:
        clrscr();
        cout<<"\n   Nhap a: ";
        cin>>a;
        cout<<"\n   Nhap n: ";
        cin>>n;
        cout<<"\n   "<<a<<" luy thua "<<n<<" la: "<<LUYTHUA(a);
        cout<<"\n   Tiep tuc(Y/N): ";
        tl=getch();
        if(tl=='y') goto L0;
 }
