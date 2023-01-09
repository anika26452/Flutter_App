import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/src/modules/auth/login/login.dart';
import 'package:my_first_flutter_app/src/modules/menu/menu.dart';

class Navigat extends StatefulWidget {
  const Navigat({super.key});

  @override
  State<Navigat> createState() => _NavigatState();
}

class _NavigatState extends State<Navigat> {
  var _currentindex = 0;
  final pages = [
    MenuView(),
    LoginScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More")
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: pages[_currentindex],
    );
  }
}