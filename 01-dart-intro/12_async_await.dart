void main() async {
  print('Inicio del programa');
  
  /*
  httpGet('http://www.api.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error!');
  }); */
  
  try {
    final result = await httpGet('http://www.api.com');
    print(result);
  } catch (err) {
    print('Tenemos un error $err');
  }

  print('Fin del programa');
}

/*
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}
*/

Future<String> httpGet(String url) async {
  // El await transforma un codigo asincrono, en uno sincrono y secuencial.
  await Future.delayed(const Duration(seconds: 1));
  
  return 'Tenemos un valor de la peticion.';
}