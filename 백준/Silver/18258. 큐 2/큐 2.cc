#include <iostream>
#include <stdio.h>
#include <list>
using namespace std;

int main()
{
    
    ios::sync_with_stdio(0);
	cin.tie(0);
	
    int N;
    cin >> N;
    list<int> q;
    
    for(int i = 0; i < N; i++){
        string order;
        cin >> order;
        if(order == "push"){
            int num;
            cin >> num;
            q.push_back(num);
        } else if(order == "pop"){
            if(q.size()!= 0){
                cout << q.front() <<"\n";
                q.pop_front();
                
            }
            else{
                cout << -1 << "\n";
            }
            
        }else if(order == "size"){
            cout << q.size()<<"\n";
            
        }else if(order == "empty"){
            if(q.size()!= 0){
                cout << 0 <<"\n";
                
            }
            else{
                cout << 1 << "\n";
            }
            
        }else if(order == "front"){
            if(q.size()!= 0){
                cout << q.front() <<"\n";
                
            }
            else{
                cout << -1 << "\n";
            }
            
        }else if(order == "back"){
            if(q.size()!= 0){
            cout << q.back() <<"\n";
                
            }
            else{
                cout << -1 << "\n";
            }
        }
    }
    
}