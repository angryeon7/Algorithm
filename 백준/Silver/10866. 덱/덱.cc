#include <iostream>
#include <deque>

using namespace std;

int main()
{
    deque<int> deque_int;

    int n;
    cin >> n;
    
    string order;
    int order_num;
    
    for(int i=0;i<n;i++) {
        cin >> order;
        
        if (order == "push_front") {
            cin >> order_num;
            deque_int.push_front(order_num);
        } else if (order == "push_back") {
            cin >> order_num;
            deque_int.push_back(order_num);
        } else if (order == "size") {
            cout << deque_int.size() << endl;
        } else if (order == "empty") {
            cout << deque_int.empty() << endl;
        } else if (deque_int.empty()) {
            cout << -1 << endl;
        } else if (order == "pop_front") {
            cout << deque_int.front() << endl;
            deque_int.pop_front();
        } else if (order == "pop_back") {
            cout << deque_int.back() << endl;
            deque_int.pop_back();
        } else if (order == "front") {
            cout << deque_int.front() << endl;
        } else if (order == "back") {
            cout << deque_int.back() << endl;
        }
    }
    
    return 0;
}