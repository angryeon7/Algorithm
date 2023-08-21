#include <iostream>
#include <stdio.h>
#include <algorithm>
using namespace std;

bool desc(int a, int b){ 
  return a > b; 
} 

int main()
{
    int N;
    int tip[100001];
    long long sum = 0;
    long long result = 0;
    
    cin >> N;
    
    for(int i = 0; i < N; i++){
        cin >> tip[i];
    }
    
    sort(tip, tip+N, desc); 
    
    for(int i = 0; i < N; i++){
       
        result = tip[i] - i;
        if (result > 0){
            sum = sum + result;
        }
        else{
            sum = sum;
        }
    }
    cout << sum;
}