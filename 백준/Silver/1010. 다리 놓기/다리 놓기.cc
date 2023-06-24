#include <iostream>

using namespace std;

int main()
{
	int test, N, M;
	long long output = 1;
	cin >> test;
	while (test--) {
		output = 1;
		cin >> N >> M;
		if (N > (M / 2)) N = M - N;
		for (int j = M; j > M-N; j--) output *= j;
		for (int j = N; j > 0; j--) output /= j;
		cout << output<<"\n";
	}
}