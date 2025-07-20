class Paciente {
  String _nombre;
  String _apellido;
  int _edad;
  double _talla;
  double _peso;

  Paciente(this._nombre, this._apellido, this._edad, this._talla, this._peso);

  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }

  double get talla => _talla;

  set talla(double value) {
    _talla = value;
  }

  int get edad => _edad;

  set edad(int value) {
    _edad = value;
  }

  String get apellido => _apellido;

  set apellido(String value) {
    _apellido = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  String obtenerMayoriaEdad() {
    return edad >= 18 ? "menor de edad" : "mayor de edad";
  }
}
