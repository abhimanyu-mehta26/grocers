import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [

    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],
    ["Banana", "1 dozen", "assets/banana.png", Colors.yellow, "35"],
    ["Chicken", "1 kg", "assets/chicken.png", Colors.brown, "150"],
    ["Water", "1 bottle", "assets/water.png", Colors.blue, "20"],
    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],
    ["Water", "1 bottle", "assets/water.png", Colors.blue, "20"],
    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],

  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;


  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][4]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
