class Equipo {
  int codigo;
  String marca;
  String color;
  double precioDolares;

  Equipo({
    required this.codigo,
    required this.marca,
    required this.color,
    required this.precioDolares,
  });

  double obtenerPrecioEquipoSoles() {
    return precioDolares * 3.59;
  }

  double obtenerPrecioEquipoEuros() {
    return precioDolares / 1.20;
  }
}
