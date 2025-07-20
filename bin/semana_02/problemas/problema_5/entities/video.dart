class Video {
  int _codigo;
  String _nombre;
  double _duracion;
  double _tipoCambio;
  double _precioSoles;

  Video(this._codigo, this._nombre, this._duracion, this._tipoCambio,
      this._precioSoles);

  double get tipoCambio => _tipoCambio;

  set tipoCambio(double value) {
    _tipoCambio = value;
  }

  double get duracion => _duracion;

  set duracion(double value) {
    _duracion = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  double get precioSoles => _precioSoles;

  set precioSoles(double value) {
    _precioSoles = value;
  }

  double obtenerPrecioDolares() {
    return precioSoles / tipoCambio;
  }
}
