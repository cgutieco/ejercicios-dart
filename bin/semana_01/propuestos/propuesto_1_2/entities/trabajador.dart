class Trabajador {
  int codigo;
  String nombre;
  int horasTrabajadas;
  double tarifaHora;

  Trabajador({
    required this.codigo,
    required this.nombre,
    required this.horasTrabajadas,
    required this.tarifaHora,
  });

  double obtenerSueldo() {
    return horasTrabajadas * tarifaHora;
  }
}
