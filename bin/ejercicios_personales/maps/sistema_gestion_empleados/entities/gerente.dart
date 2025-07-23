import 'empleado.dart';

class Gerente extends Empleado {
  int numeroSubordinados;

  Gerente(super.id, super.nombre, super.salarioBase, this.numeroSubordinados);

  @override
  void calcularSalario() {
    double salario = salarioBase + (numeroSubordinados * 100);
    print("El salario del gerente $nombre es: \$${salario}");
  }

  @override
  String obtenerDetalles() {
    return "${super.obtenerDetalles()}"
        "Número de subordinados: $numeroSubordinados\n";
  }
}
