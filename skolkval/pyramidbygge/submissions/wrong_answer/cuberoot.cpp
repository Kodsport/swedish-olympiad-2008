#include <bits/stdc++.h>
using namespace std;

// A pyramid of height h uses 1 + 9 + 25 + ... = h*(4*h*h - 1)/3 blocks,
// which is about 4*h^3/3. Solving for h gives h = cbrt(3*N/4).
int main() {
  int N;
  cin >> N;
  int h = (int)cbrt(0.75 * N);
  cout << h << endl;
}
