import 'entities/arreglo_sueldos.dart';

ArregloSueldos as = ArregloSueldos();

void presionarBotonListar() {
  print("\nBotón 'Listar' presionado.");
  as.listarSueldos();
}

void presionarBotonReportar() {
  print("\nBotón 'Reportar' presionado.");
  as.listadoGeneral();
}

void presionarBotonGenerar() {
  print("\nBotón 'Generar' presionado.");
  as.generarSueldos();
}

void main() {
  print("--- Iniciando programa de gestión de sueldos ---");
  presionarBotonListar();
  presionarBotonReportar();
  presionarBotonGenerar();
  presionarBotonListar();
  presionarBotonReportar();

  print("\n--- Fin del programa ---");
}
