import 'entities/persona.dart';

void main() {
  Persona persona = Persona(
    nombre: "César",
    apellido: "Gutiérrez",
    edad: 24,
    estatura: 1.60,
    peso: 70,
  );

  print(
    "${persona.nombre} ${persona.verificarMayoriaEdad()}. Su IMC es ${persona.obtenerIMC().toStringAsFixed(2)}",
  );
}
