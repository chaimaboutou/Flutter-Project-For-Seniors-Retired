import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/eventcard_descriptionleft.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart'; // Import the bottom navigation bar component

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  int _selectedIndex = 0; // Track the selected index

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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'الرحلات',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 8.0),
            Icon(
              Icons.hiking,
              color: Colors.deepPurple,
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
              eventImage: AssetImage('images/tanger.jpg'),
              title: 'رحلة إلى طنجة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/rabat.webp'),
              title: 'رحلة الى الرباط',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/marakech.webp'),
              title: ' رحلة الى مراكش',
              date: '15 أكتوبر 2024',
              location: 'مراكش',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/chefchawn.jpg'),
              title: 'رحلة الى شفشاون',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/casa.jpeg'),
              title: 'رحلة الى الدار البيضاء',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/bahamass.jpg'),
              title: 'رحلة إلى جزر البهاما',
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
