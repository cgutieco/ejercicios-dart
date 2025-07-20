import 'entities/video.dart';

void main() {
  Video video = Video(12345, "Chiquita pero te duele", 130, 3.30, 120);

  listado(video);

  video.precioSoles += 5.5;

  listado(video);
}

void listado(Video video) {
  print(
    "El video ´${video.nombre}´ tiene un precio en dólares de: \$${video.obtenerPrecioDolares().toStringAsFixed(2)}",
  );
}
