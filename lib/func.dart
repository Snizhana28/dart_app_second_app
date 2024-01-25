int sum({List<int>? nums}) {
  if (nums == null) {
    throw Exception('nums is null');
  }
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  return sum;
}

bool isEven({num? nums}) {
  if (nums == null) {
    throw Exception('number is null');
  }
  return nums % 2 == 0;
}

List<int> unique({List<int>? nums}) {
  if (nums == null) {
    throw Exception('nums is null');
  }
  var unique = <int>[];
  for (var i = 0; i < nums.length; i++) {
    if (!unique.contains(nums[i])) {
      unique.add(nums[i]);
    }
  }
  return unique;
}

List<int> sort({List<int>? nums}) {
  if (nums == null) {
    throw Exception('nums is null');
  }
  var sortedList = List<int>.from(nums);
  sortedList.sort();
  return sortedList;
}

int factorial({int? num}) {
  if (num == null) {
    throw Exception('num is null');
  } else if (num < 0) {
    throw Exception('nums is negative');
  }
  int result = 1;
  for (int i = 1; i <= num; i++) {
    result *= i;
  }
  return result;
}

int countVowels({String? str}) {
  if (str == null) {
    throw Exception('str is null');
  }
  var vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  var count = 0;
  for (var i = 0; i < str.length; i++) {
    if (vowels.contains(str[i])) {
      count++;
    }
  }
  return count;
}
