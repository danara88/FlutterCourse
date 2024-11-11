void main() {
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

// async* Un metodo que regresa un stream.
Stream<int> emitNumber() async* {
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Ten este valor ahora, despues ten el otro, ...
  }
}