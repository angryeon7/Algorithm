#include <iostream>
#include <cmath>
#include <string>

using namespace std;
int solution(int n)
{
    int answer = 0;
    int a,b,c;
    
    cin >> n;
    string str;
    str = to_string(n);
    int length = str.length();
    int last = length - 1;
    
    for(int i = 0; i < length; i++) {
        b = pow(10, i);
        a = (n / b) % 10;
        answer = a + answer;
    }
    
    return answer;
}