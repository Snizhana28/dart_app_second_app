import 'package:test/test.dart';
import 'package:dart_app_second_app/func.dart';

void main() {
  group('Test the summation function', () {
    test('Empty List', () {
      var nums = <int>[];
      var result = sum(nums: nums);
      expect(result, 0);
    });
    test('Sum of elements', () {
      var nums = [1, 2, 3, 4, 5];
      var result = sum(nums: nums);
      expect(result, 15);
    });
    test('Negative numbers', () {
      var nums = [-1, -2, -3, -4, -5];
      var result = sum(nums: nums);
      expect(result, -15);
    });
    test('Null List', () {
      List<int>? nums;
      expect(() => sum(nums: nums), throwsException);
    });
  });
  group('IsEven Function Tests', () {
    test('Even number', () {
      var nums = 2;
      var result = isEven(nums: nums);
      expect(result, true);
    });
    test('Odd number', () {
      var nums = 3;
      var result = isEven(nums: nums);
      expect(result, false);
    });
    test('Zero', () {
      var nums = 0;
      var result = isEven(nums: nums);
      expect(result, true);
    });
    test('Null', () {
      num? nums;
      expect(() => isEven(nums: nums), throwsException);
    });
  });
  group('Factorial Function Tests', () {
    test('Input 0', () {
      int num = 0;
      int expected = 1;
      int result = factorial(num: num);
      expect(result, equals(expected));
    });
    test('Input 1', () {
      int num = 1;
      int expected = 1;
      int result = factorial(num: num);
      expect(result, equals(expected));
    });
    test('Input positive integer', () {
      int num = 5;
      int expected = 120;
      int result = factorial(num: num);
      expect(result, equals(expected));
    });
    test('Factorial of 10', () {
      var num = 10;
      var result = factorial(num: num);
      expect(result, 3628800);
    });
    test('Null', () {
      int? num;
      expect(() => factorial(num: num), throwsException);
    });
    test('Negative number', () {
      int num = -1;
      expect(() => factorial(num: num), throwsException);
    });
    test('Double', () {
      double num = 1.0;
      var result = factorial(num: num.toInt());
      expect(result, isNull);
    });
    group('Count Vowels Function Tests', () {
      test('Empty string', () {
        String str = '';
        int result = countVowels(str: str);
        expect(result, 0);
      });
      test('String with only vowels', () {
        String str = 'aeiouAEIOU';
        int result = countVowels(str: str);
        expect(result, 10);
      });
      test('String with only consonants', () {
        String str = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';
        int result = countVowels(str: str);
        expect(result, 0);
      });
      test('String with only whitespace', () {
        String str = '     ';
        int result = countVowels(str: str);
        expect(result, 0);
      });
      test('String with only numbers and characters', () {
        String str = '!@#%^&*1234567890';
        int result = countVowels(str: str);
        expect(result, 0);
      });
      test('Null', () {
        String? str;
        expect(() => countVowels(str: str), throwsException);
      });
    });
  });
}
