#include <stdio.h>

void counter() {
    static int c = 0;
    c++;
    printf("Counter = %d\n", c);
}

int main() {
    counter();
    counter();
    counter();
    return 0;
}
