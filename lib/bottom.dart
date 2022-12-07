import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined, color: Colors.black),
          label: 'Messages'),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Colors.black), label: 'More'),
    ]);
  }
}
