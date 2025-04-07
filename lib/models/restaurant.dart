import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/models/cart_item.dart';
import 'package:thydelivery_mobileapp/models/food.dart';
import 'package:collection/collection.dart';

class Restaurant with ChangeNotifier {
  final List<Food> menu = [
    Food(
      name: 'Asnake burger ',
      description: ' a burger for Asnake Mengesha so sad  ',
      price: 12,
      imagePath: '',
      category: Category.burger,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
        AddOns(name: 'Asnakes french fires', price: 89),
      ],
    ),
    Food(
      name: 'chocolate Burger ',
      description:
          ' burger with a lot of chocolate test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.burger,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.sides,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.salad,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.salad,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.sides,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.drink,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.drink,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.desserts,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.burger,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.desserts,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.drink,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.sides,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.burger,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.sides,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.sides,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.drink,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
        AddOns(name: 'Asnakes french fires ', price: 90),
      ],
    ),
    Food(
      name: 'cheese Burger ',
      description:
          ' burger with a lot of cheesse test it the remaining part of it ',
      price: 12,
      imagePath: 'assets/Images/Burgers/Burgersimage.jpg',
      category: Category.drink,
      availableAddOns: [
        AddOns(name: 'cheese', price: 3),
        AddOns(name: 'cheese two', price: 3),
      ],
    ),
  ];

  //

  // getters

  //operators

  //creat a cart for the items
  final List<CartItem> _cart = [];

  // a getter for the cart

  List<CartItem> get getCart {
    return _cart;
  }

  //add to cart
  void addToCart(Food food, List<AddOns> availabaleAddOns) {
    //check if the item we are adding is already exist on the cart

    CartItem? _cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items we are passing are the same with any the ones in the cart

      final bool isTheSameFood = item.food == food;

      //check the addons
      final bool isTheSameAddOns = ListEquality().equals(
        item.availableAddOns,
        availabaleAddOns,
      );
      return isTheSameAddOns && isTheSameFood;
    });

    //if the cart item alrady exist we only have to increase the quantity of the item

    if (_cartItem != null) {
      _cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, addOns: availabaleAddOns));
    }

    notifyListeners();
  }

  //remove from cart

  void removeFromCart(CartItem _cartItem) {
    final int cartIndex = _cart.indexOf(_cartItem);
    if (cartIndex > -1) {
      if (_cartItem.quantity > 1) {
        _cartItem.quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
  }

  //get the total price of the cart

  double getTotalPrice() {
    double price = 0.0;
    for (CartItem cart in _cart) {
      price = price + (cart.getTotalPrice * cart.quantity);
    }
    return price;
  }

  //get the number of items inside of th cart

  int getNumberOfItemsInTheCart() {
    int total = 1;
    for (CartItem cart in _cart) {
      total += cart.quantity;
    }
    return total;
  }

  //cear the cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //helper methods
}
