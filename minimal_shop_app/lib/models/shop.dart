import 'package:flutter/material.dart';
import 'package:minimal_shop_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 99.99,
      description: "Item description..",
      imagePath: 'assets/SoccerBall1.png',
    ),
    Product(
      name: 'Product 2',
      price: 99.99,
      description: "Item description..",
      imagePath: 'assets/SoccerBall2.png',
    ),
    Product(
      name: 'Product 3',
      price: 99.99,
      description: "Item description..",
      imagePath: 'assets/SoccerBall3.png',
    ),
    Product(
      name: 'Product 4',
      price: 99.99,
      description: "Item description..",
      imagePath: 'assets/SoccerBall4.png',
    ),
  ];

  // user cart
  final List<Product> _cart = [];

  // get price product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
