#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
using namespace std;

int prod(char* n, int r);

int main()
{
	int length = 6;
	int total;//used to be 1033
	int test = 0;

	char* nums;
	nums = new char[length];

	//Opening file...
	ifstream numfile;
	numfile.open("numbers.txt");

	numfile.seekg(0, ios::end);
	total = numfile.tellg();

	if (numfile.is_open())
	{
		for (int i = 0; i <= total; i++)
		{
			numfile.seekg(i, ios::beg);
			//Reading file...
			numfile.read(nums,length);

			for (int j = 0; j < length; j++)
			{
				if (nums[j] == '\n')
				{
					nums[j] = '1';
					break;
				}
				else
				{
					nums[length-1] = '1';
				}
			}
			//cout.write(nums,length);
			//cout << endl;

			int result = prod(nums, length);
			if (result > test)
			{
                test = result;
				cout << result << endl;
			}
		}
	}
	else
	{
		cout << "Could not open file." << endl;
	}
	numfile.close();
	delete[] nums;
	return 0;
}

int prod(char* n, int r)
{
	int prod = 1;
	for (int i = 0; i < r; i++)
	{
		prod *= (n[i] - 48);
	}
	return prod;
}