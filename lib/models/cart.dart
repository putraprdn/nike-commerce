import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Jordan',
      price: '230',
      description:
          'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering OG fans a look at how far the Jordan brand has come since 1985.',
      imagePath: 'lib/images/AirJordan.png',
    ),
    Shoe(
      name: 'Nike Kobe 5 Protro',
      price: '210',
      description:
          'The Nike Kobe 5 Protro “5 Rings” is a special edition of the fifth Kobe Bryant signature shoe.',
      imagePath: 'lib/images/Kobe.png',
    ),
    Shoe(
      name: 'Nike Metcon 9',
      price: '225',
      description:
          'The Nike Metcon 6 is designed for athletes who want stability and versatility.',
      imagePath: 'lib/images/Metcon.png',
    ),
    Shoe(
      name: 'Nike Zoom Freak',
      price: '200',
      description:
          'The Nike Zoom Freak 2 is Giannis Antetokounmpo’s second signature shoe with Nike Basketball.',
      imagePath: 'lib/images/ZoomFreak.png',
    )
  ];

  // list of items in the user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
