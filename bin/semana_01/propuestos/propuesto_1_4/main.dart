import 'entities/caja.dart';

void main() {
  Caja caja = Caja(
    largoCentimetros: 134,
    anchoCentimetros: 120,
    altoCentimetros: 120,
    pesoKilogramos: 40,
  );

  print(
    "Volumen en centímetros cúbicos: ${caja.obtenerVolumenCmCubicos()}\nPeso volumétrico KG: ${caja.obtenerPesoVolumetricoKG()}\nPeso facturable: ${caja.obtenerPesoFacturable()}",
  );
}
