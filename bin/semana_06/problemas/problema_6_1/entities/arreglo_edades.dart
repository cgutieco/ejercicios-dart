class ArregloEdades {
  List<int> _edad;
  int _indice;

  ArregloEdades() : _edad = List.filled(10, 0), _indice = 0;

  int tamano() {
    return _indice;
  }

  int obtener(int posicion) {
    if (posicion >= 0 && posicion < _indice) {
      return _edad[posicion];
    } else {
      throw ArgumentError("Posición fuera de rango");
    }
  }

  void _ampliarArreglo() {
    List<int> nuevoArreglo = List.filled(_edad.length + 10, 0);
    for (int i = 0; i < _edad.length; i++) {
      nuevoArreglo[i] = _edad[i];
    }
    _edad = nuevoArreglo;
  }

  void adicionar(int edad) {
    if (_indice == _edad.length) {
      _ampliarArreglo();
    }
    _edad[_indice] = edad;
    _indice++;
  }

  void eliminarAlFinal() {
    if (_indice > 0) {
      _indice--;
    }
  }

  void eliminarTodo() {
    _indice = 0;
  }

  int edadMayor() {
    if (_indice == 0) {
      throw StateError("El arreglo está vacío");
    }
    int mayor = _edad[0];
    for (int i = 1; i < _indice; i++) {
      if (_edad[i] > mayor) {
        mayor = _edad[i];
      }
    }
    return mayor;
  }

  int posPrimeraEdadAdulta() {
    for (int i = 0; i < _indice; i++) {
      if (_edad[i] >= 20 && _edad[i] <= 59) {
        return i;
      }
    }
    return -1;
  }

  void incrementarPrimeraEdadAdulta() {
    int pos = posPrimeraEdadAdulta();
    if (pos != -1) {
      _edad[pos] += 5;
    }
  }

  void remplazarPrimeraEdadAdulta() {
    int pos = posPrimeraEdadAdulta();
    if (pos != -1) {
      try {
        _edad[pos] = edadMayor();
      } on StateError {}
    }
  }
}
