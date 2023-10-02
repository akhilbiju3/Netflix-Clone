import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/coming_soon/coming_soon.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/download.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/home.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/menu.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/search.dart';
import 'package:stateful_splashscreen/view/homescreen/homescreen_popular_widget.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selection = 0;

  void tap(index) {
    setState(() {
      selection = index;
    });
  }

  final screens = [Home(), Search(), Comingsoon(), Download(), Menu()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selection],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: const Color.fromARGB(255, 219, 218, 218),
          backgroundColor: Color.fromARGB(255, 28, 28, 28),
          fixedColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selection,
          onTap: (value) => tap(value),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 219, 218, 218),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: const Color.fromARGB(255, 219, 218, 218),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_collection_outlined,
                  color: const Color.fromARGB(255, 219, 218, 218),
                ),
                label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                  color: const Color.fromARGB(255, 219, 218, 218),
                ),
                label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: const Color.fromARGB(255, 219, 218, 218),
                ),
                label: "Menu"),
          ]),
    );
  }
}
