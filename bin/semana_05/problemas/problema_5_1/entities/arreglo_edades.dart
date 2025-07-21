import 'dart:math';

class ArregloEdades {
  List<int> _edades = [27, 22, 13, 12, 25, 11, 29, 70, 15, 21];

  ArregloEdades();

  List<int> get edades => _edades;

  int obtenerTamanio() {
    return _edades.length;
  }

  int obtenerEdadPorIndice(int indice) {
    return _edades[indice];
  }

  double obtenerEdadPromedio() {
    double acumulaEdad = 0;
    for (int edad in _edades) {
      acumulaEdad += edad;
    }
    return acumulaEdad / obtenerTamanio();
  }

  int obtenerEdadMayor() {
    int edadMayor = _edades.first;
    for (int i = 1; i < _edades.length; i++) {
      if (edadMayor < _edades[i]) {
        edadMayor = _edades[i];
      }
    }
    return edadMayor;
  }

  int obtenerEdadMenor() {
    int edadMenor = _edades.first;
    for (int i = 1; i < _edades.length; i++) {
      if (edadMenor > _edades[i]) {
        edadMenor = _edades[i];
      }
    }
    return edadMenor;
  }

  int obtenerCantidadMayoresDeEdad() {
    List<int> mayoresDeEdad = [];
    for (int edad in _edades) {
      if (edad >= 18) {
        mayoresDeEdad.add(edad);
      }
    }
    return mayoresDeEdad.length;
  }

  int obtenerCantidadMenoresDeEdad() {
    return _edades.length - obtenerCantidadMayoresDeEdad();
  }

  int obtenerPosPrimerEdadAdolescente() {
    return _edades.indexWhere((edad) => edad >= 12 && edad <= 20);
  }

  int obtenerUltimaEdadAdolescente() {
    return _edades.lastIndexWhere((edad) => edad >= 12 && edad <= 20);
  }

  int _aleatorio(int min, int max) {
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }

  void generarEdades() {
    List<int> nuevasEdades = [];
    int tamanio = obtenerTamanio();

    for (int i = 0; i < tamanio; i++) {
      nuevasEdades.add(_aleatorio(10, 90));
    }
    _edades = nuevasEdades;
  }
}
