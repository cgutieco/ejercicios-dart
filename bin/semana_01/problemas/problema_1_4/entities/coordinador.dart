class Coordinador {
  int codigo;
  String nombre;
  int categoria;
  int numeroCelular;

  Coordinador({
    required this.codigo,
    required this.nombre,
    required this.categoria,
    required this.numeroCelular,
  });

  int obtenerSueldoPorCategoria() {
    switch(categoria) {
      case 0: return 8500;
      case 1: return 6850;
      case 2: return 550;
      default: throw ArgumentError("Categoría no especificada");
    }
  }
}
