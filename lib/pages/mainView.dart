import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/profilePage.dart';
import 'package:instagram_ui/pages/searchPage.dart';

import 'HomePage.dart';
import 'addPostPage.dart';
import 'notificationsPage.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  var _pages = [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    NotificationsPage(),
    ProfilePage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {});
            currentPage = i;
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Feed"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Upload"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: "Notifications"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: "Profile"
            ),
          ]),
    );
  }
}
