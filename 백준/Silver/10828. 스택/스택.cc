#include <iostream>
#include <cstring>
#include <string>
#include <list>
#include <sstream>

using namespace std;

int main()
{
    list<int> list;
    int count;
    cin >> count;
    string order;
    
    for(int i = 0; i <= count; i++){
        getline(cin,order);
        if (order.find("push") != string::npos) {
            string a;
            int b;
            stringstream order2(order);
            order2 >> a >> b;
			list.push_back(b);
            
        }else if(order == "pop"){
            if(list.empty()){
                cout<<-1<< "\n";
            }else{
                cout<<list.back()<< "\n";
                list.pop_back();
            }
            
            
        }else if(order == "size"){
            cout<<list.size()<< "\n";
            
        }else if(order == "empty"){
              if(list.empty()){
                cout<<1<< "\n";
            }else{
                cout<<0<< "\n";
                
            }
        }else if(order == "top"){
               if(list.empty()){
                cout<<-1<< "\n";
            }else{
                cout<<list.back()<< "\n";
            }
        }
        
    }
}