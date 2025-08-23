"""
If we list all the natural numbers below 10 that are multiples of 3 or 5. we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below N.
Input Format
First line contains T that denotes the number of test cases. This is followed by T lines, each containing an integer. N.
Constraints
1 <= T <= 10 ^ 5
1 <= N <= 10 ^ 9
Output Format
For each test case, print an integer that denotes the sum of all the multiples of 3 or 5 below N
Sample Input 0

2
10
100
Sample Output 0
23
2318
"""
#The code
#include <stdio.h>


long long sum_of_multiples_of(long long n, long long k) {
    long long count = (n - 1) / k;
    return k * (count * (count + 1)) / 2;
}

int main() {
    int t;
    // Read the number of test cases
    scanf("%d", &t);

    // Loop through each test case
    while (t--) {
        long long n;
        // Read the input number for the current test case
        scanf("%lld", &n);
        
        // Calculate the sum using the principle of inclusion-exclusion
        long long sum_3 = sum_of_multiples_of(n, 3);
        long long sum_5 = sum_of_multiples_of(n, 5);
        long long sum_15 = sum_of_multiples_of(n, 15);
        
        long long final_sum = sum_3 + sum_5 - sum_15;
        
        // Print the result for the current test case
        printf("%lld\n", final_sum);
    }
    
    return 0;
}
