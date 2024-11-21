import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/pages/addevent.dart';
import 'package:flutter_project_for_retired_seniors/pages/search.dart';
import 'package:flutter_project_for_retired_seniors/pages/home.dart';
import 'package:flutter_project_for_retired_seniors/pages/myevents.dart';
import 'package:flutter_project_for_retired_seniors/pages/setting.dart'; // Ensure you import Settings

class BottomNavigationBarComponent extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigationBarComponent({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(), // Ensure these screens are defined
      const SearchScreen(),
      const AddScreen(),
      const EventsScreen(),
      const SettingsScreen(),
    ];

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
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
                size: 56.0,
                color: Colors.transparent,
              ),
              Icon(
                Icons.add_circle,
                size: 60.0,
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
      currentIndex: selectedIndex,
      onTap: (index) {
        // Handle navigation and update the selected index
        onItemTapped(index);

        // Navigate to the selected screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screens[index]),
        );
      },
      selectedItemColor: const Color.fromRGBO(42, 99, 168, 1),
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}
