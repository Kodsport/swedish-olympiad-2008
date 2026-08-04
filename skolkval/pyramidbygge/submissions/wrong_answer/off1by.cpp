#include <bits/stdc++.h>
using namespace std;

int main() {
  int N;
  cin >> N;
  int h = 0, sum = 0;
  for (int i = 1; sum <= N; i++) {
    sum += (2 * i - 1) * (2 * i - 1);
    h = i;
  }
  cout << h << endl;
}
