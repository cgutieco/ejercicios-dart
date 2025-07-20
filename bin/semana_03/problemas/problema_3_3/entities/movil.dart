class Movil {
  int _numero;
  String _nombreCliente;
  int _segundosConsumidos;
  double _precioSegundo;

  // Variables privadas de clase
  static int _cantidadMovil = 0;
  static double _acumulaImportePago = 0;

  // Constante de clase
  static const double factorIGV = 0.18;

  Movil(
    this._numero,
    this._nombreCliente,
    this._segundosConsumidos,
    this._precioSegundo,
  ) {
    _cantidadMovil++;
    _acumulaImportePago += obtenerImportePago();
  }

  Movil.parametrosInicializados(int numero, String nombreCliente)
    : this(numero, nombreCliente, 75, 0.28);

  Movil.sinParametros() : this.parametrosInicializados(123456789, "Juan");

  int get numero => _numero;

  set numero(int value) {
    _numero = value;
  }

  String get nombreCliente => _nombreCliente;

  set nombreCliente(String value) {
    _nombreCliente = value;
  }

  int get segundosConsumidos => _segundosConsumidos;

  set segundosConsumidos(int value) {
    _acumulaImportePago -= obtenerImportePago();
    _segundosConsumidos = value;
    _acumulaImportePago += obtenerImportePago();
  }

  double get precioSegundo => _precioSegundo;

  set precioSegundo(double value) {
    _acumulaImportePago -= obtenerImportePago();
    _precioSegundo = value;
    _acumulaImportePago += obtenerImportePago();
  }

  static int get cantidadMovil => _cantidadMovil;

  static double get acumulaImportePago => _acumulaImportePago;

  double obtenerCostoConsumo() {
    return precioSegundo * segundosConsumidos;
  }

  double obtenerImpuestoIGV() {
    return obtenerCostoConsumo() * factorIGV;
  }

  double obtenerImportePago() {
    return obtenerCostoConsumo() + obtenerImpuestoIGV();
  }

  @override
  String toString() {
    return "El cliente $nombreCliente tiene un deuda de: \$${obtenerCostoConsumo().toStringAsFixed(2)}";
  }
}
