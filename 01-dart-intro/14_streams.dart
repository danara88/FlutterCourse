void main() {
  // Si no hay nadie escuchando un stream, para que van a empezar a hablar.
  // Para comenzar un stream, alguien tiene que escucharlos.
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}