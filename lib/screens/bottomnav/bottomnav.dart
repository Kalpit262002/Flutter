// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:glein/screens/bottomnav/home.dart';
import 'package:glein/screens/bottomnav/search.dart';
import 'package:glein/screens/bottomnav/bag.dart';
import 'package:glein/screens/bottomnav/wishlist1.dart';
import 'package:glein/screens/bottomnav/profile_bot.dart';

class HomeNav extends StatefulWidget {
  int myIndex = 2;
  HomeNav({super.key, required this.myIndex});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  List<Widget> widgetList = [
    const HomeScreen(),
    const SearchScreen(),
    const WishlistScreen1(),
    const BagScreen(),
    const ProfileBot(),
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: IndexedStack(
        children: [widgetList[widget.myIndex]],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle:
              TextStyle(fontFamily: 'Mont_b', fontSize: w * 0.025),
          selectedLabelStyle: TextStyle(
              fontFamily: 'Mont_b', fontSize: w * 0.025, color: Colors.black),
          backgroundColor: Colors.white,
          // fixedColor: Colors.black,
          selectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              widget.myIndex = index;
            });
          },
          currentIndex: widget.myIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: 'Bag'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
