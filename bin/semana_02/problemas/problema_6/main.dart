import 'entities/paciente.dart';

void main() {
  Paciente paciente = Paciente("César", "Gutiérrez", 24, 150, 70);

  listado(paciente);

  paciente.nombre = "Es chiquita.. pero te duele";

  listado(paciente);
}

void listado(Paciente paciente) {
  print("El paciente ${paciente.nombre} es ${paciente.obtenerMayoriaEdad()}");
}