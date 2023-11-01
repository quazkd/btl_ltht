/* a luy thua n - ham asm 2 doi */
#include <iostream.h>
#include <conio.h>
extern int LUYTHUA(int i1,int i2);
void main(){
        char tl;
        

     L0:
     int a,n;
        clrscr();
        cout<<"\n   Nhap a: ";
        cin>>a;
        cout<<"\n   Nhap n: ";
        cin>>n;
        cout<<"\n   "<<a<<" luy thua "<<n<<" la: "<<LUYTHUA(a,n);
        cout<<"\n   Tiep tuc(Y/N): ";
        tl=getch();
        if(tl=='y') goto L0;
 }
