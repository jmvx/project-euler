#include <iostream>
#include <cmath>
using namespace std;

int main ()
{
	for (int a = 1; a < 1001; a++)
	{
		for (int b = 1; b < 1001; b++)
		{
			for (int c = 1; c < 1001; c++)
			{
				if ((a + b + c == 1000) && (pow(a,2) + pow(b,2) == pow(c,2)))
				{
					int result = a * b * c;
					cout << result << endl;
				}
			}
		}
	}
	cout << "Could not find a pythagorean Triple" << endl;//just added this to see if my program ever ends
	return 0;
}