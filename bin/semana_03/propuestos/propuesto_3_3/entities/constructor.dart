class Constructor {
  int _codigo;
  String _nombre;
  int _horasTrabajadas;
  double _tarifaHora;

  // Variables de clase
  static int _cuentaConstructor = 0;
  static double _acumulaSueldoNeto = 0.0;

  static const double factorDescuentoAFP = 0.10;
  static const double factorDescuentoEPS = 0.05;

  Constructor(
    this._codigo,
    this._nombre,
    this._horasTrabajadas,
    this._tarifaHora,
  ) {
    _cuentaConstructor++;
    _acumulaSueldoNeto += obtenerSueldoNeto();
  }

  Constructor.parametrosSeteados(int codigo, String nombre, int horasTrabajadas)
    : this(codigo, nombre, horasTrabajadas, 65.0);

  Constructor.sinParametros() : this.parametrosSeteados(333, "Juan", 30);

  static double get acumulaSueldoNeto => _acumulaSueldoNeto;

  static int get cuentaConstructor => _cuentaConstructor;

  double get tarifaHora => _tarifaHora;

  set tarifaHora(double value) {
    _acumulaSueldoNeto -= obtenerSueldoNeto();
    _tarifaHora = value;
    _acumulaSueldoNeto += obtenerSueldoNeto();
  }

  int get horasTrabajadas => _horasTrabajadas;

  set horasTrabajadas(int value) {
    _acumulaSueldoNeto -= obtenerSueldoNeto();
    _horasTrabajadas = value;
    _acumulaSueldoNeto += obtenerSueldoNeto();
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  int get codigo => _codigo;

  set codigo(int value) {
    _codigo = value;
  }

  double obtenerSueldoBruto() {
    return horasTrabajadas * tarifaHora;
  }

  double obtenerDescuentoAFP() {
    return obtenerSueldoBruto() * factorDescuentoAFP;
  }

  double obtenerDescuentoEPS() {
    return obtenerSueldoBruto() * factorDescuentoEPS;
  }

  double obtenerSueldoNeto() {
    return obtenerSueldoBruto() - obtenerDescuentoEPS() - obtenerDescuentoAFP();
  }

  @override
  String toString() {
    return "Datos del constructor:\n"
        "Código: $codigo\n"
        "Nombre: $nombre\n"
        "Sueldo neto: ${obtenerSueldoNeto()}\n";
  }
}
