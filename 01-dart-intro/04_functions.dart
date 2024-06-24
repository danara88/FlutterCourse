void main() {
  print(greetEveryone());
  print(addTwoNumbers(1, 2));
  print(addTwoNumbersOptional(1, 8));
}

// Normal function
String greetEveryone() {
  return 'Hello !';
}

// Lambda functions
String lambdaFunction() => 'Hello !';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLambdaFunc(int a, int b) => a + b;

// Optional parameters
int addTwoNumbersOptional(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??= 2;
  return a + b;
}
