/* tong day so nguyen - ham asm khong doi */
#include <iostream.h>
#include <conio.h>
int n;
int a[100];
extern int SUM();
void main(){
        char tl;
     L0:
        clrscr();
        cout<<"\n  Nhap so phan tu: ";
        cin>>n;
        cout<<"\n  Nhap cac gia tri cua day: ";
        for(int i=0; i<n; i++){
           cout<<"\n  a["<<i<<"]: ";
           cin>>a[i];
        }
     cout<<"\n  Tong = "<<SUM();
     cout<<"\n  Tiep tuc(Y/N): ";
     tl=getch();
     if(tl=='y') goto L0;
}
