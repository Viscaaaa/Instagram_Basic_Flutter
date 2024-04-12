import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intagram_app/ui/screen/home_screen.dart';
import 'package:intagram_app/ui/screen/live_screen.dart';
import 'package:intagram_app/ui/screen/profile_screen.dart';
import 'package:intagram_app/ui/screen/search_screen.dart';
import 'package:intagram_app/ui/screen/shop_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onTap(int nomor) {
    setState(() {
      _selectedIndex = nomor;
    });
  }

  List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    LiveScreen(),
    ShopScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Theme.of(context).brightness == Brightness.light
            ? 'assets/icons/ic_logo_dark.svg'
            : 'assets/icons/ic_logo_light.svg'),
        actions: [
          Icon(Icons.add_box),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.favorite_border_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.send_outlined),
          )
        ],
      ),
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        selectedItemColor: Colors.pink,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2
                  ? Icons.video_call
                  : Icons.video_call_outlined),
              label: "Live"),
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 3 ? Icons.shop : Icons.shop_outlined),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 4 ? Icons.person : Icons.person_outlined),
              label: "Account"),
        ],
      ),
    );
  }
}
