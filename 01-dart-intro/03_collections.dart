void main() {
  // List: Ordered collection of elements where the same element may occure several times.
  // They are mutable
  // [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10]
  //  final List<int> numbers
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original: $numbers');
  print('List length: ${numbers.length}');
  print('Index first: ${numbers[0]}');
  print('Index frist: ${numbers.first}');
  print('Index last: ${numbers.last}');

  final numbersGreaterThan5 = numbers.where((int x) {
    return x > 5;
  });

  print(">5: $numbersGreaterThan5");

  // Iterable: Is any object that can be looped over.
  // Both List and Set are Iterable.
  // You cannot instantiate it directly.
  // You can create a new Iterbale by creating a new List or Set.
  // It is an element that we can iterate
  // (10, 9, 9, 8, 7, 6, 5, 5, 5, 4, 3, 2, 1)
  final reversedNumbers = numbers.reversed;
  print('Reversed: ${numbers.reversed}');
  print('List: ${numbers.toList()}');

  // Set: An unorderes collection of unique elements.
  // The values inside a set are unique.
  // We will never have duplicate values inside a set
  // {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
  print('Set: ${numbers.toSet()}');

  // Delete duplicate values
  final finalList = numbers.toSet().toList();
  print(finalList);
}
