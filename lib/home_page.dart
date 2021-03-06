import 'package:flutter/material.dart';

import 'dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var selectedItem = 0;
    List children = [
      DashboardPage(),
      DashboardPage(),
      DashboardPage(),
      DashboardPage()
    ];
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Color(0xFFFD4F99),
        iconSize: 27,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: Color(0XFF1B1B1B)),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currentIndex) {
          setState(() {
            selectedItem = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF1B1B1B),
              icon: Icon(Icons.home),
              title: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFD4F99)))),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF1B1B1B),
              icon: Icon(Icons.search),
              title: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFD4F99)))),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF1B1B1B),
              icon: Icon(Icons.camera_alt),
              title: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFD4F99)))),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF1B1B1B),
              icon: Icon(Icons.person_outline),
              title: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFD4F99))))
        ],
      ),
    );
  }
}
