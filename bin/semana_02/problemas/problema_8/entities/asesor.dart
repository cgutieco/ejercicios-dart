class Asesor {
  int _codigo;
  String _nombre;
  int _horasTrabajadas;
  double _tarifaHora;

  Asesor(this._codigo, this._nombre, this._horasTrabajadas, this._tarifaHora);

  double get tarifaHora => _tarifaHora;

  set tarifaHora(double value) {
    _tarifaHora = value;
  }

  int get horasTrabajadas => _horasTrabajadas;

  set horasTrabajadas(int value) {
    _horasTrabajadas = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  double obtenerSueldoBruto() {
    return horasTrabajadas * tarifaHora;
  }

  double obtenerDescuento() {
    return obtenerSueldoBruto() * 0.15;
  }

  double obtenerSueldoNeto() {
    return obtenerSueldoBruto() - obtenerDescuento();
  }
}
