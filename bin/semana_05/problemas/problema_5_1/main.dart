import 'entities/arreglo_edades.dart';

void main() {
  ArregloEdades arregloEdades = ArregloEdades();
  listar(arregloEdades);
}

void listar(ArregloEdades edades) {
  print("El tamaño de la lista es: ${edades.obtenerTamanio()}");
  print("La edad promedio es: ${edades.obtenerEdadPromedio()}");
  print("La edad mayor es: ${edades.obtenerEdadMayor()}");
  print("La edad menor es: ${edades.obtenerEdadMenor()}");
  print(
    "La cantidad de mayores de edad es: ${edades.obtenerCantidadMayoresDeEdad()}",
  );
  print(
    "La cantidad de menores de edad es: ${edades.obtenerCantidadMenoresDeEdad()}",
  );
  print(
    "La posición en la lista del primer adolescente es: ${edades.obtenerPosPrimerEdadAdolescente()}",
  );
  print(
    "La posición en la lista del último adolescente es: ${edades.obtenerUltimaEdadAdolescente()}\n",
  );
}
