#include "validator.h"

void run() {
	int n = Int(2, 100);
	Space();
	int k = Int(1, n - 1);
	Endl();
	assert(n % 2 == 0);
}
