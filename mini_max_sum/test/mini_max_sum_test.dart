import 'package:mini_max_sum/mini_max_sum.dart';
import 'package:test/test.dart';

void main() {
  test('Test Case 1', () {
    expect(() => miniMaxSum([1, 2, 3, 4, 5]), prints('10 14\n'));
  });

  test('Test Case 2', () {
    expect(() => miniMaxSum([1, 3, 5, 7, 9]), prints('16 24\n'));
  });
  test('Test Case 3', () {
    expect(() => miniMaxSum([5, 2, 1, 8, 4]), prints('12 19\n'));
  });

  test('Test Case 4', () {
    expect(() => miniMaxSum([15, 27, 14, 38, 19]), prints('75 99\n'));
  });

  test('Test Case 5', () {
    expect(() => miniMaxSum([9, 25, 13, 7, 11]), prints('40 58\n'));
  });
  test('Test Case 6', () {
    expect(() => miniMaxSum([-2, -7, -1, -4, -5]), prints('-18 -12\n'));
  });
  test('Test Case 7', () {
    expect(() => miniMaxSum([3, 3, 3, 3, 3]), prints('12 12\n'));
  });
  test('Test Case 8', () {
    expect(() => miniMaxSum([1000000000, 2000000000, 3000000000, 4000000000, 5000000000]), prints('10000000000 14000000000\n'));
  });
  test('Test Case 9', () {
    expect(() => miniMaxSum([42]), prints('Input invalid\n'));
  });
}
