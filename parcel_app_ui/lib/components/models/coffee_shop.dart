import 'package:flutter/material.dart';
import 'package:parcel_app_ui/components/models/coffe.dart';

class CoffeShop extends ChangeNotifier {
  List<coffee> _shop = [
    coffee(
        name: "Black Coffe",
        price: "\$ 60",
        imagePath: "assets/images/black.png"),
    coffee(
        name: "Ice Coffe",
        price: "\$ 120",
        imagePath: "assets/images/ice-coffee.png"),
    coffee(
        name: "Latte Coffe",
        price: "\$ 160",
        imagePath: "assets/images/latte.png"),
    coffee(
        name: "Coffe", price: "\$ 40", imagePath: "assets/images/coffee.png"),
  ];
//cart
  List<coffee> _usercart = [];
  //get coffe List
  List<coffee> get coffeShop => _shop;
  //get User Cart
  List<coffee> get usercart => _usercart;
  //add cart
  void addCart(coffee coffee) {
    _usercart.add(coffee);
    notifyListeners();
  }

  void reMoveCart(coffee coffee) {
    _usercart.remove(coffee);
    notifyListeners();
  }
}
