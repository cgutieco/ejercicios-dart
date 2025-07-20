class Numeros {
  int numero1;
  int numero2;
  int numero3;

  Numeros({
    required this.numero1,
    required this.numero2,
    required this.numero3,
  });

  int obtenerNumeroMenor() {
    int numeroMenor = numero1;
    if (numero2 < numeroMenor) {
      numeroMenor = numero2;
    }
    if (numero3 < numeroMenor) {
      numeroMenor = numero3;
    }

    return numeroMenor;
  }

  int obtenerNumeroMayor() {
    int numeroMayor = numero1;

    if (numero2 > numeroMayor) {
      numeroMayor = numero2;
    }
    if (numero3 > numeroMayor) {
      numeroMayor = numero3;
    }

    return numeroMayor;
  }

  int obtenerNumeroMedio() {
    int numeroMayor = obtenerNumeroMayor();
    int numeroMenor = obtenerNumeroMenor();
    if (numero1 != numeroMenor && numero1 != numeroMayor) return numero1;
    if (numero2 != numeroMenor && numero2 != numeroMayor) return numero2;
    return numero3;
  }
}
