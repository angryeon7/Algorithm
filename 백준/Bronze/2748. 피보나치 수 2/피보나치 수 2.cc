#include <iostream>
#include <string>
using namespace std;

int main()
{
    int n;
    
    cin >> n;
    long long result[91]; // 89번째까지 도달하게 된다면 int형 데이터 타입으로는 범위가 넘어가기 때문에 long long 자료형을 사용
    
    result[0] = 0;
    result[1] = 1;
    

    for(int i=2; i<=n; i++){
        result[i] = result[i-1]+result[i-2];
    }
    
    cout << result[n]<<endl;
}
