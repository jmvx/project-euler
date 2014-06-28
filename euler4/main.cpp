#include <iostream>
#include <sstream>
#include <string>
using namespace std;

bool is_pal(int r, int l, int h);

int main ()
{

	//return is_pal(100*100);

	int temp = 0;
	int result; 
	int low = 100;
	int high = 999;

	for (int i = low; i <= high; i++)
	{
		for (int j = low; j <= high; j++)
		{
			result = i*j;
			bool pal = is_pal(result, low, high);
			if (pal && result > temp)
			{
				temp = result;
			}
		}
	}
	cout << temp << " is the palindrome" << endl;
	return 0;
}

bool is_pal(int r, int l, int h)
{
	string pal;
	stringstream ss;
	ss << r;
	pal = ss.str();
	
	for (int i = 0; i < pal.size(); i++)
	{
		if (pal[i] != pal[pal.size()-i-1])
		{
			return false;
		}
	}
	return true;
}
