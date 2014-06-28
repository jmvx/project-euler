#include <iostream>
#include <cmath>
#include <cassert>
#include "prime.h"
using namespace std;

long long prime_factors(long long number);

int main ()
{

	assert(is_prime(7));
	assert(!is_prime(4));

	long long n = 600851475143;

	long long result = prime_factors(n);

	cout << result << endl;

	return 0;
}

long long prime_factors(long long number)
{
	for (long long i = sqrt((double)number); i > 1; i--)
	{
		if (number%i == 0)
		{
			bool result = is_prime(i);
			if (result)
			{
				return i;
			}
		}
	}
}