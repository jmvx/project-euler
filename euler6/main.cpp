#include <iostream>
#include <cmath>
using namespace std;

int sum_of_sq();
int sq_of_sum();

int main ()
{
	int sos1 = sum_of_sq();
	int sos2 = sq_of_sum();
	int diff = sos2 - sos1;
	cout << diff << endl;
	return 0;
}

int sum_of_sq()
{
	int sum = 0;
	for (int i = 1; i <= 100; i++)
	{
		//give each natural number a power of 2
		sum += pow(i,2);
	}
	return sum;
}

int sq_of_sum()
{
	int sum = 0;
	int sumpow;
	for (int i = 1; i <= 100; i++)
	{
		//get sum
		sum += i;
	}
	//then give total sum a power of 2
	sumpow = pow(sum,2);
	return sumpow;
}
