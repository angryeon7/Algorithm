#include <iostream>
#include <cstring>
using namespace std;

int main()
{
    char s[101];
    char k[101];
    char result[101];
    int n = 0;
    
	cin >> s;
	cin >> k;
    for(int i=0; i<strlen(s); i++){
       	if (s[i] < 48 || s[i] >57){ //숫자 범위를 제외한 아스키코드
			result[n] = s[i]; // 그문자를 저장
			n++;
			
        }
    }
    if (strstr(result,k) != NULL) cout<< "1"<<endl; 
	else cout<< "0"<<endl; 
}