import 'entities/arreglo_precios.dart';

final ArregloPrecios ap = ArregloPrecios();

void main() {
  print("--- ESTADO INICIAL DEL ARREGLO DE PRECIOS ---");
  simularPulsacionBotonListar();
  simularPulsacionBotonReportar();

  print("\n\n--- SIMULANDO PULSACIÓN DEL BOTÓN 'GENERAR' ---");
  simularPulsacionBotonGenerar();

  print("\n\n--- ESTADO DEL ARREGLO TRAS GENERAR NUEVOS PRECIOS ---");
  simularPulsacionBotonListar();
  simularPulsacionBotonReportar();
}

void simularPulsacionBotonListar() {
  print("\n-- Listado de Precios --");
  if (ap.tamanio() == 0) {
    print("El arreglo de precios está vacío.");
    return;
  }
  List<String> preciosFormateados = ap
      .obtenerTodosLosPrecios()
      .map((p) => p.toStringAsFixed(1))
      .toList();
  print("Precios actuales: $preciosFormateados");
}

void simularPulsacionBotonReportar() {
  print("\n-- Reporte de Precios --");
  if (ap.tamanio() == 0) {
    print(
      "No se puede generar un reporte porque el arreglo de precios está vacío.",
    );
    return;
  }

  print("Cantidad de precios: ${ap.tamanio()}");
  print("Precio promedio: ${ap.precioPromedio().toStringAsFixed(1)}");
  print("Precio mayor: ${ap.precioMayor().toStringAsFixed(1)}");
  print("Precio menor: ${ap.precioMenor().toStringAsFixed(1)}");
  print(
    "Cantidad de productos con precio >= al promedio: ${ap.cantMayoresPrecioPromedio()}",
  );
  print(
    "Cantidad de productos con precio < al promedio: ${ap.cantMenoresPrecioPromedio()}",
  );

  int posPrimerMayorAlSegundo = ap.posPrimerPrecioMayorAlSegundo();
  if (posPrimerMayorAlSegundo != -1) {
    print(
      "Posición del primer precio mayor al segundo: $posPrimerMayorAlSegundo (Valor: ${ap.obtener(posPrimerMayorAlSegundo).toStringAsFixed(1)})",
    );
  } else {
    print(
      "No aplica la búsqueda del primer precio mayor al segundo (arreglo muy corto o no se encontró).",
    );
  }

  int posUltimoMenorAlPenultimo = ap.posUltimoPrecioMenorAlPenultimo();
  if (posUltimoMenorAlPenultimo != -1) {
    print(
      "Posición del último precio menor al penúltimo: $posUltimoMenorAlPenultimo (Valor: ${ap.obtener(posUltimoMenorAlPenultimo).toStringAsFixed(1)})",
    );
  } else {
    print(
      "No aplica la búsqueda del último precio menor al penúltimo (arreglo muy corto o no se encontró).",
    );
  }
}

void simularPulsacionBotonGenerar() {
  ap.generarPrecios();
}
