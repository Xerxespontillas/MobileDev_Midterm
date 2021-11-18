import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midterm_project_3rdyear_1stsem/Favorites/food.dart';

class dash extends StatefulWidget {
  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  int currentIndex = 0;
  final screens = [
    Center(
        child: Text(
      'Home',
      style: TextStyle(color: Colors.black, fontSize: 60),
    )),
    Center(
        child: Text(
      'Search',
      style: TextStyle(color: Colors.black, fontSize: 60),
    )),
    Center(
        child: Text(
      'Camera',
      style: TextStyle(color: Colors.black, fontSize: 60),
    )),
    faves(),
    Center(
        child: Text(
      'Profile',
      style: TextStyle(color: Colors.black, fontSize: 60),
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red[600],
          currentIndex: currentIndex,
          iconSize: 40,
          onTap: (index) => setState(() => currentIndex = index),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF83AF7D), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.camera_alt, color: Colors.white),
                  )),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: 'Profile')
          ],
        ));
  }
}
