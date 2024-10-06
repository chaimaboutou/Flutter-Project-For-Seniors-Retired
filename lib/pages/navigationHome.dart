import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'addevent.dart';
import 'myevents.dart';
import 'setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    EventsScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 56.0, // Background circle size
                  color: Colors.transparent, // Change this to a color if needed
                ),
                Icon(
                  Icons.add_circle,
                  size: 60.0, // Icon size
                ),
              ],
            ),
            label: 'إضافة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'أحداثي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color.fromRGBO(42, 99, 168, 1),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
