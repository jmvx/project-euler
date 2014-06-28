#include <iostream>
#include <cmath>
#include "prime.h"
using namespace std;

int main()
{
	long long sum = 0;

	long long high = 2000000;
	for (int i = 2; i < high; i++)
	{
        bool result = is_prime(i);
		if (result)
		{
			sum += i;
		}
	}
	cout << sum << endl;
	return 0;
}