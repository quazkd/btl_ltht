/*--------------------------------------------------------*/
/*    Vao mot xau va hien nguoc cau voi su phan cong:     */
/*  - CT con ASM (tep cn2_1.asm) vao xau va tao xau nguoc */
/*  - Trong CT chinh (tep cau11_1.cpp) hien xau nguoc     */
/*--------------------------------------------------------*/
#include <iostream.h>
#include <conio.h>
extern DAOCHUOI();
char xau[100];
int main()
{
	char tl;
      	int cn;
      	clrscr();
      	
	cout << "\n          Truong Dai hoc Mo Ha Noi";
      	cout << "\n          KHOA CONG NGHE THONG TIN";
      	cout << "\n          -----------o0o----------";
      	cout << "\n\n\n           BAI TAP LON MON LTHT";
      	cout << "\n\n\n     Cac SV thuc hien:";
      	cout << "\n      1. Dam Thu Hang      Lop: 19A2";
      	cout << "\n      2. Le Thuy Trang     Lop: 19A2";
      	cout << "\n      3. Tran Thi Hong     Lop: 19A2";
      	cout << "\n      3. Ta Thi Minh Hue   Lop: 19A2";
      	cout << "\n\n\n     Co tiep tuc CT (c/k)?";
      	
        tl=getch();     
      	if(tl=='c')
	{
		L1:
			clrscr();
                 	cout << "\n            CAC CHUC NANG CUA BTL";
                 	cout << "\n            ---------***---------- \n";
                 	cout << "\n     1. a luy thua n";
                 	cout << "\n     2. Vao mot xau va hien nguoc lai";
                        cout << "\n     3. So luong kRAM co them tren mainboard";
			cout << "\n     4. Thoat ve Dos \n";
                 	cout << "\n     Hay chon: ";
                 	cin >> cn;
                 
			switch(cn)
                            {    case 2:  
                                        {
                                          DAOCHUOI();
                                          cout<<"\n     Hien xau nguoc:";
                                          cout<<xau;break;
                                         }
				case 4: return 0;
                 		default: cout << "\n     Vao sai roi!";
                            }

     		cout << "\n     Co thuc hien CN khac(c/k): ";
     		
		tl=getch();
     		if(tl=='c')
      			goto L1;
	}

	return 0;
}
