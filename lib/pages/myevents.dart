import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/eventcard_descriptionleft.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  int _selectedIndex = 3;
  int _selectedButtonIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            145), // Increase or decrease this value to change the height
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0), // Adjust padding around content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                      right: 10.0,
                      bottom: 8.0), // Adjust padding as needed
                  child: Row(
                    children: [
                      SizedBox(width: 8.0),
                      Text(
                        'الأحداث الخاصة بي',
                        style: TextStyle(
                          fontSize: 24, // Adjust font size as needed
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                // Buttons under the title
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly, // Spread buttons evenly
                    children: [
                      _buildButton("الأحداث المفضلة", 0),
                      SizedBox(width: 2), // Add space between buttons
                      _buildButton("التذاكر الخاصة بك", 1),
                      SizedBox(width: 2), // Add space between buttons
                      _buildButton("الأحداث التي قمت بإنشائها", 2),
                      SizedBox(width: 2), // Add space between buttons
                      _buildButton("الكل", 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.0),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing1.jpeg'),
              title: 'رسم الطبيعة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing2.jpeg'),
              title: 'الرسم من الخيال',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/swim.webp'),
              title: 'السباحة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/cycling.jpeg'),
              title: 'سباق دراجات',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            // Add more events as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildButton(String text, int index) {
    return ElevatedButton(
      onPressed: () => _onButtonPressed(index),
      style: ElevatedButton.styleFrom(
        backgroundColor: _selectedButtonIndex == index
            ? Color.fromRGBO(42, 99, 168, 1)
            : Colors.white,
        foregroundColor: Colors.white, // This will set the default text color
        padding: const EdgeInsets.symmetric(horizontal: 16),
        fixedSize: const Size(90, 70), // Set a fixed width and height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: _selectedButtonIndex == index
                ? Color.fromRGBO(42, 99, 168, 1)
                : Color.fromRGBO(42, 99, 168, 1), // Change the border color
            width: 2.0, // Adjust border width as needed
          ),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center, // Center the text
        style: TextStyle(
          fontSize: 14, // Adjust font size as needed
          color: _selectedButtonIndex == index
              ? Colors.white
              : Color.fromRGBO(42, 99, 168, 1), // Set text color explicitly
        ),
      ),
    );
  }
}
