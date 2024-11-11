// Mixins documentation: https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
// Los mixins sirven como un nivel de especializacion a nuestras clases para evitar extender o heredar
// de muchas cosas.

void main() {
  final pesVolador = PesVolador();
  final delfin = Delfin();
  
  pesVolador.volar();
  pesVolador.nadar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Volador {
  void volar() => print('estoy volando!');
}

mixin Caminante {
  void caminar() => print('estoy caminando!');
}

mixin Nadador {
  void nadar() => print('estoy nadando!');
}


class Delfin extends Mamifero with Nadador {}
class Murcielado extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Bird with Volador, Caminante {}
class Pato extends Bird with Volador, Caminante, Nadador {}
class Tiburon extends Fish with Nadador {}
class PesVolador extends Fish with Nadador, Volador {}
