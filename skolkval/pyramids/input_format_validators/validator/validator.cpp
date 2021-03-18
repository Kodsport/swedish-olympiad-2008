#include "validator.h"

void run() {
    bool noleftover = Arg("noleftover");
    int h = Int(1, 100000000); Endl();
    Eof();
    
    if (noleftover) {
        for (int d = 1; h > 0; d += 2) {
            h -= d * d;
        }
        assert(h == 0);
    }
}
