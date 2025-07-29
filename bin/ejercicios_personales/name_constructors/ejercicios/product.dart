final Map<String, dynamic> productJson = {
  "id": "prod123",
  "name": "Laptop Gamer Pro",
  "price": 1200.50,
  "inStock": true,
  "manufacturer": {"name": "TechCorp", "country": "USA"},
  "tags": ["gaming", "high-performance", "electronics"],
};

final Map<String, dynamic> productJsonMissingStock = {
  "id": "prod456",
  "name": "Teclado Mecánico",
  "price": 75.00,
  // "inStock" falta intencionalmente
  "manufacturer": {"name": "KeyMasters", "country": "Germany"},
  "tags": ["mechanical", "office", "accessories"],
};

void main() {
  final Product aliExpress = Product.fromJson(productJson);
  print(aliExpress);

  final Product mercadoLibre = Product.fromJson(productJsonMissingStock);
  print(mercadoLibre);
}

class Product {
  final String id;
  final String name;
  final double price;
  final bool inStock;
  final String manufacturerName;
  final String manufacturerCountry;
  final List<String> tags;

  Product.fromJson(Map<String, dynamic> json)
    : id = json["id"] ?? "ID no encontrado",
      name = json["name"] ?? "Nombre no encontrado",
      price = json["price"] ?? 0.0,
      inStock = json["inStock"] ?? false,
      manufacturerName =
          json["manufacturer"]["name"] ?? "Nombre manufactura no encontrado",
      manufacturerCountry =
          json["manufacturer"]["country"] ??
          "País de manufactura no encontrado",
      tags =
          (json["tags"] as List<dynamic>?)
              ?.map((tag) => tag.toString())
              .toList() ??
          [];

  @override
  String toString() {
    return """
    Nombre: $name;
    Precio: $price;
    Stock: ${inStock ? "Disponible" : "No disponible"};
    Nombre manufactura: $manufacturerName;
    País manufactura: $manufacturerCountry;
    Tags: $tags\n
    """;
  }
}
