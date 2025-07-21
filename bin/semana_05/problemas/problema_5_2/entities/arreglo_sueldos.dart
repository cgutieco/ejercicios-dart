import 'dart:math';

class ArregloSueldos {
  List<double> _sueldos = [
    2400.5,
    800.4,
    1500.2,
    1000.3,
    4700.1,
    600.0,
    3300.8,
    2600.6,
    5100.9,
    2000.7,
  ];

  ArregloSueldos();

  double _aleatorioConDecimal(double min, double max) {
    final random = Random();
    double valorAleatorioBase = min + random.nextDouble() * (max - min);
    double valorConUnDecimal = (valorAleatorioBase * 10).round() / 10.0;

    if (valorConUnDecimal > max) valorConUnDecimal = max;
    if (valorConUnDecimal < min) valorConUnDecimal = min;

    return valorConUnDecimal;
  }

  void generarSueldos() {
    List<double> nuevosSueldos = [];
    int cantidadSueldos = _sueldos.length;
    for (int i = 0; i < cantidadSueldos; i++) {
      nuevosSueldos.add(_aleatorioConDecimal(799.9, 4999.9));
    }
    _sueldos = nuevosSueldos;
    print("\n-- Nuevos sueldos generados --");
  }

  int tamanio() {
    return _sueldos.length;
  }

  double obtener(int index) {
    if (index >= 0 && index < _sueldos.length) {
      return _sueldos[index];
    }
    return -1.0;
  }

  double sueldoPromedio() {
    if (_sueldos.isEmpty) return 0.0;
    double acumulaSueldo = 0;
    for (double sueldo in _sueldos) {
      acumulaSueldo += sueldo;
    }
    return acumulaSueldo / tamanio();
  }

  double sueldoMayor() {
    if (_sueldos.isEmpty) return 0.0;
    double sueldoMayor = _sueldos.first;
    for (double sueldo in _sueldos) {
      if (sueldo > sueldoMayor) {
        sueldoMayor = sueldo;
      }
    }
    return sueldoMayor;
  }

  double sueldoMenor() {
    if (_sueldos.isEmpty) return 0.0;
    double sueldoMenor = _sueldos.first;
    for (double sueldo in _sueldos) {
      if (sueldo < sueldoMenor) {
        sueldoMenor = sueldo;
      }
    }
    return sueldoMenor;
  }

  int cantMayoresSueldoPromedio() {
    if (_sueldos.isEmpty) return 0;
    double prom = sueldoPromedio();
    int contador = 0;
    for (double sueldo in _sueldos) {
      if (sueldo >= prom) {
        contador++;
      }
    }
    return contador;
  }

  int cantMenoresSueldoPromedio() {
    if (_sueldos.isEmpty) return 0;
    double prom = sueldoPromedio();
    int contador = 0;
    for (double sueldo in _sueldos) {
      if (sueldo < prom) {
        contador++;
      }
    }
    return contador;
  }

  int posSegundoSueldoMayorAlMinimo() {
    final double sueldoMinimoDefinido = 850.0;
    int contadorMayoresAlMinimo = 0;
    for (int i = 0; i < _sueldos.length; i++) {
      if (_sueldos[i] > sueldoMinimoDefinido) {
        contadorMayoresAlMinimo++;
        if (contadorMayoresAlMinimo == 2) {
          return i;
        }
      }
    }
    return -1;
  }

  int posUltimoSueldoMenorAlMinimo() {
    final double sueldoMinimoDefinido = 850.0;
    return _sueldos.lastIndexWhere((sueldo) => sueldo < sueldoMinimoDefinido);
  }

  void listarSueldos() {
    print("\n--- Listado de Sueldos ---");
    if (_sueldos.isEmpty) {
      print("No hay sueldos para mostrar.");
      return;
    }
    for (int i = 0; i < _sueldos.length; i++) {
      print("Sueldo[${i + 1}]: ${_sueldos[i].toStringAsFixed(1)}");
    }
    print("--------------------------");
  }

  void listadoGeneral() {
    print("\n--- Reporte General de Sueldos ---");
    if (_sueldos.isEmpty) {
      print("No hay sueldos para generar un reporte.");
      return;
    }
    print("Cantidad de sueldos: ${tamanio()}");
    print("Sueldo promedio: ${sueldoPromedio().toStringAsFixed(1)}");
    print("Sueldo mayor: ${sueldoMayor().toStringAsFixed(1)}");
    print("Sueldo menor: ${sueldoMenor().toStringAsFixed(1)}");
    print(
      "Cantidad de empleados con sueldo >= promedio: ${cantMayoresSueldoPromedio()}",
    );
    print(
      "Cantidad de empleados con sueldo < promedio: ${cantMenoresSueldoPromedio()}",
    );

    int posSegundo = posSegundoSueldoMayorAlMinimo();
    if (posSegundo != -1) {
      print(
        "Posición del segundo sueldo > 850.0: ${posSegundo + 1} (Valor: ${_sueldos[posSegundo].toStringAsFixed(1)})",
      );
    } else {
      print("Posición del segundo sueldo > 850.0: No encontrado");
    }

    int posUltimo = posUltimoSueldoMenorAlMinimo();
    if (posUltimo != -1) {
      print(
        "Posición del último sueldo < 850.0: ${posUltimo + 1} (Valor: ${_sueldos[posUltimo].toStringAsFixed(1)})",
      );
    } else {
      print("Posición del último sueldo < 850.0: No encontrado");
    }
    print("--------------------------------");
  }
}
