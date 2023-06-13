#include <iostream>
#include <cstring>
#include <string>

using namespace std;

int main()
{
    int num = 0;
    int card[101] = {};;
    int max = 0;
    int goal = 0;
    
    cin >> num >> goal;
    
    for(int i = 0; i < num; i++){
        cin >> card[i];
    }
    
    for(int i = 0; i < num-2;i++){
        for(int j=i+1;j < num-1; j++ ){
            for(int k=j+1; k < num;k++){
                int sum = card[i] + card[j] + card[k];
                if(sum<=goal && sum>max){
                    max = sum;
                }
            }
        }
    }
    cout << max;
}