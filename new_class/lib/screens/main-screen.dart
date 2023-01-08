import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:new_class/screens/Home-screen.dart';
import 'package:new_class/screens/cart-screen.dart';
import 'package:new_class/screens/favourite-screen.dart';


class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentindex = 0;
  final screens = [
    Center(
      child: Home(),
    ),
    Center(
      child: Favourite(favourite: [],),
    ),
    Center(child: Cart(cart: [],)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.green,
            selectedItemColor: Colors.blue[900],
            unselectedItemColor: Colors.white70,
            showUnselectedLabels: false,

            currentIndex: currentindex,
            onTap: (index) => setState(() {
                  currentindex = index;
                }),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "Favourite",
                  backgroundColor: Colors.redAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: "Cart",
                  backgroundColor: Colors.green),
            ]));
  }
}