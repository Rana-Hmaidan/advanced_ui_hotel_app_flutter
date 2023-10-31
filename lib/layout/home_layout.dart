import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/screens/calender_page.dart';
import 'package:flutter_advanced_ui/screens/favourite_page.dart';
import 'package:flutter_advanced_ui/screens/notification_page.dart';
import 'package:flutter_advanced_ui/screens/search_page.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _activePageIndex = 0;

  List<Widget> screens = [
    const SearchPage(),
    const NotificationPage(),
    const FavouritePage(),
    const CalenderPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: "Find "),
              TextSpan(text: "the best", style: TextStyle(
                backgroundColor: AppColors.mainColor,
                height: 32/ 24,
              )),
              TextSpan(text: "\nfor your holiday"),

            ]
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: GNav(
              backgroundColor: const Color(0xFFE4E7E8),
              tabBackgroundColor: AppColors.secondary,
              tabMargin: const EdgeInsets.all(8),
              tabBorderRadius: 20,
              activeColor: Colors.white,
              duration: const Duration(milliseconds: 300), // tab animation duration
              onTabChange: (index) {
                setState(() {
                  _activePageIndex = index;
                });
              },
              tabs: const [
                GButton(icon: CupertinoIcons.search),
                GButton(icon: CupertinoIcons.bell),
                GButton(icon: CupertinoIcons.heart),
                GButton(icon: CupertinoIcons.calendar),
              ],
            ),
          ),
        ),
      ),
      body: screens[_activePageIndex],
    );
  }
}