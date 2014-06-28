#include <iostream>
#include <cmath>
using namespace std;

bool is_prime(long long num)
{
	for (long long j = 2; j <= sqrt((double)num); j++)
	{
		if (num%j == 0)
		{
			return false;
		}
	}
	return true;
}