import 'entities/trabajador.dart';

void main() {
  Trabajador trabajador = Trabajador(
    codigo: 12345,
    nombre: "César",
    horasTrabajadas: 28,
    tarifaHora: 25.9,
  );

  print(
    "El trabajdor ${trabajador.nombre} tiene un sueldo de \$${trabajador.obtenerSueldo().toStringAsFixed(2)}",
  );
}
