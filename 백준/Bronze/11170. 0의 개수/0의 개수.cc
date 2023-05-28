#include <iostream>
#include <string>
using namespace std;

int main()
{
    int N, M;
    int count;
    int a;
    cin >> count;

    while(count--){
        a = 0;
        cin >>N >> M;
        for(int i = N; i<=M; i++){
            
            string str = to_string(i);
            for (int j = 0; j < str.size(); j++)
            {
                if (str[j] == '0')
                    a++;
            }
        }
        cout<<a<<endl;
    }
    
}