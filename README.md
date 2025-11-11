# cart-dart

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

[![Dart](https://github.com/conorheffron/cart-dart/actions/workflows/dart.yml/badge.svg)](https://github.com/conorheffron/cart-dart/actions/workflows/dart.yml)

### Add dependencies
```
dart pub add shelf
```

### Install dependencies
```
dart pub get
```

### Run Tests
```
dart test
```

### Run Server
```
dart run bin/main.dart
```

### Post Item 1
```
(base) cart-dart % curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "123", "quantity":5}'

Item added to cart%          
```

### View Cart
```
(base) cart-dart % curl -X GET http://localhost:8080/cart

[{"productId":"123","quantity":5}]%   
```

### Post Item 2
```
(base) cart-dart % curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "732", "quantity":7}'

Item added to cart%      
```

### View Cart
```
(base) cart-dart % curl -X GET http://localhost:8080/cart

[{"productId":"123","quantity":5},{"productId":"732","quantity":7}]%
```    
