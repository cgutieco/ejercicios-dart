class Empleado {
  int _codigo;
  String _nombre;
  int _categoria;
  int _numeroCelular;

  // Variables privadas de clase
  static int _cantidadEmpleados = 0;
  static double _acumulaSueldos = 0;

  // Constante pública de clase
  static const double factorDescuento = 0.15;

  Empleado(this._codigo, this._nombre, this._categoria, this._numeroCelular) {
    _cantidadEmpleados++;
    _acumulaSueldos += obtenerSueldoNeto();
  }

  Empleado.valoresDefecto(int categoria, String nombre)
    : this(2, nombre, categoria, 999999999);

  Empleado.sinParametros() : this.valoresDefecto(2, "Ninguno");

  int get codigo => _codigo;

  set codigo(int nuevoCodigo) {
    _codigo = nuevoCodigo;
  }

  String get nombre => _nombre;

  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  int get categoria => _categoria;

  set categoria(int nuevaCategoria) {
    // Se elimina el sueldo antiguo
    _acumulaSueldos -= obtenerSueldoNeto();
    _categoria = nuevaCategoria;
    // Se suma el nuevo sueldo
    _acumulaSueldos += obtenerSueldoNeto();
  }

  int get numeroCelular => _numeroCelular;

  set numeroCelular(int nuevoNumeroCelular) {
    _numeroCelular = nuevoNumeroCelular;
  }

  static int get cantidadEmpleados => _cantidadEmpleados;

  static double get acumulaSueldos => _acumulaSueldos;

  double obtenerSueldoBruto() {
    switch (categoria) {
      case 0:
        return 7200;
      case 1:
        return 6300;
      case 2:
        return 5100;
      default:
        throw ArgumentError("Categoría no soportada");
    }
  }

  double obtenerDescuento() {
    return obtenerSueldoBruto() * factorDescuento;
  }

  double obtenerSueldoNeto() {
    return obtenerSueldoBruto() - obtenerDescuento();
  }

  @override
  String toString() {
    return "Datos del empleado:\nNombre: $_nombre\nCategoría: $categoria\nNúmero celular: $numeroCelular\nFactor de descuento: $factorDescuento\nSueldo neto: ${obtenerSueldoNeto()}\n";
  }
}
