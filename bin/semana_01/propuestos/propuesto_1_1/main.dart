import 'entities/expositor.dart';

void main() {
  Expositor expositor = Expositor(
    codigo: 12345,
    nombre: "César",
    horasTrabajadas: 24,
    tarifaPorHora: 20,
  );

  print(
    "El expositor ${expositor.nombre} tiene un sueldo neto de ${expositor.obtenerSueldoNeto()}",
  );
}
