#include <iostream>
#include <string>
using namespace std;

int main()
{
    int two;
    int five;
    int n;
    int sum;
    
    cin >> n;
    if(n == 1||n==3){
        sum = -1;
    }else if((n%5)%2!=0){
        five = (n/5) -1;
        two = ((n%5)+5)/2;
        sum = five + two;
    }else {
        five = n/5;
        two = (n%5)/2;
        sum = five + two;
    }
    
    cout << sum << endl;

}