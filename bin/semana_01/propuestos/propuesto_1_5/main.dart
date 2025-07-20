import 'entities/equipo.dart';

void main() {
  Equipo equipo = Equipo(
    codigo: 12345,
    marca: "Los lobos perdidos",
    color: "Rojos",
    precioDolares: 120000.99,
  );

  print(
    "El equipo ${equipo.marca} está a la venta por \$${equipo.precioDolares}.\nPrecio en soles: S/.${equipo.obtenerPrecioEquipoSoles().toStringAsFixed(2)}\nPrecio en euros: E/.${equipo.obtenerPrecioEquipoEuros().toStringAsFixed(2)}",
  );
}
