import 'entities/factura.dart';

void main() {
  print("Entidad Reguladora: ${Factura.entidadReguladora}");
  print("Facturas iniciales: ${Factura.cantidadFacturasCreadas}");
  print("Suma importes inicial: ${Factura.sumaImportesFacturados}");

  final factura1 = Factura("20100050001", "Tech Solutions SAC", 5, 150.75);
  print(factura1);
  print("Facturas después de f1: ${Factura.cantidadFacturasCreadas}");
  print("Suma importes después de f1: ${Factura.sumaImportesFacturados}");

  final factura2 = Factura.conValoresDefecto("20200080002", "Consultores XYZ");
  print(factura2);
  print("Facturas después de f2: ${Factura.cantidadFacturasCreadas}");
  print("Suma importes después de f2: ${Factura.sumaImportesFacturados}");

  final factura3 = Factura.sinParametros();
  print(factura3);
  print("Facturas después de f3: ${Factura.cantidadFacturasCreadas}");
  print("Suma importes después de f3: ${Factura.sumaImportesFacturados}");

  print("\n--- Modificando factura1 ---");
  factura1.unidades = 8;
  factura1.precioUnitario = 100.0;
  print(factura1);
  print(
    "Suma importes después de modificar f1: ${Factura.sumaImportesFacturados}",
  );
}
