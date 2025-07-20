import 'entities/obrero.dart';

void main() {
  Obrero obrero = Obrero(12345, "César", 50, 13.90);

  listado(obrero);

  obrero.horasTrabajadas += 8;

  double des = obrero.tarifaHora * 0.15;

  obrero.tarifaHora -= des;

  listado(obrero);
}

void listado(Obrero o) {
  print("El obrero ${o.nombre} tiene un sueldo neto de \$${o.obtenerSueldoNeto()}");
}