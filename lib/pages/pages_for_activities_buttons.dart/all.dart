import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/eventcard_descriptionleft.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart'; // Import the bottom navigation bar component

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
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
              'الكل',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 8.0),
          ],
        ),
        backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.0),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing3.jpeg'),
              title: ' تلوين الرسومات',
              date: '15 أكتوبر 2024',
              location: 'مراكش',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/cycling.jpeg'),
              title: 'سباق دراجات',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/bahamass.jpg'),
              title: 'رحلة إلى جزر البهاما',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/swim.webp'),
              title: 'السباحة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing4.jpeg'),
              title: 'الرسوم الكاريكاتورية',
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
              eventImage: AssetImage('images/drawing5.jpeg'),
              title: ' رسم الخط العربي',
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
              eventImage: AssetImage('images/drawing6.jpg'),
              title: '  الرسم الرقمي',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/swim.webp'),
              title: 'السباحة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing2.jpeg'),
              title: ' الرسم من الخيال',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
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
