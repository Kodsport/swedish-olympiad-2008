#include <bits/stdc++.h>
using namespace std;

// Precompute how many blocks a pyramid of each height needs, then binary
// search. With 100 million blocks the pyramid surely can't get taller than 400.
const int MAXH = 400;

int main() {
  vector<long long> need(MAXH + 1);
  for (int h = 1; h <= MAXH; h++)
    need[h] = need[h - 1] + (long long)(2 * h - 1) * (2 * h - 1);

  long long N;
  cin >> N;
  int h = (int)(upper_bound(need.begin() + 1, need.end(), N) - need.begin()) - 1;
  cout << h << endl;
}
