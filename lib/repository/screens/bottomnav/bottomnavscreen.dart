import 'package:blinkit_clone/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/repository/screens/home/homescreen.dart';
import 'package:blinkit_clone/repository/screens/print/printscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
    int currentIndex = 0;
    List<Widget>pages = [
      HomeScreen(),
      CartScreen(),
      CategoryScreen(),
      PrintScreen()
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home.png"),label: "Home"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "shopping_bag.png"), label: "Cart"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "category.png"), label: "Category"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "printer.png"), label: "Print")
      ],
      type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
        setState(() {
          currentIndex = index;
        });
        },),
    );
  }
}
