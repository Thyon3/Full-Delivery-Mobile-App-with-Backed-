import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;

  MySliverAppBar({super.key, required this.title, required this.child});
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120,
      collapsedHeight: 80,
      title: title,
      floating: true,
      pinned: true,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, size: 30)),
      ],
    );
  }
}
