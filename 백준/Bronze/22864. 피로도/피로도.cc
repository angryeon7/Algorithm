#include<iostream>
#include<string>
using namespace std;

int main() {
	int a, b, c, d;
	cin >> a >> b >> c >> d;

	int time = 24;
	int answer = 0;
	int tired = 0;
	while (time--) {
		if (a + tired <= d) {
			answer += b;
			tired += a;
		}
		else {
			tired -= c;
			if (tired < 0)tired = 0;
		}
	}
	cout << answer;
}