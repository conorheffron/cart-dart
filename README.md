# cart-dart

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

[![Dart](https://github.com/conorheffron/cart-dart/actions/workflows/dart.yml/badge.svg)](https://github.com/conorheffron/cart-dart/actions/workflows/dart.yml)

### Add dependencies
```shell
dart pub add shelf
```

### Install dependencies
```shell
dart pub get
```

### Run Tests
```shell
dart test
```

### Run Server
```shell
dart run bin/main.dart
```

### Post Item 1
```shell
curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "123", "quantity":5}'
```
```
Item added to cart%          
```

### View Cart
```shell
curl -X GET http://localhost:8080/cart
```
```
[{"productId":"123","quantity":5}]%   
```

### Post Item 2
```shell
curl -X POST http://localhost:8080/cart \
-H "Content-Type: application/json" \
-d '{"productId": "732", "quantity":7}'
```
```
Item added to cart%      
```

### View Cart
```shell
curl -X GET http://localhost:8080/cart
```
```
[{"productId":"123","quantity":5},{"productId":"732","quantity":7}]%
```    
