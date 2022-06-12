import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';
import 'package:instagram/util/user_posts.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 2;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
    UserPosts(name: "name")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedindex,
            onTap: _navigateBottomNavBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: 'reels'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'account'),
            ]));
  }
}
