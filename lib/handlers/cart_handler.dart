import 'dart:convert';
import 'package:shelf/shelf.dart';
import '../models/cart_item.dart';
import '../services/cart_service.dart';

final cartService = CartService();

Response getCart(Request request) {
  final cart = cartService.getCart();
  return Response.ok(jsonEncode(cart.map((item) => item.toJson()).toList()),
      headers: {'Content-Type': 'application/json'});
}

Future<Response> addToCart(Request request) async {
  final payload = await request.readAsString();
  final data = jsonDecode(payload);
  final item = CartItem(productId: data['productId'], quantity: data['quantity']);
  cartService.addToCart(item);
  return Response.ok('Item added to cart');
}

Response removeFromCart(Request request, String productId) {
  cartService.removeFromCart(productId);
  return Response.ok('Item removed from cart');
}
