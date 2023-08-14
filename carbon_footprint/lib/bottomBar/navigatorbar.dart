import 'package:carbon_footprint/bottomBar/feed/feed_post.dart';
import 'package:flutter/material.dart';

import '../Screens/home.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    CarbonFootprintScreen(),
    FeedPage(),
    // Add other screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks),
            label: 'Feed',
          ),
        ],
      ),
    );
  }
}
