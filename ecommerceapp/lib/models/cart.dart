import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Dunk Low',
        price: '236',
        imagePath: 'img/nike-dunk.webp',
        description: 'Uma breve descrição do produto'),
    Shoe(
        name: 'Air Max F',
        price: '289',
        imagePath: 'img/nike97.webp',
        description: 'Tênis Air Max'),
    Shoe(
        name: 'Air Max Excee',
        price: '350',
        imagePath: 'img/nike-tenis-air-max-excee.webp',
        description: 'Tenis Air Max'),
    Shoe(
        name: 'Nike Dunk',
        price: '199',
        imagePath: 'img/nike-dunk.webp',
        description: 'Tenis Dunk')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
