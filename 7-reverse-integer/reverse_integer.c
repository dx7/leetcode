#include <stdio.h>
#include <math.h>

int reverse(int x) {
    int upper_limit = (pow(2, 31) - 1) / 10;
    int lower_limit = -(pow(2, 31) / 10);
    int ans = 0;

    while (x) {
        if (ans < lower_limit || ans > upper_limit) {
            return 0;
        }

        ans = ans * 10 + x % 10;
        x /= 10;
    }

    return ans;
}
