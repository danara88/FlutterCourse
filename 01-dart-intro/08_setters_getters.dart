void main() {
  final mySquare = Square(side: -5);
  
  print('Area: ${mySquare.area}');
}

class Square {
  double _side; // Propiedad privada
  
  // Primero colocar las aserciones y luego las asignaciones.
  Square({required double side}) 
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;

  double get area => _side * _side; // Getter

  set side(double value) {
    print('Setting new value, $value');
    if (value < 0) throw 'Value most be > 0';

    _side = value;
  }
}
