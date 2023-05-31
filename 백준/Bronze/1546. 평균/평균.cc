#include <iostream>
#include <cstring>
using namespace std;

int main()
{
    int count;
    int max = 0;
    double sum = 0;
    
    cin >> count;
    double a[count];
 
    for (int i = 0; i < count; i++){
        cin >> a[i]; // 입력한 값을 a[i]에 저장
        if (a[i] > max)
			max = a[i];
		sum += a[i];
    }

    sum = (sum / max * 100) / count;
    cout << fixed;
	cout.precision(6);
    cout<< sum << endl;
}