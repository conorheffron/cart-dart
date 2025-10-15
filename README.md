# cart-dart

### Add dependencies
dart pub add shelf

### Run Server
dart run bin/main.dart

(base) cart-dart % curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "123", "quantity":5}'
Item added to cart%          


(base) cart-dart % curl -X GET http://localhost:8080/cart

[{"productId":"123","quantity":5}]%   


(base) cart-dart % curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "732", "quantity":7}'
Item added to cart%      


(base) cart-dart % curl -X GET http://localhost:8080/cart

[{"productId":"123","quantity":5},{"productId":"732","quantity":7}]%     