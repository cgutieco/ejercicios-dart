import 'entities/numeros.dart';

void main() {
  Numeros numeros = Numeros(numero1: 10, numero2: 2, numero3: 1);

  print(
    "Número menor: ${numeros.obtenerNumeroMenor()}\nNúmero mayor: ${numeros.obtenerNumeroMayor()}\nNúmero medio: ${numeros.obtenerNumeroMedio()}",
  );
}
