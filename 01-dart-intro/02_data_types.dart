void main() {
  // DATA TYPES

  // String
  print('----- String -----');
  final String pokemon = 'Ditto';
  print('This is a string: $pokemon');

  // Interger
  print('----- Integer -----');
  final int hp = 100;
  print('This is a integer: $hp');

  // Boolean
  print('----- Boolean -----');
  final bool isAlive = true;
  print('This is a boolean: $isAlive');

  // List
  print('----- List -----');
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/fron.png'];
  print('This is a list: $abilities');

  // dynamic
  // It can be any type of dataType.
  // The default value for dynamic is null.
  // Be carefull when to use it.
  print('----- dynamic -----');
  dynamic errorMessage = 'Error message.';
  errorMessage = true;
  errorMessage = [1,2,3,4];
  print('This is a dynamic data type: $errorMessage');

  // Maps
  // key-value pairs
  // Object: It means that it could be anything <String, Object>
  print('----- Map -----');
  final Map<String, dynamic> myMapPokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'sprited': {
      1: 'dito/front.png',
      2: 'ditto/back.png'
    }
  };
  final pokemons = {
    1: 'ABC',
    2: 'XYZ'
  };

  print('Name from map: ${ myMapPokemon['name'] }');
  print('Getting value from map int: ${ pokemons[1] }');

  print('Back: ${ myMapPokemon['sprited'][2] }');
  print('Front: ${ myMapPokemon['sprited'][1] }');
}
