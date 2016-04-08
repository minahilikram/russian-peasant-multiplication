#include <stdio.h>
#include <stdlib.h>

long long unsigned int recursive(long long unsigned int multiplier, long long unsigned int multiplicand) {
    
    long long unsigned int answer = 0;
    
    if (multiplier == 0)
        answer = 0;
    else if (multiplier == 1)
        answer = multiplicand;
    else if ((multiplier > 1) && ((multiplier % 2) == 0))
        answer = recursive((multiplier/2), (multiplicand*2));
    else if ((multiplier > 1) && ((multiplier % 2) == 1))
        answer = (multiplicand + (recursive((multiplier/2), (multiplicand*2))));
        
    return answer;
}

long long unsigned int iterative(long long unsigned int multiplier, long long unsigned int multiplicand) {
    
    long long unsigned int answer = 0;
    
    while (multiplier > 0) {
        if ((multiplier % 2) == 1)
            answer = (multiplicand + answer);

        multiplier = multiplier/2;
        multiplicand = multiplicand*2;
    }
       
    return answer;
}

int main() {
    
    long long unsigned int multiplier, multiplicand;
    
    printf("multiplier? \n");
    scanf("%llu", &multiplier);

    printf("multiplicand? \n");
    scanf("%llu", &multiplicand);
    
    printf("%llu \n", recursive(multiplier, multiplicand));
    printf("%llu \n", iterative(multiplier, multiplicand));
    
    return 0;
}
