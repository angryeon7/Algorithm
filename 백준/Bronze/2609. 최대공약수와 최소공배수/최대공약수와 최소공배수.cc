#include <iostream>

using namespace std;

int GCD(int a, int b)
{
    if (b == 0)
        return a;
    else
        return GCD(b, a%b);
}

int main()
{
    int a, b;
    cin >> a >> b;

    int gcd = GCD(a, b); // 최대공약수 
    int lcm = a*b/gcd;      // 최소공배수
    
    cout << gcd << endl;
    cout << lcm << endl;
}