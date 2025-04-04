import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/components/my_sliver_app_bar.dart';
import 'package:thydelivery_mobileapp/page/my_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: Text('Sunset Dinner'),
                child: Text('title'),
              ),
            ],
        body: Container(color: Colors.blue),
      ),
      drawer: MyDrawer(),
    );
  }
}
