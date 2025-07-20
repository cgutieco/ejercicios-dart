import 'entities/empleado.dart';

void main() {
  Empleado empleado1 = Empleado(12345, "César", 0, 123456789);
  Empleado empleado2 = Empleado.valoresDefecto(1, "José");
  Empleado empleado3 = Empleado.sinParametros();

  listado(empleado1);
  listado(empleado2);
  listado(empleado3);

  print(
    "Cantidad de empleados: ${Empleado.cantidadEmpleados}\nMonto acumulado sueldo neto: ${Empleado.acumulaSueldos}",
  );
}

void listado(Empleado empleado) {
  print(empleado.toString());
}
