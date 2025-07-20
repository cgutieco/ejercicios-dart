import 'entities/pelota.dart';

void main() {
  Pelota pelota = Pelota("Ariel", 40, 50, 30, 60);
  listado(pelota);
}

void listado(Pelota pelota) {
  print(
    "La pelota tiene un radio de ${pelota.obtenerRadio().toStringAsFixed(2)}, un volumen de ${pelota.obtenerVolumen().toStringAsFixed(2)}, y un coste total de ${pelota.obtenerTotalPago().toStringAsFixed(2)}",
  );
}
