import 'entities/filmacion.dart';

void main() {
  Filmacion filmacion = Filmacion(
    codigo: 145,
    titulo: "Avengers end Game",
    duracionMinutos: 140,
    precioSoles: 50,
  );
  print(
    "Precio en dólares de la película ${filmacion.titulo} es \$${filmacion.obtenerPrecioEnDolares().toStringAsFixed(2)}",
  );
}
