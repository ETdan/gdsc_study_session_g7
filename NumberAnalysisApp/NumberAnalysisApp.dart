void main() {
  List<int> numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  print(findMaximum(numbers));
  print(findMinimum(numbers));
  print(calculateSum(numbers));
  print(calculateAverage(numbers));
}

int findMaximum(List<int> numbers) {
  int max = 0;
  for (int number in numbers) {
    if (number > max) max = number;
  }

  return max;
}

int findMinimum(List<int> numbers) {
  int min = 0;
  for (int number in numbers) {
    if (number < min) min = number;
  }

  return min;
}

int calculateSum(List<int> numbers) {
  int max = 0;
  for (int number in numbers) {
    max += number;
  }

  return max;
}

double calculateAverage(List<int> numbers) {
  int max = 0;
  for (int number in numbers) {
    max += number;
  }

  return max / numbers.length;
}
