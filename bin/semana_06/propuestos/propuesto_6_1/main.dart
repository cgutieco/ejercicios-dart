import 'dart:io';

import 'entities/arreglo_temperaturas.dart';

ArregloTemperaturas at = ArregloTemperaturas();

void main() {
  print("=== SISTEMA DE GESTIÓN DE TEMPERATURAS ===");
  print("Simulando interfaz gráfica con consola\n");

  mostrarMenu();

  while (true) {
    print("\nSeleccione una opción:");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        botonAdicionar();
        break;
      case '2':
        botonEliminarAlFinal();
        break;
      case '3':
        botonEliminarTodo();
        break;
      case '4':
        botonRemplazarPrimeraTemperaturaNormal();
        break;
      case '5':
        botonIncrementarTemperaturas();
        break;
      case '6':
        listar();
        break;
      case '0':
        print("¡Gracias por usar el sistema!");
        return;
      default:
        print("Opción no válida. Intente nuevamente.");
        mostrarMenu();
    }
  }
}

void mostrarMenu() {
  print("┌─────────────────────────────────────────┐");
  print("│               MENÚ PRINCIPAL            │");
  print("├─────────────────────────────────────────┤");
  print("│ 1. [Adicionar] temperatura              │");
  print("│ 2. [Eliminar al final]                  │");
  print("│ 3. [Eliminar todo]                      │");
  print("│ 4. [Remplazar primera temp. normal]     │");
  print("│ 5. [Incrementar temperaturas]           │");
  print("│ 6. [Listar] temperaturas                │");
  print("│ 0. Salir                                │");
  print("└─────────────────────────────────────────┘");
}

void listar() {
  print("\n" + "=" * 50);
  print("           LISTADO DE TEMPERATURAS");
  print("=" * 50);

  if (at.tamanio() == 0) {
    print("│ El arreglo está vacío                     │");
  } else {
    print("│ Total de temperaturas: ${at.tamanio()}");
    print("├" + "─" * 48);

    for (int i = 0; i < at.tamanio(); i++) {
      double temp = at.obtener(i);
      String estado = "";

      if (temp >= 36.1 && temp <= 37.2) {
        estado = " (Normal)";
      } else if (temp < 36.1) {
        estado = " (Baja)";
      } else {
        estado = " (Alta)";
      }

      print("│ Posición $i: ${temp.toStringAsFixed(1)}°C$estado");
    }
  }
  print("=" * 50);
}

void botonAdicionar() {
  print("\n🌡️  [BOTÓN ADICIONAR PRESIONADO]");
  print("Ingrese la temperatura a adicionar:");

  String? input = stdin.readLineSync();
  if (input != null) {
    try {
      double temperatura = double.parse(input);
      at.adicionar(temperatura);
      print(
        "✅ Temperatura ${temperatura.toStringAsFixed(1)}°C adicionada exitosamente.",
      );
      listar();
    } catch (e) {
      print("❌ Error: Ingrese un número válido.");
    }
  }
}

void botonEliminarAlFinal() {
  print("\n🗑️  [BOTÓN ELIMINAR AL FINAL PRESIONADO]");

  try {
    if (at.tamanio() == 0) {
      print("⚠️  El arreglo está vacío. No hay elementos para eliminar.");
      return;
    }

    double tempEliminada = at.obtener(at.tamanio() - 1);
    at.eliminarAlFinal();
    print(
      "✅ Temperatura ${tempEliminada.toStringAsFixed(1)}°C eliminada al final.",
    );
    listar();
  } catch (e) {
    print("❌ Error al eliminar: ${e.toString()}");
  }
}

void botonEliminarTodo() {
  print("\n🗑️  [BOTÓN ELIMINAR TODO PRESIONADO]");

  if (at.tamanio() == 0) {
    print("⚠️  El arreglo ya está vacío.");
    return;
  }

  int cantidadEliminada = at.tamanio();
  at.eliminarTodo();
  print("✅ Se eliminaron $cantidadEliminada temperaturas.");
  print("✅ El arreglo ha sido vaciado completamente.");
  listar();
}

void botonRemplazarPrimeraTemperaturaNormal() {
  print("\n🔄 [BOTÓN REMPLAZAR PRIMERA TEMPERATURA NORMAL PRESIONADO]");

  try {
    if (at.tamanio() == 0) {
      print("⚠️  No hay temperaturas registradas.");
      return;
    }

    int pos = at.posPrimeraTemperaturaNormal();
    if (pos == -1) {
      print(
        "⚠️  No existe ninguna temperatura normal (36.1°C - 37.2°C) en el arreglo.",
      );
      return;
    }

    double tempOriginal = at.obtener(pos);
    double tempMenor = at.temperaturaMenor();

    print("📊 Estado antes del reemplazo:");
    listar();

    at.remplazarPrimeraTemperaturaNormal();

    print("\n✅ Reemplazo exitoso:");
    print("   • Posición: $pos");
    print("   • Temperatura original: ${tempOriginal.toStringAsFixed(1)}°C");
    print("   • Nueva temperatura: ${tempMenor.toStringAsFixed(1)}°C");

    print("\n📊 Estado después del reemplazo:");
    listar();
  } catch (e) {
    print("❌ Error: ${e.toString()}");
  }
}

void botonIncrementarTemperaturas() {
  print("\n📈 [BOTÓN INCREMENTAR TEMPERATURAS PRESIONADO]");

  if (at.tamanio() == 0) {
    print("⚠️  No hay temperaturas para incrementar.");
    return;
  }

  print("📊 Estado antes del incremento:");
  listar();

  at.incrementarTemperaturas();

  print("\n✅ Todas las temperaturas han sido incrementadas en 0.2°C");
  print("\n📊 Estado después del incremento:");
  listar();
}
