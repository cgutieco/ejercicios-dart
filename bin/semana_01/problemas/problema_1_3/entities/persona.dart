class Persona {
  String nombre;
  String apellido;
  int edad;
  double estatura;
  double peso;

  Persona({
    required this.nombre,
    required this.apellido,
    required this.edad,
    required this.estatura,
    required this.peso,
  });

  String verificarMayoriaEdad() {
    return edad >= 18 ? "mayor de edad" : "menor de edad";
  }

  double obtenerIMC() {
    return peso / (estatura * estatura);
  }
}
