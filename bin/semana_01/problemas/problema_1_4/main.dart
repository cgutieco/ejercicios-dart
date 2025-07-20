import 'entities/coordinador.dart';

void main() {
  Coordinador coordinador = Coordinador(
      codigo: 12345, nombre: "César", categoria: 0, numeroCelular: 962900635);
  print("El sueldo por categoría de ${coordinador.nombre} es \$${coordinador
      .obtenerSueldoPorCategoria()}");
}