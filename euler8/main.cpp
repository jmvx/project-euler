#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
using namespace std;

int prod(char* n, int r);

int main()
{
	int length = 5;
	int total = 1000;
	int test = 0;

	char* nums;
	nums = new char[length];

	//cout << "Opening file..." << endl;
	ifstream numfile;
	numfile.open("numbers2.txt");

	if (numfile.is_open())
	{
		for (int i = 1; i <= total-4; i++)//ask ryan why total-4
		{
			//cout << "Reading file..." << endl;
			numfile.read(nums,length);
			int result = prod(nums, length);
			if (result > test)
			{
                test = result;
				cout << result << endl;
			}
			numfile.seekg(i, ios::beg);
		}
	}
	else
	{
		cout << "Error" << endl;
	}
	numfile.close();
	delete[] nums;
	return 0;
}

int prod(char* n, int r)
{
	int numb[5];

	int prod = 1;
	for (int i = 0; i < r; i++)
	{
		numb[i] = n[i] - 48;//because of ascii
		prod *= numb[i];
	}
	return prod;
}