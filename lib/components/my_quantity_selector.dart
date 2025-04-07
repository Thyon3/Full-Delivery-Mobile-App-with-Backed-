import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  const MyQuantitySelector({
    super.key,
    required this.food,
    required this.onDecrement,
    required this.onIncrement,
    required this.quantity,
  });
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(90),
      ),
      padding: EdgeInsets.all(2),

      child: SizedBox(
        width: 20,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
                weight: 5,
              ),
            ),

            Text(
              quantity.toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            GestureDetector(
              onTap: onIncrement,

              child: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
                weight: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
