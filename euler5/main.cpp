#include <iostream>
using namespace std;

int evdiv();

int main ()
{
	int result = evdiv();
	cout << result << endl;
}

int evdiv()
{
	for (int i = 0; i < 500000000; i++)
	{
		if (i%20 == 0 && i%19 == 0 && i%18 == 0 && i%17 == 0 && i%16 == 0 && i%15 == 0 && i%14 == 0 && i%13 == 0 && i%12 == 0 && i%11 == 0)
		{
			cout << i << endl;
		}
	}
	return i;
}