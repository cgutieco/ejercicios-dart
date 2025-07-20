import 'entities/Celular.dart';

void main() {
  Celular celular1 = Celular(962900630, "César", 500, 0.20);

  listado(celular1);

  celular1.segundosConsumidos += 20;
  celular1.precioSegundo = 0.15;

  listado(celular1);
}

void listado(Celular celular) {
  print("El celular de número ${celular.numero} debe un total de S/.${celular.obtenerTotalPago().toStringAsFixed(2)}");
}