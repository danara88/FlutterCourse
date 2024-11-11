void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');
  
  final ironman = Hero.fromJson(rawJson);

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> jsonValue)
      : name = jsonValue['name'] ?? 'No name found',
        power = jsonValue['power'] ?? 'No power found',
        isAlive = jsonValue['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, IsAlive: ${isAlive ? 'YES!' : 'NO'}';
  }
}
