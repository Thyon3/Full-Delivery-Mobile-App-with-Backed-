import 'package:thydelivery_mobileapp/models/food.dart';

class CartItem {
  final Food food;
  int quantity;
  final List<AddOns> addOns;

  CartItem({required this.food, this.quantity = 1, required this.addOns});

  double get getTotalPrice {
    double price = 0;
    for (AddOns item in addOns) {
      price = price + item.price;
    }

    return (price + food.price) * quantity;
  }

  List<AddOns> get availableAddOns {
    return addOns;
  }
}
