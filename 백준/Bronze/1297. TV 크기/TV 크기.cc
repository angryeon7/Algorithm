#include <iostream>
#include <stdio.h>
#include <cmath>
using namespace std;

int main()
{
    int w;
    int h;
    int d;
    
    cin >> d >> h >> w;
    
     cout << (int)(d/sqrt(h*h+w*w)*h) << " " <<(int)(d/sqrt(h*h+w*w)*w)<<"\n";

    
    
    
}