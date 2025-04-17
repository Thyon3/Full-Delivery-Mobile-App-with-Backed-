import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/components/myreciet.dart';

class Deliveryprogress extends StatefulWidget {
  @override
  State<Deliveryprogress> createState() => _DeliveryprogressState();
}

class _DeliveryprogressState extends State<Deliveryprogress> {
  Widget _customNavigationBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //drivers profile picture
          Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, size: 25),
            ),
          ),
          SizedBox(width: 20),

          // driver details
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Thyon Mengesha',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.start,
                'Driver',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),

          //message Button
          Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.message, size: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                size: 25,
                color: const Color.fromARGB(255, 34, 131, 37),
              ),
            ),
          ),

          // call B utton
        ],
      ),
    );
  }

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delivery In progress ...")),
      bottomNavigationBar: _customNavigationBar(context),
      body: Center(
        child: Column(
          children: [
            Text('Thank for your order...'),
            Myreciet(),
            SizedBox(height: 25),
            Text('Estimated Delivery Time: 9:10AM'),
          ],
        ),
      ),
    );
  }
}
