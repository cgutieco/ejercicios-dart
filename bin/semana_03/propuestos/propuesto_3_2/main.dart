import 'entities/balon.dart';

void main() {
  Balon balon1 = Balon("Puma", 400, 50, 50, 15.99);
  Balon balon2 = Balon.parametrosSeteados("JailBreak", 600, 30);
  Balon balon3 = Balon.sinParametros();

  listado(balon1);
  listado(balon2);
  listado(balon3);

  print(
    "El valor de PI es ${Balon.PI}. El factor de descuento es ${Balon.factorDescuento * 100}% La cantidad de balones es: ${Balon.cantidadBalones} y tienen un importe a pagar acumulado de: \$${Balon.acumulaImportePago}",
  );
}

void listado(Balon balon) {
  print(balon.toString());
}
