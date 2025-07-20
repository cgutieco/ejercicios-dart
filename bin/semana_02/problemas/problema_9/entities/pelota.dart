import 'dart:math';

class Pelota {
  String _marca;
  double _pesoGramos;
  double _presionLibras;
  double _diametroCentimetros;
  double _precio;

  Pelota(
    this._marca,
    this._pesoGramos,
    this._presionLibras,
    this._diametroCentimetros,
    this._precio,
  );

  double get precio => _precio;

  set precio(double value) {
    _precio = value;
  }

  double get diametroCentimetros => _diametroCentimetros;

  set diametroCentimetros(double value) {
    _diametroCentimetros = value;
  }

  double get presionLibras => _presionLibras;

  set presionLibras(double value) {
    _presionLibras = value;
  }

  double get pesoGramos => _pesoGramos;

  set pesoGramos(double value) {
    _pesoGramos = value;
  }

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  double obtenerRadio() {
    return diametroCentimetros / 2;
  }

  double obtenerVolumen() {
    return (pi * 4) * pow(obtenerRadio(), 2) * (obtenerRadio() / 3);
  }

  double obtenerDescuento() {
    return precio * 0.10;
  }

  double obtenerTotalPago() {
    return precio - obtenerDescuento();
  }
}
