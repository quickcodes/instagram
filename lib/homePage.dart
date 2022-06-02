import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/like.dart';
import 'package:instagram/pages/reel.dart';
import 'package:instagram/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateToBottomNavigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = const [
    UserHome(),
    UserSearch(),
    UserReel(),
    UserLike(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateToBottomNavigationBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: "reels",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "likes",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "account",
            ),
          ]),
    );
  }
}
