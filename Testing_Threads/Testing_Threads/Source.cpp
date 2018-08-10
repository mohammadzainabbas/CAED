//#include <iostream>
//#include <fstream>
//#include <cstdlib>
//using namespace std;
//void main()
//{
//	ifstream in;
//	ofstream out;
//	
//	in.open("num.txt");
//	
//	char character;
//	in.get(character);
//	
//	out.open("copynum.txt",ios::ate);
//
//	if(in.fail())
//	{
//		cout<<"Error in opening file\n";
//		exit(1);
//	}
//
//	//cerr<<"How are you\n";
//	do
//	{
//		in.get(character);
//		int a=static_cast<int>(character) - 49;
//		cout<<a*5<<endl;
//		out.put(character);
//		
//	}
//	while (!in.eof()==true);
//	/*{
//		cout<<character;
//		out.put(character);
//		in.get(character);
//	}*/
//
//	out.close();
//	in.close();
//}
////
//#include <iostream>
//#include <process.h>
//#include <Windows.h>
//#include <stdio.h>
//
//CRITICAL_SECTION Var;
//HANDLE mutex;
//
//unsigned _stdcall thread(void *data)
//{
//	WaitForSingleObject(mutex,INFINITE);
//	//EnterCriticalSection(&Var);
//	std::cout<<"Hi, Im M Zain Abbas\n";
//	return 0;
//	//LeaveCriticalSection(&Var);
//	ReleaseMutex(mutex);
//}
//
//void main()
//{
//	HANDLE A, B, C;		
//	mutex = CreateMutex(0,0,0);
//	//InitializeCriticalSectionAndSpinCount(&Var,1000);
//	A=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//	B=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//	C=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//
//	WaitForSingleObject(A,INFINITE);
//	WaitForSingleObject(B,INFINITE);
//	WaitForSingleObject(C,INFINITE);
//
//	CloseHandle(A);
//	CloseHandle(B);
//	CloseHandle(C);
//
//	CloseHandle(mutex);
//	//DeleteCriticalSection(&Var);
//}

//#include <iostream>
//using namespace std;
//
//void main()
//{
//	cout<<"sudo apt	~instagram:reg/apt/Oauth/khubab_ayub11/\nsudo apt get access ~reg.apt.Oauth.khubab_ayub11\nsudo apt ~rvp";
//	cout<<"\n\t0'0'9'2'3'3'1'2'1'3'8'7'3'7\n\n\n\n\nsudo\n";
//}

//
//#include<iostream>
//#include<stdlib.h>
//#include<thread>
//
//using namespace std;
//
//int thred = 0;
//bool check=false;
//
//void checkprime(int a)
//{
//	if (a % 2 != 0 && a % 3 != 0 && a % 5 != 0 && a % 7 != 0 && a % 11 != 0)
//	{
//		cout << a << " is a prime number" << endl;
//	}
//}
//
//int main()
//{
//	int start, end;
//	cout << "Start and End of interval to know the prime number" << endl;
//	cin >> start >> end;
//	double time1 = time(NULL);
//	while (start != end)
//	{
//		thread thread1(checkprime,start);
//		start++;
//		thread1.join();
//		if (start > end)
//			break;
//		thread thread2(checkprime, start);
//		start++;
//		thread2.join();
//		if (start > end)
//			break;
//		thread thread3(checkprime, start);
//		start++;
//		thread3.join();
//		if (start > end)
//			break;
//		thread thread4(checkprime, start);
//		start++;
//		thread4.join();
//		if (start > end)
//			break;
//		thread thread5(checkprime, start);
//		start++;
//		thread5.join();
//		if (start > end)
//			break;
//		thread thread6(checkprime, start);
//		start++;
//		thread6.join();
//		if (start > end)
//			break;
//		thread thread7(checkprime, start);
//		start++;
//		thread7.join();
//		if (start > end)
//			break;
//		thread thread8(checkprime, start);
//		start++;
//		thread8.join();
//		if (start > end)
//			break;
//		thread thread9(checkprime, start);
//		start++;
//		thread9.join();
//		if (start > end)
//			break;
//		thread thread10(checkprime, start);
//		start++;
//		thread10.join();
//		if (start > end)
//			break;
//	
//	}
//	double time2 = time(NULL);
//	cout << "Total Time " << time2-time1 << endl;
//}
//
//int main()
//{
//	int start, end;
//	cout << "start and end of interval to know the prime number" << endl;
//	cin >> start >> end;
//	double timea = time(NULL);
//	while (start<end)
//	{
//		checkprime(start);
//		start++;
//	}
//	double timeb = time(NULL);
//	cout << "time " << timeb - timea << endl;
//}

//
//#include <iostream>
//#include <process.h>
//#include <Windows.h>
//#include <stdio.h>
//
//CRITICAL_SECTION Var;
//
//
//unsigned _stdcall thread(void *data)
//{
//
//	EnterCriticalSection(&Var);
//	std::cout<<"Hi, Im M Zain Abbas\n";
//	return 0;
//	LeaveCriticalSection(&Var);
//}
//
//void main()
//{
//	HANDLE A, B, C;		
//	InitializeCriticalSectionAndSpinCount(&Var,1000);
//	A=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//	B=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//	C=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
//
//	WaitForSingleObject(A,INFINITE);
//	WaitForSingleObject(B,INFINITE);
//	WaitForSingleObject(C,INFINITE);
//
//	CloseHandle(A);
//	CloseHandle(B);
//	CloseHandle(C);
//
//
//	DeleteCriticalSection(&Var);
//}



#include <iostream>
#include <process.h>
#include <Windows.h>
#include <stdio.h>

HANDLE Semaphrone;
int count=0;
void addCount(int increment)
{
	WaitForSingleObject(Semaphrone, INFINITE);
	count += increment;
	ReleaseSemaphore(Semaphrone, 1, 0);
}

unsigned int __stdcall thread(void*)
{
for ( int i = 0; i < 50; i++) {	addCount(3);
}
return 0;
}

void main()
{
	HANDLE A, B, C;		
	Semaphrone = CreateSemaphore(0,1,1,0);
	A=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
	B=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);
	C=(HANDLE) _beginthreadex(NULL, 0, thread, NULL, 0, NULL);

	WaitForSingleObject(A,INFINITE);
	WaitForSingleObject(B,INFINITE);
	WaitForSingleObject(C,INFINITE);

	CloseHandle(A);
	CloseHandle(B);
	CloseHandle(C);
	printf(	"Count = %d\n", count);

	CloseHandle(Semaphrone);
}
