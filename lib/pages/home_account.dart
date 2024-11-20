import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/pages/buttom_screens/add_screen.dart';
import 'package:flutter_project_for_retired_seniors/pages/buttom_screens/home_screen.dart';
import 'package:flutter_project_for_retired_seniors/pages/buttom_screens/my_events_screen.dart';
import 'package:flutter_project_for_retired_seniors/pages/buttom_screens/search_screen.dart';
import 'package:flutter_project_for_retired_seniors/pages/buttom_screens/setting_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeAccount extends StatefulWidget {
  const HomeAccount({super.key});

  @override
  State<HomeAccount> createState() => _HomeAccountState();
}

class _HomeAccountState extends State<HomeAccount> {
  int _currentIndex = 0;

  //List of Screens to navigate between
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const MyEventsScreen(),
    const SettingScreen(),
  ];
  final _items = [
    SalomonBottomBarItem(
        icon: const Icon(Icons.home),
        title: const Text('الرئيسية'),
        selectedColor: Colors.purple),
    SalomonBottomBarItem(
        icon: const Icon(Icons.search),
        title: const Text('Search'),
        selectedColor: Colors.blue),
    SalomonBottomBarItem(
        icon: const Icon(Icons.add),
        title: const Text('إضافة'),
        selectedColor: Colors.orange),
    SalomonBottomBarItem(
        icon: const Icon(Icons.favorite),
        title: const Text('أحداثي'),
        selectedColor: Colors.teal),
    SalomonBottomBarItem(
        icon: const Icon(Icons.settings),
        title: const Text('الإعدادات'),
        selectedColor: Colors.pink),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3D8E8),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26, // Shadow color
              blurRadius: 10, // How blurred the shadow is
              offset:
                  Offset(0, -2), // Offset of the shadow (-2 moves it upwards)
            ),
          ],
        ),
        child: SalomonBottomBar(
          items: _items,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
