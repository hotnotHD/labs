# 1 "statistics.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "statistics.c"
# 1 "main.h" 1
# 9 "main.h"
unsigned statistics(unsigned array[], unsigned size, int k);
# 2 "statistics.c" 2

unsigned statistics(unsigned array[], unsigned size, int k){
    unsigned temp;
    for(int i = 0; i < size - 1; i++){
        for(int j = 0; j < size - 1; j++){
            if (array[j] > array[i+1]){
                temp = array[j];
                array[j] = array[j + 1];
                array[j+1] = temp;
            }
        }
    }
    return array[k];
}
