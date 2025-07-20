import 'entities/movil.dart';

void main() {
  Movil movil1 = Movil(5234524353, "César", 60, 20);
  Movil movil2 = Movil.parametrosInicializados(5243523, "Jorge");
  Movil movil3 = Movil.sinParametros();

  listado(movil1);
  listado(movil2);
  listado(movil3);
  print("Moviles acumulados: ${Movil.cantidadMovil}");
  print("Acumulado de importe a pagar: ${Movil.acumulaImportePago}\n");
}

void listado(Movil movil) {
  print(movil.toString());
}