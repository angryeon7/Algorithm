#include <iostream>
#include <cstring>
#include <string>

using namespace std;

int main()
{
    long long sum = 0;
    long long max = 0;
    long long  S;
    cin >> S;
    
    while (1) {
        max++;
		sum += max;
		if (sum > S) {
			break;
		}
	}
    max = max - 1;
    cout<< max;
}