import 'package:flutter/material.dart';

class StoreModel extends ChangeNotifier {
  // list of items on sale
  final List _storeItems = const [

    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],
    ["Banana", "1 dozen", "assets/banana.png", Colors.yellow, "35"],
    ["Chicken", "1 kg", "assets/chicken.png", Colors.brown, "150"],
    ["Water", "1 bottle", "assets/water.png", Colors.blue, "20"],
    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],
    ["Water", "1 bottle", "assets/water.png", Colors.blue, "20"],
    ["Avocado", "1 kg", "assets/avocado.png", Colors.green, "100"],

  ];

  // list of cart items
  List _shopItems = [];

  get shopItems => _shopItems;


  get storeItems => _storeItems;


}