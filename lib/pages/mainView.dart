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
  final _pages = [
    const HomePage(),
    const SearchPage(),
    const AddPostPage(),
    const NotificationsPage(),
    const ProfilePage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {});
            currentPage = i;
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Feed"
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Upload"
            ),
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: "Notifications"
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: const Image(
                  image: AssetImage('assets/images/Super.jpg'),
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              label: "Profile"
            ),
          ]),
    );
  }
}

