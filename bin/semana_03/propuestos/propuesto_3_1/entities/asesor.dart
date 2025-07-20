class Asesor {
  String _nombre;
  int _dni;
  int _codigo;
  double _remuneracionDolares;

  static int _cantidadAsesores = 0;
  static double _acumulaRemuneraciones = 0.0;

  static const String nombreInstitucion = "Cibertec";

  Asesor(this._nombre, this._dni, this._codigo, this._remuneracionDolares) {
    _cantidadAsesores++;
    _acumulaRemuneraciones += _remuneracionDolares;
  }

  Asesor.parametrosSeteados(String nombre, int dni)
      : this(nombre, dni, 55555, 2000.0);

  Asesor.sinParametros() : this.parametrosSeteados("NN", 88888888);

  String get nombre => _nombre;
  set nombre(String value) {
    _nombre = value;
  }

  int get dni => _dni;
  set dni(int value) {
    _dni = value;
  }

  int get codigo => _codigo;
  set codigo(int value) {
    _codigo = value;
  }

  double get remuneracionDolares => _remuneracionDolares;
  set remuneracionDolares(double value) {
    _acumulaRemuneraciones -= _remuneracionDolares;
    _remuneracionDolares = value;
    _acumulaRemuneraciones += _remuneracionDolares;
  }

  static int get cantidadAsesores => _cantidadAsesores;
  static double get acumulaRemuneraciones => _acumulaRemuneraciones;

  @override
  String toString() {
    return "Datos del asesor:\n"
        "Nombre: $nombre\n"
        "DNI: $dni\n"
        "Código: $codigo\n"
        "Remuneración en dólares: $remuneracionDolares\n"
        "Institución: $nombreInstitucion\n";
  }
}
