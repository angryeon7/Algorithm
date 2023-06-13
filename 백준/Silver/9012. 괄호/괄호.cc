#include <iostream>
#include <cstring>
#include <string>

using namespace std;

int main()
{
    int num;

    string ps = "";
    
    cin >> num;
    
    for(int i = 0; i < num;i++){
        cin >> ps;
        int c=0;
        for(int k = 0; k < ps.size();k++){
            if(ps[k] == '('){
                c++;
            }else if(ps[k] == ')'){
                c--;
            }
            
            if(c<0){
                break;
            }
        }
        
        if(c == 0){
            cout<< "YES"<<endl;
        } else{
            cout << "NO" << endl;
        }
        
    }
    
}