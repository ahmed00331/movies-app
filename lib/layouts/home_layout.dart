import 'package:flutter/material.dart';

import '../screens/browseScreen/browse_screen.dart';
import '../screens/homeScreen/home_screen.dart';
import '../screens/searchScreen/serach_screen.dart';
import '../screens/watchListScreen/watch_list_screen.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFF1A1A1A),
        selectedItemColor: Color(0xFFFFBB3B),
        unselectedItemColor: Color(0xFFC6C6C6),
        onTap: (value) {
          index = value;
          setState(() {});
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_rounded), label: "Browse"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/Icon ionic-md-bookmarks.png")),
              label: "WatchList"),
        ],
      ),
      body: screens[index],
    );
  }

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    BrowserScreen(),
    WatchListScreen()
  ];
}
