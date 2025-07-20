class Computadora {
  int _codigo;
  String _marca;
  String _color;
  double _precioDolares;

  Computadora(this._codigo, this._marca, this._color, this._precioDolares) {
    if (_precioDolares <= 0) {
      throw ArgumentError("Se espera que el precio sea mayor a 0");
    }
  }

  double get precioDolares => _precioDolares;

  set precioDolares(double value) {
    _precioDolares = value;
  }

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  double obtenerPrecioSoles() {
    return precioDolares * 3.35;
  }

  double obtenerPrecioEuros() {
    return precioDolares / 1.20;
  }
}
