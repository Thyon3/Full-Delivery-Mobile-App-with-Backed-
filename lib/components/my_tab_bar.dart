import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/models/food.dart';

class MyTabBar extends StatelessWidget {
  MyTabBar({super.key, required this.tabController});

  List<Tab> categoryTabs() {
    return Category.values
        .map((category) => Tab(text: category.toString().split('.').last))
        .toList();
  }

  TabController tabController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TabBar(
        tabs: categoryTabs(),
        controller: tabController,
        indicatorSize: TabBarIndicatorSize.label,
        isScrollable: true,
        dividerHeight: -1,
        dragStartBehavior: DragStartBehavior.start,
        textScaler: TextScaler.linear(0.8),
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
