Mini-Max Sum

Given five positive integers, find the minimum and maximum values that can be calculated by summing
exactly four of the five integers. Then print the respective minimum and maximum values as a single line
of two space-separated long integers.
For example arr = [1, 3, 5, 7, 9], . Our minimum sum is 1 + 3 + 5 + 7 = 16 and our maximum sum is 3 + 5 + 7 + 9 = 24

We would print
16 24

// Function Description
Complete the miniMaxSum function in the editor below. It should print two space-separated integers on
one line: the minimum sum and the maximum sum of 4 of 5 elements.

miniMaxSum has the following parameter(s): arr: an array of 5 intergers

Input format
A single line of five space-separated intergrs

Output format
Print two space-separated long integers denoting the respective minimum and maximum values that can
be calculated by summing exactly four of the five integers. (The output can be greater than a 32 bit
integer.)
Simple input
1 2 3 4 5
Simple input
10 14


# testcase:
[1, 2, 3, 4, 5] => 10 14

[1, 3, 5, 7, 9] => 16 24

[5, 2, 1, 8, 4] => 12 19

[15, 27, 14, 38, 19] => 75 99

[9, 25, 13, 7, 11] => 40 58

[-2, -7, -1, -4, -5] => -18 -12

[3, 3, 3, 3, 3] => 12 12

[1000000000, 2000000000, 3000000000, 4000000000, 5000000000] => 10000000000 14000000000

[42] => Input invalid
