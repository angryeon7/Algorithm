#include <iostream>
using namespace std;

int main()
{
    int count;
    int arr[10001] = {0};

    scanf("%d", &count);
    
    for (int i = 0; i < count; i++) {
        int a;
		scanf("%d", &a);
		arr[a]++;
	}
	for (int i = 0; i < 10001; i++) {
		for (int k = 0; k < arr[i]; k++) {
			printf("%d\n", i);
		}
	}
    
}
