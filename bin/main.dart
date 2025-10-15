import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import '../lib/handlers/cart_handler.dart';

void main() async {
  final router = Router()
    ..get('/cart', getCart)
    ..post('/cart', addToCart)
    ..delete('/cart/<productId>', removeFromCart);

  final handler = Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await io.serve(handler, InternetAddress.anyIPv4, 8080);
  print('Server running on localhost:${server.port}');
}
