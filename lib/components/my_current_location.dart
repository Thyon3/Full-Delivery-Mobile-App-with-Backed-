import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCurrentLocation extends StatelessWidget {
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Your address'),
            content: TextField(
              decoration: InputDecoration(hintText: 'Search address...'),
            ),
            actions: [
              MaterialButton(
                onPressed: Navigator.of(context).pop,
                child: Text('Cancel'),
              ),
              MaterialButton(
                onPressed: Navigator.of(context).pop,
                child: Text('Save'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver Now',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),

            GestureDetector(
              onTap: () {
                openLocationSearchBox(context);
              },
              child: Row(
                children: [
                  Text(
                    'Arat Killo Adwa St',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
