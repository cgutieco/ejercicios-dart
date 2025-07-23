abstract class Empleado {
  String _id;
  String _nombre;
  double _salarioBase;

  Empleado(this._id, this._nombre, this._salarioBase);

  String get id => _id;

  set id(String nuevoId) {
    _id = nuevoId;
  }

  String get nombre => _nombre;

  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  double get salarioBase => _salarioBase;

  set salarioBase(double nuevoSalarioBase) {
    _salarioBase = nuevoSalarioBase;
  }

  void calcularSalario();

  String obtenerDetalles() {
    return "Detalles del empleado\n"
        "Id: $id\n"
        "Nombre: $nombre\n"
        "Salario base: $salarioBase\n";
  }
}
