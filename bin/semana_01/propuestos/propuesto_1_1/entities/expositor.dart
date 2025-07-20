class Expositor {
  int codigo;
  String nombre;
  int horasTrabajadas;
  double tarifaPorHora;

  Expositor({
    required this.codigo,
    required this.nombre,
    required this.horasTrabajadas,
    required this.tarifaPorHora,
  });

  double obtenerSueldoBruto() {
    return horasTrabajadas * tarifaPorHora;
  }

  double obtenerDescuentoAFP() {
    return obtenerSueldoBruto() * 0.10;
  }

  double obtenerDescuentoEPS() {
    return obtenerSueldoBruto() * 0.05;
  }

  double obtenerSueldoNeto() {
    return obtenerSueldoBruto() - obtenerDescuentoAFP() - obtenerDescuentoEPS();
  }
}
