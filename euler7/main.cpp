#include <iostream>
#include <cmath>
#include <cassert>
using namespace std;

bool is_prime(long long fact);

int main ()
{
	assert(!is_prime(4));
	assert(is_prime(7));

	int n = 1;
	int sum = 1;
	while (sum <= 10001)
	{
		n += 1;
		bool result = is_prime(n);
		if (result)
		{
			sum += 1;
		}
	}
	cout << n << endl;
	return 0;
}
bool is_prime(long long fact)
{
	for (long long j = 2; j <= sqrt((double)fact); j++)
	{
		if (fact%j == 0 && fact != j)
		{
			return false;
		}
	}
	return true;
}