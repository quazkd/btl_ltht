/* tong day so nguyen - ham asm khong doi */
#include <iostream.h>
#include <conio.h>
int a[100];
extern int SUM(int i1);
void main(){
        char tl;
        int n;
     L0:
        clrscr();
        cout<<"\n  Nhap so phan tu: ";
        cin>>n;
        cout<<"\n  Nhap cac gia tri cua day: ";
        for(int i=0; i<n; i++){
           cout<<"\n  a["<<i<<"]: ";
           cin>>a[i];
        }
     cout<<"\n  Tong = "<<SUM(n);
     cout<<"\n  Tiep tuc(Y/N): ";
     tl=getch();
     if(tl=='y') goto L0;
}
