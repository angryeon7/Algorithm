#include <iostream>
#include <stdio.h>
#include <algorithm>
using namespace std;

int main()
{
    ios::sync_with_stdio(0);
	cin.tie(0);
	
	
    int N;
    cin >> N;
    int number[N];

   
    for(int i = 0; i < N; i++){
        cin >>number[i];
    }
    sort(number, number+N);
    
    int M;
    cin >> M;
    int card[M];
    int output[M] = {0,};
     
    // for(int i = 0; i < M; i++){
        
    // }
    
    for(int i = 0; i < M; i++){
        cin >> card[i];
        int start = 0;
        int end = N - 1;
        
        while(start <= end){
            int mid = (start + end) / 2;
            if (number[mid] == card[i]) {
                output[i] = 1;
                break;
                
            }
		    else if(number[mid] > card[i]) {
		        end = mid - 1;
		    }else {
		        start = mid + 1;
		    }
        }
        
    }
    
  
    // for(int i = 0; i < M; i++){
    //     cin >> card[i];
    //     for(int k = 0; k < N; k++){
    //         if(card[i] == number[k]){
    //             output[i] = 1;
    //             break;
    //         }
    //         else {
    //             output[i] = 0;
    //         }
    //     }
    // }
    // 해당 풀이는 시간초과 발생 - 이분탐색으로 재시도
    
    for (int i = 0; i < M; i++){
        // printf("%2d ",output[i]);
        cout<<output[i]<< " ";
    }
    
    
    
}