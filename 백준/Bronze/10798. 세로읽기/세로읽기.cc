#include <iostream>
#include <string>
using namespace std;

int main()
{
    char word[5][15] = {};
    
    for(int i = 0; i<5;i++){
        cin>>word[i];
    }
    
    for(int i = 0; i<15;i++){
        for(int j = 0; j<5;j++){
             if (word[j][i] !=NULL) 
                 cout << word[j][i];
        }
       
    }
    cout << endl;
}