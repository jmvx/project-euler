#include <iostream>
using namespace std;

int addnat(int l);

int main()
{
	int limit;

	cout << "Enter the number you'd like to add up to:\n";
	cin >> limit;

	int answer = addnat(limit);

	cout << answer << endl;
}

int addnat(int l)
{
	int sum = 0;

	//add numbers divisible by 3 and 5
	for (int i = 1; i < l; i++)
	{
		if (i%3 == 0 || i%5 == 0)
		{
			sum += i;
		}
	}
	return sum;
}

