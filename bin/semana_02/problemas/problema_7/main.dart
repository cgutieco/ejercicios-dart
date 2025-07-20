import 'dart:io';

import 'entities/empleado.dart';

void main() {
  stdout.write("Ingrese los datos del empleado\n");

  stdout.write("Ingrese el código del empleado: ");
  String? codigoStr = stdin.readLineSync();
  int codigo = int.parse(codigoStr ?? "0");

  stdout.write("Ingrese el nombre del empleado: ");
  String? nombreStr = stdin.readLineSync();

  stdout.write("Ingrese el nro celular del empleado: ");
  String? nroCelularStr = stdin.readLineSync();
  int nroCelular = int.parse(nroCelularStr ?? "0");

  stdout.write("Ingrese el sueldo en soles del empleado: ");
  String? sueldoSoleStr = stdin.readLineSync();
  double sueldoSoles = double.parse(sueldoSoleStr ?? "0");

  Empleado empleado = Empleado(codigo, nombreStr!, nroCelular, sueldoSoles);

  listado(empleado);

  empleado.nroCelular = 999888777;
  empleado.sueldoSoles += 200;

  listado(empleado);
}

void listado(Empleado empleado) {
  stdout.write("El empleado ${empleado.nombre} tiene un ${empleado.obtenerRangoSueldo()}.\n");
}