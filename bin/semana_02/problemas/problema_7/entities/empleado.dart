class Empleado {
  int _codigo;
  String _nombre;
  int _nroCelular;
  double _sueldoSoles;

  Empleado(this._codigo, this._nombre, this._nroCelular, this._sueldoSoles);

  double get sueldoSoles => _sueldoSoles;

  set sueldoSoles(double value) {
    _sueldoSoles = value;
  }

  int get nroCelular => _nroCelular;

  set nroCelular(int value) {
    _nroCelular = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  String obtenerRangoSueldo() {
    if(sueldoSoles > 3500) return "mayor a 3500";
    else if(sueldoSoles < 3500) return "menor a 3500";
    else return "igual a 3500";
  }
}