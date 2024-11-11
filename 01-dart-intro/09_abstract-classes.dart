// Clases abstractas
// Son moldes que me van a ayudar a construir otros moldes.
// No se pueden instanciar.

// La implementacion nos ayuda a implementar el principio de inversion de dependencias.
// Este principio nos ayudara a implementar el patron de diseño de Inyeccion de Dependencias.

main() {
  final windPlant = WindPlant(initialEnergy: 10);  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print(windPlant.type);
  print(nuclearPlant.type);
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
}


// Extends: Extender o heredar de otra clase.
class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
     : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Implements: Podemos implementar clases abstractas o interfaces
// La implementacion nos obliga explicitamente a colocar cada uno de sus propiedades y metodos.
class NuclearPlant implements EnergyPlant {
  double energyLeft;
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required double this.energyLeft});
  
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

// La implementación y la extensión tienen casi el mismo objetivo. Pero, hay casos
// donde no queremos extender absolutamente toda la clase y solo queremos usar ciertos metodos.
// La implementación nos ayuda en esto para evitar extender de toda la clase y solo usar ciertas propiedades
// o métodos.
// La implementación es mas específico, y la extensión es mas general.
