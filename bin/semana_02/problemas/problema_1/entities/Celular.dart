class Celular {
  int _numero;
  String _usuario;
  int _segundosConsumidos;
  double _precioSegundo;

  Celular(
    this._numero,
    this._usuario,
    this._segundosConsumidos,
    this._precioSegundo,
  ) {
    if (_numero.toString().length != 9)
      throw ArgumentError("El número debe tener 9 dígitos");
  }

  int get numero => _numero;

  set numero(int value) {
    _numero = value;
  }

  double get precioSegundo => _precioSegundo;

  set precioSegundo(double value) {
    _precioSegundo = value;
  }

  int get segundosConsumidos => _segundosConsumidos;

  set segundosConsumidos(int value) {
    _segundosConsumidos = value;
  }

  String get usuario => _usuario;

  set usuario(String value) {
    _usuario = value;
  }

  double obtenerCostoConsumo() {
    return segundosConsumidos * precioSegundo;
  }

  double obtenerImpuestoIgv() {
    return obtenerCostoConsumo() * 0.18;
  }

  double obtenerTotalPago() {
    return obtenerCostoConsumo() + obtenerImpuestoIgv();
  }
}
