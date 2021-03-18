#include <bits/stdc++.h>
using namespace std;
int main() {
  int N;
  cin >> N;
  for (int d = 1;;++d) {
      N -= (2*d-1) * (2*d-1);
      if (N < 0) {
          cout << d - 1 << endl;
          break;
      }
  }
}
