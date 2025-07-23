import 'empleado.dart';

class Empresa {
  Map<String, Empleado> _empleados;

  Empresa() : _empleados = {};

  void agregarEmpleado(Empleado empleado) {
    if (_empleados.containsKey(empleado.id))
      throw ArgumentError(
        "El empleado ${empleado.nombre} ya existe en la empresa",
      );
    _empleados[empleado.id] = empleado;
  }

  void mostrarEmpleados() {
    print("Lista de empleados de la empresa\n");
    _empleados.forEach((id, empleado) {
      print("${empleado.obtenerDetalles()}\n");
    });
  }
}
