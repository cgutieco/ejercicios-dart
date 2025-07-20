class Filmacion {
  int codigo;
  String titulo;
  int duracionMinutos;
  double precioSoles;

  Filmacion({
    required this.codigo,
    required this.titulo,
    required this.duracionMinutos,
    required this.precioSoles,
  });

  double obtenerPrecioEnDolares() {
    return precioSoles / 3.59;
  }
}