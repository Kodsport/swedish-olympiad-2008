#include <bits/stdc++.h>
using namespace std;

int main() {
  int N;
  cin >> N;
  int sum = 0, i;
  for (i = 1;; i++) {
    sum += (2 * i - 1) * (2 * i - 1);
    if (sum >= N) break;
  }
  cout << i - 1 << endl;
}
