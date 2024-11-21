import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/eventcard_descriptionleft.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart'; // Import the bottom navigation bar component

class SportEventsScreen extends StatefulWidget {
  const SportEventsScreen({super.key});

  @override
  _SportEventsScreenState createState() => _SportEventsScreenState();
}

class _SportEventsScreenState extends State<SportEventsScreen> {
  int _selectedIndex = 1; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'الرياضة',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8.0),
            Icon(
              Icons.sports_baseball,
              color: Colors.green.shade400,
              size: 30.0,
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.0),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/football.jpg'),
              title: 'مباراة كرة قدم',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/cycling.jpeg'),
              title: 'سباق دراجات',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/tennis.jpeg'),
              title: 'بطولة التنس',
              date: '15 أكتوبر 2024',
              location: 'مراكش',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/swim.webp'),
              title: 'السباحة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/golf.jpeg'),
              title: 'مباراة الجولف',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/football.jpg'),
              title: 'مباراة كرة قدم',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        // Add the BottomNavigationBarComponent here
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
