import 'entities/asesor.dart';

void main() {
  Asesor asesor = Asesor(12345, "César", 30, 20);

  listado(asesor);

  asesor.horasTrabajadas += 10;
  double desc = asesor.tarifaHora * 0.15;
  asesor.tarifaHora -= desc;

  listado(asesor);
}

void listado(Asesor asesor) {
  print(
    "El asesor ${asesor.nombre} tiene un sueldo neto de ${asesor.obtenerSueldoNeto().toStringAsFixed(2)}",
  );
}
