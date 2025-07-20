class Edificio {
  int _codigo;
  int _nroDepartamentos;
  int _cantidadPisos;
  double _precioDepartamentoDolar;

  Edificio(
    this._codigo,
    this._nroDepartamentos,
    this._cantidadPisos,
    this._precioDepartamentoDolar,
  ) {
    if (_nroDepartamentos <= 0 || _cantidadPisos <= 0) {
      throw ArgumentError("El edificio debe tener más de un departamento y pisos.");
    }
  }

  double get precioDepartamentoDolar => _precioDepartamentoDolar;

  set precioDepartamentoDolar(double value) {
    _precioDepartamentoDolar = value;
  }

  int get cantidadPisos => _cantidadPisos;

  set cantidadPisos(int value) {
    _cantidadPisos = value;
  }

  int get nroDepartamentos => _nroDepartamentos;

  set nroDepartamentos(int value) {
    _nroDepartamentos = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  double obtenerPrecioEdificio() {
    return nroDepartamentos * precioDepartamentoDolar;
  }
}
