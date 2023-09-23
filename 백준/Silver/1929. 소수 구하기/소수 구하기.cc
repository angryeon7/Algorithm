#include <iostream>
#include <cmath>
using namespace std;

int main() {
	int M, N;
	cin >> M >> N;

	int max;
	for (int i = M; i <= N; i++) {
		int flag = 0;
		max = sqrt(i);
		if (max == 1 && i != 1) cout << i << '\n';
		else {
			for (int j = 2; j <= max; j++) {
				if (i % j == 0) break;
				if (j==max) cout << i << '\n';
			}
		}

	}

	return 0;
}