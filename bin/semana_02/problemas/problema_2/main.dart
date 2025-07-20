import 'entities/computadora.dart';

void main() {
  Computadora computadora1 = Computadora(12345, "HP", "Negra", 1500.99);

  Computadora computadora2 = Computadora(54321, "Lenovo", "Rojo", 1300);

  List<Computadora> computadoras = [computadora1, computadora2];

  for (Computadora c in computadoras) {
    listado(c);
  }
}

void listado(Computadora computadora) {
  print(
    "La computadora ${computadora.marca} ${computadora.color} tiene un precio en soles de S/.${computadora.obtenerPrecioSoles().toStringAsFixed(2)} y en euros de E/.${computadora.obtenerPrecioEuros().toStringAsFixed(2)}",
  );
}
