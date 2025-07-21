import 'dart:math';

class ArregloNotas {
  List<int> _notas = [11, 10, 16, 18, 15, 13, 20, 12, 19, 17];

  ArregloNotas();

  List<int> get notas => List.unmodifiable(_notas);

  int tamanio() {
    return notas.length;
  }

  int obtener(int index) {
    if (index >= 0 && index <= notas.length) {
      return notas[index];
    } else
      throw ArgumentError(
        "El índice debe ser mayor o igual a 0 y menor a la longitud del arreglo.",
      );
  }

  double notaPromedio() {
    if (_notas.isEmpty) return 0.0;

    int acumulaNotas = 0;

    for (int nota in notas) {
      acumulaNotas += nota;
    }

    return acumulaNotas / tamanio();
  }

  int notaMayor() {
    if (_notas.isEmpty) return 0;
    int notaMayor = notas.first;

    for (int nota in notas) {
      if (nota > notaMayor) notaMayor = nota;
    }

    return notaMayor;
  }

  int notaMenor() {
    if (_notas.isEmpty) return 0;

    int notaMenor = notas.first;

    for (int nota in notas) {
      if (notaMenor < nota) notaMenor = nota;
    }

    return notaMenor;
  }

  int cantNotasAprobatorias() {
    if (_notas.isEmpty) return 0;

    int contadorAlumnos = 0;

    for (int nota in notas) {
      if (nota >= 13) contadorAlumnos++;
    }

    return contadorAlumnos;
  }

  int cantNotasDesaprobatorias() {
    if (_notas.isEmpty) return 0;

    int contadorAlumnos = 0;

    for (int nota in notas) {
      if (nota < 13) contadorAlumnos++;
    }

    return contadorAlumnos;
  }

  int cantNotasMayoresA15() {
    if (_notas.isEmpty) return 0;

    int contadorAlumnos = 0;

    for (int nota in notas) {
      if (nota > 15) contadorAlumnos++;
    }

    return contadorAlumnos;
  }

  int posPrimeraNotaAprobatoria() {
    if (notas.isEmpty) return 0;

    return notas.indexWhere((nota) => nota >= 13);
  }

  int posPenultimaNotaDesaprobatoria() {
    List<int> indicesDesaprobatorias = [];

    for (int i = 0; i < _notas.length; i++) {
      if (_notas[i] < 13) {
        indicesDesaprobatorias.add(
          i,
        );
      }
    }

    if (indicesDesaprobatorias.length >= 2) {
      return indicesDesaprobatorias[indicesDesaprobatorias.length - 2];
    } else {
      return -1;
    }
  }

  void generarNotas() {
    final random = Random();
    List<int> nuevasNotas = [];
    int cantidadNotas = _notas.length;

    for (int i = 0; i < cantidadNotas; i++) {
      nuevasNotas.add(random.nextInt(21));
    }
    _notas = nuevasNotas;
    print("\n-- Nuevas notas generadas aleatoriamente --");
  }
}
