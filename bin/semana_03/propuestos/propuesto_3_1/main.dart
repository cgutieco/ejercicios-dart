import 'entities/asesor.dart';

void main() {
  Asesor asesor1 = Asesor("César", 72775741, 12345, 3000.0);
  Asesor asesor2 = Asesor.parametrosSeteados("Jorge", 123456789);
  Asesor asesor3 = Asesor.sinParametros();

  listado(asesor1);
  listado(asesor2);
  listado(asesor3);

  print("Institución: ${Asesor.nombreInstitucion}");
  print("Cantidad de asesores: ${Asesor.cantidadAsesores}");
  print("Remuneraciones acumuladas: ${Asesor.acumulaRemuneraciones.toStringAsFixed(2)}");
}

void listado(Asesor asesor) {
  print(asesor.toString());
}