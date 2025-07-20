class Factura {
  String _ruc;
  String _empresa;
  int _unidades;
  double _precioUnitario;

  // Variables de clase
  static int _cantidadFacturasCreadas = 0;
  static double _sumaImportesFacturados = 0.0;

  static const String entidadReguladora = "Sunat";

  Factura(this._ruc, this._empresa, this._unidades, this._precioUnitario) {
    _cantidadFacturasCreadas++;
    _sumaImportesFacturados += obtenerImporteFacturado();
  }

  Factura.conValoresDefecto(String ruc, String empresa)
    : this(ruc, empresa, 10, 50.0);

  Factura.sinParametros()
    : this.conValoresDefecto("11111111111", "MN-Global SRL");

  String get ruc => _ruc;

  set ruc(String nuevoRuc) {
    _ruc = nuevoRuc;
  }

  String get empresa => _empresa;

  set empresa(String nuevaEmpresa) {
    _empresa = nuevaEmpresa;
  }

  int get unidades => _unidades;

  set unidades(int nuevasUnidades) {
    if (nuevasUnidades < 0) {
      throw ArgumentError("Las unidades no pueden ser negativas.");
    }
    _sumaImportesFacturados -= obtenerImporteFacturado();
    _unidades = nuevasUnidades;
    _sumaImportesFacturados += obtenerImporteFacturado();
  }

  double get precioUnitario => _precioUnitario;

  set precioUnitario(double nuevoPrecio) {
    if (nuevoPrecio < 0) {
      throw ArgumentError("El precio unitario no puede ser negativo.");
    }
    _sumaImportesFacturados -= obtenerImporteFacturado();
    _precioUnitario = nuevoPrecio;
    _sumaImportesFacturados += obtenerImporteFacturado();
  }

  static int get cantidadFacturasCreadas => _cantidadFacturasCreadas;

  static double get sumaImportesFacturados => _sumaImportesFacturados;

  double obtenerImporteFacturado() {
    return _unidades * _precioUnitario;
  }

  @override
  String toString() {
    return 'Factura(RUC: $_ruc, Empresa: $_empresa, Unidades: $_unidades, Precio Unitario: $_precioUnitario, Importe: ${obtenerImporteFacturado()})';
  }
}
