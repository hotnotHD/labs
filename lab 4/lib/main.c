#include <stdio.h>
#include "main.h"

unsigned statistics(unsigned array[], unsigned size, int k);

int main() {
    int k = 4;
    unsigned array[] = {0, 6, 2, 8, 6};
    size_t size = sizeof(array) / sizeof(array[0]);
    for (int i = 0; i < size; i++) {
        printf("%u", array[i]);
    }
    printf("\n");
    statistics(array, size, k);
    for (int i = 0; i < size; i++) {
        printf("%u", array[i]);
    }
    printf("\n%u", statistics(array, size, k));

    return 0;
}
