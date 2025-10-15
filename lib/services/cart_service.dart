import '../models/cart_item.dart';

class CartService {
  final List<CartItem> _cart = [];

  List<CartItem> getCart() => _cart;

  void addToCart(CartItem item) {
    _cart.add(item);
  }

  void removeFromCart(String productId) {
    _cart.removeWhere((item) => item.productId == productId);
  }
}
