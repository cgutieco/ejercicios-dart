import 'entities/desarrollador.dart';
import 'entities/empleado.dart';
import 'entities/empresa.dart';
import 'entities/gerente.dart';

void main() {
  Empleado empleado1 = Desarrollador("1234", "César", 2850, "Dart");
  Empleado empleado2 = Gerente("54321", "Ramón", 2000, 5);
  Empleado empleado3 = Desarrollador("12345", "César", 1000, "Java");
  Empresa empresa1 = Empresa();

  empresa1.agregarEmpleado(empleado1);
  empresa1.agregarEmpleado(empleado2);
  empresa1.agregarEmpleado(empleado3);
  empresa1.mostrarEmpleados();
}