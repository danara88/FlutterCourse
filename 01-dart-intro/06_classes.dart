void main() {
  final Hero wolverine = Hero(name: 'Wolverine', power: 'Regeneracion');
  
  print(wolverine.toString());
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}


class Hero  {
  String name;
  String power;
  
  // Forma 1 de inicializar:
  // Mandando atributos de manera posicional
  // Hero(this.name, this.power);
  
  // Forma 2 de inicializar:
  // Mandando atributos por nombre
  Hero({
    required this.name,
    this.power = 'Sin poder'
  });
  
  // Forma 3 de inicializar:
  // Inicializacion controlada
  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
  
  @override
  String toString() {
    return '$name - $power';
  }
}