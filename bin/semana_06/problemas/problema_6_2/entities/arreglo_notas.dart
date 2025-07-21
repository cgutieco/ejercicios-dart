class ArregloNotas {
  List<int> _nota;
  int _indice;

  ArregloNotas()
      : _nota = List.filled(10, 0),
        _indice = 0;

  int tamanio() {
    return _indice;
  }

  int obtener(int indice) {
    if (indice >= 0 && indice < _indice) {
      return _nota[indice];
    } else {
      throw ArgumentError("Índice incorrecto");
    }
  }

  void _ampliarArreglo() {
    List<int> arregloAmpliado = List.filled(_nota.length + 10, 0);
    for (int i = 0; i < _indice; i++) {
      arregloAmpliado[i] = _nota[i];
    }
    _nota = arregloAmpliado;
  }

  void adicionar(int nota) {
    if (_indice == _nota.length) {
      _ampliarArreglo();
    }
    _nota[_indice] = nota;
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

  int posUltimaNotaDesaprobatoria() {
    for (int i = _indice - 1; i >= 0; i--) {
      if (_nota[i] < 13) {
        return i;
      }
    }
    return -1;
  }

  void decrementarUltimaNotaDesaprobatoria() {
    int pos = posUltimaNotaDesaprobatoria();
    if (pos != -1) {
      _nota[pos] -= 2;
      if (_nota[pos] < 0) {
        _nota[pos] = 0;
      }
    }
  }

  void remplazarUltimaNotaDesaprobatoria() {
    if (_indice > 0) {
      int pos = posUltimaNotaDesaprobatoria();
      if (pos != -1) {
        int ultimaNota = _nota[_indice - 1];
        _nota[pos] = ultimaNota;
      }
    }
  }
}
