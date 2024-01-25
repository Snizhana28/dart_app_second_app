import 'func.dart';
import 'package:logger/logger.dart';

void main() {
  var logger = Logger();
  try {
    // Demonstration of a function for calculating the sum of numbers in a list
    var nums = [1, 2, 3, 4, 5];
    int resultSum = sum(nums: nums);
    print('Sum of numbers in the list $nums: $resultSum');

    // Demonstration of a function to check the parity of a number
    num number = 2;
    bool resultIsEven = isEven(nums: number);
    print('Number $number even: $resultIsEven');

    // Demonstration of a function for extracting unique items in a collection
    var numsUnique = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5];
    var resultUnique = unique(nums: numsUnique);
    print('Unique items in the list $numsUnique: $resultUnique');

    // Demonstration of a function for sorting a list of numbers in ascending order
    var numsSort = [5, 4, 3, 2, 1];
    var resultSort = sort(nums: numsSort);
    print('Sorted list $numsSort: $resultSort');

    // Demonstration of a function for calculating the factorial
    int numFactorial = 5;
    int resultFactorial = factorial(num: numFactorial);
    print('Factorial of a number $numFactorial: $resultFactorial');

    // Demonstration of a function for determining the number of vowels in a string
    String str = 'Hello World';
    int resultCountVowels = countVowels(str: str);
    print('Number of vowels in a string "$str": $resultCountVowels');
  } catch (e) {
    logger.e(e.toString());
  }
}
