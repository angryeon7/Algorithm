#include <iostream>

using namespace std;

int main()
{
    int N;
    cin >> N;
    int result = 0;
    
    while(N > 0){
        if (N % 5 == 0){
        N -= 5;
        result += 1;
        }
        else if (N % 3 == 0)
        {
        N -= 3;
        result += 1;
        
        }
        else if (N > 5){
        N -= 5;
        result += 1;
            
        }
        else
        {
            result = -1;
            break;
            
        }
    }
    
    cout << result << endl;
    
}