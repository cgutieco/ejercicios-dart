import 'empleado.dart';

class Desarrollador extends Empleado {
  String lenguajeBase;
  static const bonificacionFija = 500;

  Desarrollador(
    super._id,
    super._nombre,
    super._salarioBase,
    this.lenguajeBase,
  );

  @override
  void calcularSalario() {
    print(
      "El salario del desarrollador $nombre es: \$${salarioBase += bonificacionFija}\n",
    );
  }

  @override
  String obtenerDetalles() {
    return "${super.obtenerDetalles()}"
        "Lenguaje base: $lenguajeBase\n";
  }
}
