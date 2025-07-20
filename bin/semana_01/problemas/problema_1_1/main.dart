import 'entities/docente.dart';

void main() {
  Docente docente = Docente(12345, "César", 25, 14.9);
  print(
    "Datos del docente:\nCódigo: ${docente.codigo}\nNombre: ${docente.nombre}\nHoras trabajadas: ${docente.horasTrabajadas}\nTarifa horaria: ${docente.tarifaHoraria}\n",
  );
  print(
    "Otros datos del docente:\nSueldo bruto: ${docente.obtenerSueldoBruto().toStringAsFixed(2)}\nDescuento: ${docente.obtenerDescuento().toStringAsFixed(2)}\nSueldo neto: ${docente.obtenerSueldoNeto().toStringAsFixed(2)}",
  );
}
