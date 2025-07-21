import 'dart:math';

class ArregloPrecios {
  List<double> _precios = [
    240.5,
    350.2,
    80.4,
    100.3,
    470.1,
    60.0,
    330.8,
    260.6,
    510.9,
    200.7,
  ];

  ArregloPrecios();

  List<double> obtenerTodosLosPrecios() {
    return List.from(_precios);
  }

  int tamanio() {
    return _precios.length;
  }

  double obtener(int index) {
    if (index >= 0 && index < tamanio()) {
      return _precios[index];
    } else {
      print("Advertencia: Índice $index fuera de rango, devolviendo 0.0");
      return 0.0;
    }
  }

  double precioPromedio() {
    if (_precios.isEmpty) return 0.0;
    double acumulaPrecios = 0;
    for (double precio in _precios) {
      acumulaPrecios += precio;
    }
    return acumulaPrecios / tamanio();
  }

  double precioMayor() {
    if (_precios.isEmpty) return 0.0;
    double precioMayor = _precios.first;
    for (double precio in _precios) {
      if (precio > precioMayor) precioMayor = precio;
    }
    return precioMayor;
  }

  double precioMenor() {
    if (_precios.isEmpty) return 0.0;
    double precioMenor = _precios.first;
    for (double precio in _precios) {
      if (precio < precioMenor) precioMenor = precio;
    }
    return precioMenor;
  }

  int cantMayoresPrecioPromedio() {
    if (_precios.isEmpty) return 0;
    double promedio = precioPromedio();
    int acumulador = 0;
    for (double precio in _precios) {
      if (precio >= promedio) acumulador++;
    }
    return acumulador;
  }

  int cantMenoresPrecioPromedio() {
    if (_precios.isEmpty) return 0;
    double promedio = precioPromedio();
    int acumulador = 0;
    for (double precio in _precios) {
      if (precio < promedio) acumulador++;
    }
    return acumulador;
  }

  int posPrimerPrecioMayorAlSegundo() {
    if (_precios.length < 2) return -1;
    double segundoPrecio = _precios[1];
    return _precios.indexWhere((precio) => precio > segundoPrecio);
  }

  int posUltimoPrecioMenorAlPenultimo() {
    if (_precios.length < 2) return -1;
    double penultimoPrecio = _precios[_precios.length - 2];
    return _precios.lastIndexWhere((precio) => precio < penultimoPrecio);
  }

  void generarPrecios() {
    final random = Random();
    const double minPrecio = 99.9;
    const double maxPrecio = 999.9;

    for (int i = 0; i < _precios.length; i++) {
      double factorAleatorio = random.nextDouble();
      double precioAleatorioConDecimales =
          minPrecio + factorAleatorio * (maxPrecio - minPrecio);
      double precioRedondeado =
          (precioAleatorioConDecimales * 10).round() / 10.0;

      if (precioRedondeado < minPrecio) {
        precioRedondeado = minPrecio;
      } else if (precioRedondeado > maxPrecio) {
        precioRedondeado = maxPrecio;
      }
      _precios[i] = precioRedondeado;
    }
    print("\n-- Precios generados aleatoriamente (99.9 - 999.9) --");
  }
}
