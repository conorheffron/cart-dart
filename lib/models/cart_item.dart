class CartItem {
  final String productId;
  final int quantity;

  CartItem({required this.productId, required this.quantity});

  Map<String, dynamic> toJson() => {
    'productId': productId,
    'quantity': quantity,
  };
}
