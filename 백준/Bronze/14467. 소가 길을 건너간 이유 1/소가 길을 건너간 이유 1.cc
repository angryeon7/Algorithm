#include <iostream>
#include <string>
using namespace std;

int main()
{
    
    int n;
    int count=0;
    int input1, input2 = 0;
    
    int result[101][2];
    cin >> n;
    
    for(int i =0;i< n;i++){
        cin >> input1 >> input2;
        result[i][0] = input1;
        result[i][1] = input2;
        
        // if(result[i][0] == result[i+1][0]){
        //     if(result[i][1]!=result[i+1][1]){
        //         count++;
        //     }
        // }
    }
    
    for(int i = 0; i < n; i++){
        for(int k = i+1; k < n; k++){
            if(result[i][0] == result[k][0]){
                if(result[i][1]!=result[k][1]){
                count++;
                break;
                }
            break;
            }
        }
      
    }
     
    
    cout << count << endl;
    
}