class Caja {
  double largoCentimetros;
  double anchoCentimetros;
  double altoCentimetros;
  double pesoKilogramos;

  Caja({
    required this.largoCentimetros,
    required this.anchoCentimetros,
    required this.altoCentimetros,
    required this.pesoKilogramos,
  });

  double obtenerVolumenCmCubicos() {
    return largoCentimetros * anchoCentimetros * altoCentimetros;
  }

  double obtenerPesoVolumetricoKG() {
    return obtenerVolumenCmCubicos() / 500;
  }

  double obtenerPesoFacturable() {
    if(obtenerVolumenCmCubicos() > obtenerPesoVolumetricoKG()) return obtenerVolumenCmCubicos();
    return obtenerPesoVolumetricoKG();
  }
}
