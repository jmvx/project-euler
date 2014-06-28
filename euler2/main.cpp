#include <iostream>
#include "even.h"
using namespace std;

int even_fib(int h);

int main ()
{
	int high = 4000000;
	int answer = even_fib(high);

	cout << "The sum is " << answer << endl;
}

int even_fib(int h)
{
	int sum = 0;

	//first number starts as 1
	int a = 1;
	//second number starts as 1
	int b = 1;
	//third number starts as a + b = 2
	int c = 2;
	while (c < h)
	{
		bool result = is_even(c);
		if (result)
		{
			sum += c;
		}
		cout << c << endl;
		//set a equal to value of b
		a = b;
		//set b equal to value of c
		b = c;
		//set c equal to new a + b, then restart loop if applicable
		c = a + b;
	}
	return sum;
}


			
			