import 'entities/constructor.dart';

void main() {
  Constructor constructor1 = Constructor(12345, "César", 90, 30);
  Constructor constructor2 = Constructor.parametrosSeteados(
    54321,
    "Pepito",
    30,
  );
  Constructor constructor3 = Constructor.sinParametros();

  listado(constructor1);
  listado(constructor2);
  listado(constructor3);

  print("Factor descuento AFP: ${Constructor.factorDescuentoAFP * 100}%\n");
  print("Factor descuento EPS: ${Constructor.factorDescuentoEPS * 100}%\n");
  print(
    "Cantidad de objetos Constructor creados: ${Constructor.cuentaConstructor}",
  );
  print(
    "Cantidad de sueldos netos acumulados: ${Constructor.acumulaSueldoNeto}",
  );
}

void listado(Constructor constructor) {
  print(constructor.toString());
}
