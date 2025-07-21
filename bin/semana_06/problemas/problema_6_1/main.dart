import 'entities/arreglo_edades.dart';

ArregloEdades ae = ArregloEdades();

void listar() {
  if (ae.tamano() == 0) {
    print("El arreglo de edades está vacío.");
    return;
  }
  print("Edades registradas:");
  for (int i = 0; i < ae.tamano(); i++) {
    print("Posición $i: ${ae.obtener(i)}");
  }
}

void simularPulsacionBotonAdicionar(int edad) {
  print("\n--- Pulsación Botón Adicionar ---");
  ae.adicionar(edad);
  listar();
}

void simularPulsacionBotonEliminarAlFinal() {
  print("\n--- Pulsación Botón Eliminar al final ---");
  if (ae.tamano() == 0) {
    print("El arreglo está vacío. No se puede eliminar.");
  } else {
    ae.eliminarAlFinal();
    listar();
  }
}

void simularPulsacionBotonEliminarTodo() {
  print("\n--- Pulsación Botón Eliminar todo ---");
  if (ae.tamano() == 0) {
    print("El arreglo ya está vacío.");
  } else {
    ae.eliminarTodo();
    listar();
  }
}

void simularPulsacionBotonIncrementarPrimeraEdadAdulta() {
  print("\n--- Pulsación Botón Incrementar primera edad adulta ---");
  int pos = ae.posPrimeraEdadAdulta();
  if (pos == -1) {
    print("No existe ninguna edad adulta para incrementar.");
  } else {
    ae.incrementarPrimeraEdadAdulta();
    listar();
  }
}

void simularPulsacionBotonRemplazarPrimeraEdadAdulta() {
  print("\n--- Pulsación Botón Remplazar primera edad adulta ---");
  int pos = ae.posPrimeraEdadAdulta();
  if (pos == -1) {
    print("No existe ninguna edad adulta para reemplazar.");
  } else {
    try {
      ae.remplazarPrimeraEdadAdulta();
      listar();
    } on StateError {
      print(
        "No se puede reemplazar porque el arreglo está vacío (no hay edad mayor).",
      );
    }
  }
}

void main() {
  listar();

  simularPulsacionBotonAdicionar(25);
  simularPulsacionBotonAdicionar(18);
  simularPulsacionBotonAdicionar(65);
  simularPulsacionBotonAdicionar(30);
  simularPulsacionBotonAdicionar(12);
  simularPulsacionBotonAdicionar(55);
  simularPulsacionBotonAdicionar(22);
  simularPulsacionBotonAdicionar(40);
  simularPulsacionBotonAdicionar(70);
  simularPulsacionBotonAdicionar(19);
  simularPulsacionBotonAdicionar(35);

  print("\nEdad mayor: ${ae.edadMayor()}");
  print("Posición primera edad adulta: ${ae.posPrimeraEdadAdulta()}");

  simularPulsacionBotonIncrementarPrimeraEdadAdulta();
  simularPulsacionBotonRemplazarPrimeraEdadAdulta();

  simularPulsacionBotonEliminarAlFinal();
  simularPulsacionBotonEliminarAlFinal();

  simularPulsacionBotonEliminarTodo();
  simularPulsacionBotonEliminarAlFinal();
  simularPulsacionBotonIncrementarPrimeraEdadAdulta();
  simularPulsacionBotonRemplazarPrimeraEdadAdulta();
}
