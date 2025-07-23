class ArregloTemperaturas {
  List<double> _temperaturas;
  int _indice;

  ArregloTemperaturas() : _temperaturas = List.filled(10, 0.0), _indice = 0;

  int tamanio() {
    return _indice;
  }

  double obtener(int index) {
    if (_indice == 0) {
      throw StateError("No hay temperaturas registradas");
    }

    if (index >= 0 && index < _indice) {
      return _temperaturas[index];
    } else {
      throw ArgumentError("Índice fuera de rango: $index. Rango válido: 0-${_indice - 1}");
    }
  }

  void _ampliarArreglo() {
    List<double> arregloAmpliado = List.filled(_temperaturas.length + 10, 0.0);
    
    for (int i = 0; i < _temperaturas.length; i++) {
      arregloAmpliado[i] = _temperaturas[i];
    }
    
    _temperaturas = arregloAmpliado;
  }

  void adicionar(double temperatura) {
    if (_indice == _temperaturas.length) {
      _ampliarArreglo();
    }

    _temperaturas[_indice] = temperatura;
    _indice++;
  }

  void eliminarAlFinal() {
    if (_indice > 0) {
      _indice--;
    } else {
      throw StateError("No hay elementos para eliminar");
    }
  }

  void eliminarTodo() {
    _indice = 0;
  }

  double temperaturaMenor() {
    if (_indice == 0) {
      throw StateError("No hay temperaturas registradas");
    }
    
    double temperaturaMasBaja = _temperaturas[0];
    
    for (int i = 1; i < _indice; i++) {
      if (_temperaturas[i] < temperaturaMasBaja) {
        temperaturaMasBaja = _temperaturas[i];
      }
    }
    
    return temperaturaMasBaja;
  }

  int posPrimeraTemperaturaNormal() {
    for (int i = 0; i < _indice; i++) {
      if (_temperaturas[i] >= 36.1 && _temperaturas[i] <= 37.2) {
        return i;
      }
    }
    return -1;
  }

  void remplazarPrimeraTemperaturaNormal() {
    if (_indice == 0) {
      throw StateError("No hay temperaturas registradas");
    }
    
    int pos = posPrimeraTemperaturaNormal();
    if (pos != -1) {
      _temperaturas[pos] = temperaturaMenor();
    } else {
      throw StateError("No se encontró temperatura normal en el rango 36.1°C - 37.2°C");
    }
  }

  void incrementarTemperaturas() {
    for (int i = 0; i < _indice; i++) {
      _temperaturas[i] += 0.2;
    }
  }

  @override
  String toString() {
    if (_indice == 0) return "ArregloTemperaturas: vacío";
    
    StringBuffer sb = StringBuffer("ArregloTemperaturas [");
    for (int i = 0; i < _indice; i++) {
      sb.write(_temperaturas[i].toStringAsFixed(1));
      if (i < _indice - 1) sb.write(", ");
    }
    sb.write("]");
    return sb.toString();
  }
}