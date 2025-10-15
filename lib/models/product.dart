class Product {
  final String id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
  };
}
