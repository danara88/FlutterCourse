void main() {
  print(greetEveryone());
  
  print(addTwoNumbers(1, 2));
  
  print(addTwoNumbersOptional(1, 8));
  
  print(greetPerson(name: 'Daniel', message: 'Como estas? '));
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
int addTwoNumbersOptional(int a, [int b = 0, int c = 10]) {
  // b = b ?? 0;
  // b ??= 2;
  return a + b + c;
}

// Los convierte en opcionales y con nombre.
// Al poner las {} convertimos los parametros en opcionales.
// Ejemplo: greetPerson(name: 'Daniel', message: 'Como estas? ')
String greetPerson({ required String name, String message = 'Hello' }) {
  return '$message, $name';
}