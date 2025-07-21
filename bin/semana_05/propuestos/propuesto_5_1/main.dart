import 'entities/arreglo_notas.dart';

final ArregloNotas an = ArregloNotas();

void main() {
  print("--- ESTADO INICIAL DEL ARREGLO DE NOTAS ---");
  listarNotas();
  reportarResultados();

  print("\n--- GENERANDO NUEVAS NOTAS ---");
  generarNuevasNotas();

  print("\n--- ESTADO DEL ARREGLO TRAS GENERAR NUEVAS NOTAS ---");
  listarNotas();
  reportarResultados();

  print("\n--- OBTENIENDO NOTA EN POSICIÓN ESPECÍFICA ---");
  try {
    int posicion = 2;
    print("Nota en la posición $posicion: ${an.obtener(posicion)}");
    posicion = 10;
    print("Nota en la posición $posicion: ${an.obtener(posicion)}");
  } catch (e) {
    print("Error al obtener nota: $e");
  }
}

void listarNotas() {
  print("\n--- LISTADO DE NOTAS ---");
  if (an.tamanio() == 0) {
    print("El arreglo de notas está vacío.");
    return;
  }
  print("Notas actuales: ${an.notas}");
}

void reportarResultados() {
  print("\n--- REPORTE DE NOTAS ---");
  if (an.tamanio() == 0) {
    print(
      "No se puede generar un reporte porque el arreglo de notas está vacío.",
    );
    return;
  }
  print("Cantidad de notas: ${an.tamanio()}");
  print("Nota promedio: ${an.notaPromedio().toStringAsFixed(2)}");

  final notaMayor = an.notaMayor();
  final notaMenor = an.notaMenor();

  print("Nota mayor: ${notaMayor ?? 'N/A (arreglo vacío o error)'}");
  print("Nota menor: ${notaMenor ?? 'N/A (arreglo vacío o error)'}");

  print("Cantidad de notas aprobatorias (>=13): ${an.cantNotasAprobatorias()}");
  print(
    "Cantidad de notas desaprobatorias (<13): ${an.cantNotasDesaprobatorias()}",
  );
  print("Cantidad de notas mayores a 15: ${an.cantNotasMayoresA15()}");

  int posPrimeraAprobatoria = an.posPrimeraNotaAprobatoria();
  if (posPrimeraAprobatoria != -1) {
    print(
      "Posición de la primera nota aprobatoria (>=13): $posPrimeraAprobatoria (Nota: ${an.obtener(posPrimeraAprobatoria)})",
    );
  } else {
    print("No se encontraron notas aprobatorias.");
  }

  int posPenultimaDesaprobatoria = an.posPenultimaNotaDesaprobatoria();
  if (posPenultimaDesaprobatoria != -1) {
    print(
      "Posición de la penúltima nota desaprobatoria (<13): $posPenultimaDesaprobatoria (Nota: ${an.obtener(posPenultimaDesaprobatoria)})",
    );
  } else {
    print(
      "No se encontraron suficientes notas desaprobatorias para determinar la penúltima.",
    );
  }
}

void generarNuevasNotas() {
  an.generarNotas();
}
