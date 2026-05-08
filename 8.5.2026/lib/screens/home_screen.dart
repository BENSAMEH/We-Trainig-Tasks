import 'package:coffeeapp/screens/cold_coffee.dart';
import 'package:coffeeapp/screens/desserts_coffee.dart';
import 'package:flutter/material.dart';

import 'hot_coffee.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff1C1B1B),

        appBar: AppBar(centerTitle: true,
          backgroundColor: const Color(0xff1C1B1B),
          elevation: 0,
          title:  Text(
            "Coffee App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white70
            ),
          ),

          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Hot Coffee"),
              Tab(text: "Cold Coffee"),
              Tab(text: "Desserts"),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HotCoffee(),
            ColdCoffee(),
            DessertsCoffee()
          ],
        ),
      ),
    );
  }
}

