import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'news.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<NavScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: .bold,
  );
  static List<Widget> _widgetOptions = <Widget>[
    News(),
    SearchScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.amber,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined,color:Colors.white ,),
            label: 'Home',labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search,color:Colors.white ,),
            label: 'Search',labelStyle: TextStyle(color: Colors.white)
          ),
        ],
        height: 60,
        color: Color(0xff001F3F),
        onTap: (index) {
          setState(() {
            _selectedIndex=index;
          });


        },
      ),

    );
  }
}