import 'dart:math';

class Balon {
  String _marca;
  double _pesoGramos;
  double _presionLibras;
  double _diametroCentimetros;
  double _precio;

  // Variables de clase
  static int _cantidadBalones = 0;
  static double _acumulaImportePago = 0.0;

  // Ya sé que se puede usar pi directamente desde Dart, pero el ejercicio lo pide
  static const double PI = 3.1416;
  static const double factorDescuento = 0.05;

  Balon(
    this._marca,
    this._pesoGramos,
    this._presionLibras,
    this._diametroCentimetros,
    this._precio,
  ) {
    _cantidadBalones++;
    _acumulaImportePago += obtenerImportePago();
  }

  Balon.parametrosSeteados(String marca, double peso, double presion)
    : this(marca, peso, presion, 18.5, 100.0);

  Balon.sinParametros() : this.parametrosSeteados("Adidas", 1.5, 4.8);

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  double get pesoGramos => _pesoGramos;

  set pesoGramos(double value) {
    _pesoGramos = value;
  }

  double get presionLibras => _presionLibras;

  set presionLibras(double value) {
    _presionLibras = value;
  }

  double get diametroCentimetros => _diametroCentimetros;

  set diametroCentimetros(double value) {
    _diametroCentimetros = value;
  }

  double get precio => _precio;

  set precio(double value) {
    _acumulaImportePago -= _precio;
    _precio = value;
    _acumulaImportePago += _precio;
  }

  static int get cantidadBalones => _cantidadBalones;

  static double get acumulaImportePago => _acumulaImportePago;

  double obtenerRadio() {
    return diametroCentimetros / 2;
  }

  double obtenerVolumen() {
    return (4 * PI) * pow(obtenerRadio(), 2) * (obtenerRadio() / 3);
  }

  double obtenerDescuento() {
    return precio * factorDescuento;
  }

  double obtenerImportePago() {
    return precio - obtenerDescuento();
  }

  @override
  String toString() {
    return "Datos del balón:\n"
        "Marca: $marca\n"
        "Peso en gramos: ${pesoGramos}gr\n"
        "Presión en libras: ${presionLibras}lb\n"
        "Diámetro: ${diametroCentimetros}cm\n"
        "Precio: \$${precio.toStringAsFixed(2)}\n"
        "Volumen: ${obtenerVolumen().toStringAsFixed(2)}\n"
        "Obtener importe pago: \$${obtenerImportePago().toStringAsFixed(2)}\n";
  }
}
