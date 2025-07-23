import "entities/arreglo_notas.dart";

ArregloNotas an = ArregloNotas();

void listar() {
  print("\n--- Notas Registradas ---");
  if (an.tamanio() == 0) {
    print("El arreglo de notas está vacío.");
    return;
  }
  for (int i = 0; i < an.tamanio(); i++) {
    print("Nota ${i + 1}: ${an.obtener(i)}");
  }
  print("-------------------------");
}

void simularBotonAdicionar(int notaParaAdicionar) {
  print(
    "\n-> Botón Adicionar presionado. Nota a adicionar: $notaParaAdicionar",
  );
  an.adicionar(notaParaAdicionar);
  listar();
}

void simularBotonEliminarAlFinal() {
  print("\n-> Botón Eliminar al final presionado.");
  if (an.tamanio() == 0) {
    print("Mensaje: El arreglo está vacío. No se puede eliminar.");
  } else {
    an.eliminarAlFinal();
  }
  listar();
}

void simularBotonEliminarTodo() {
  print("\n-> Botón Eliminar todo presionado.");
  if (an.tamanio() == 0) {
    print("Mensaje: El arreglo ya está vacío.");
  } else {
    an.eliminarTodo();
  }
  listar();
}

void simularBotonDecrementarUltimaDesaprobatoria() {
  print("\n-> Botón Decrementar última nota desaprobatoria presionado.");
  int posAntes = an.posUltimaNotaDesaprobatoria();
  if (posAntes == -1 && an.tamanio() > 0) {
    print("Mensaje: No existe ninguna nota desaprobatoria para decrementar.");
  } else if (an.tamanio() == 0) {
    print("Mensaje: El arreglo está vacío, no hay notas desaprobatorias.");
  }
  an.decrementarUltimaNotaDesaprobatoria();
  listar();
}

void simularBotonRemplazarUltimaDesaprobatoria() {
  print("\n-> Botón Remplazar última nota desaprobatoria presionado.");
  int posAntes = an.posUltimaNotaDesaprobatoria();

  if (an.tamanio() == 0) {
    print("Mensaje: El arreglo está vacío. No se puede reemplazar nada.");
  } else if (posAntes == -1) {
    print("Mensaje: No existe ninguna nota desaprobatoria para reemplazar.");
  }
  an.remplazarUltimaNotaDesaprobatoria();
  listar();
}

void main() {
  print("--- Iniciando Simulación de Gestión de Notas ---");

  listar();

  simularBotonAdicionar(15);
  simularBotonAdicionar(10);
  simularBotonAdicionar(18);
  simularBotonAdicionar(7);
  simularBotonAdicionar(13);

  simularBotonDecrementarUltimaDesaprobatoria();

  simularBotonRemplazarUltimaDesaprobatoria();

  simularBotonAdicionar(5);
  simularBotonAdicionar(11);
  simularBotonAdicionar(16);
  simularBotonAdicionar(20);
  simularBotonAdicionar(4);
  simularBotonAdicionar(19);

  simularBotonDecrementarUltimaDesaprobatoria();

  simularBotonRemplazarUltimaDesaprobatoria();

  simularBotonEliminarAlFinal();
  simularBotonEliminarAlFinal();

  simularBotonEliminarTodo();

  simularBotonEliminarAlFinal();
  simularBotonDecrementarUltimaDesaprobatoria();
  simularBotonRemplazarUltimaDesaprobatoria();

  simularBotonAdicionar(15);
  simularBotonAdicionar(1);
  listar();
  simularBotonDecrementarUltimaDesaprobatoria();

  print("\n--- Simulación Finalizada ---");
}
