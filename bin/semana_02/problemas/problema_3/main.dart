import "dart:io";

import "entities/edificio.dart";

void main() {
  stdout.write("Ingrese los datos del edificio\n");

  stdout.write("Ingrese el código:");
  String? codigoStr = stdin.readLineSync();
  int codigo = int.parse(codigoStr ?? "0");

  stdout.write("Ingrese el nro de departamentos: ");
  String? nroDepartamentosStr = stdin.readLineSync();
  int nroDepartamentos = int.parse(nroDepartamentosStr ?? "0");

  stdout.write("Ingrese la cantidad de pisos: ");
  String? cantidadPisosStr = stdin.readLineSync();
  int cantidadPisos = int.parse(cantidadPisosStr ?? "0");

  stdout.write("Ingrese el precio de departamento en dólares: ");
  String? precioDepartamentoDolarStr = stdin.readLineSync();
  double precioDepartamentoDola = double.parse(
    precioDepartamentoDolarStr ?? "0",
  );

  Edificio edificio1 = Edificio(
    codigo,
    nroDepartamentos,
    cantidadPisos,
    precioDepartamentoDola,
  );

  listado(edificio1);
}

void listado(Edificio edificio) {
  stdout.write(
    "El edificio ${edificio.codigo} cuesta un total de \$${edificio.obtenerPrecioEdificio()}",
  );
}
