import 'package:shopping_cart_dart/models/cart_item.dart';
import 'package:shopping_cart_dart/services/cart_service.dart';
import 'package:test/test.dart';

void main() {
  group('CartService', () {
    late CartService cartService;

    setUp(() {
      cartService = CartService();
    });

    test('should add items to the cart', () {
      // given
      var given = CartItem(productId: '123', quantity: 77);

      // when
      cartService.addToCart(given);

      // then
      bool containsItem = cartService.getCart().any(
              (item) => item.productId == '123' && item.quantity == 77);
      expect(containsItem, true);
    });
  });
}
