import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/button_activity.dart';
import 'package:flutter_project_for_retired_seniors/components/small_event_card.dart';
import 'package:flutter_project_for_retired_seniors/pages/pages_for_activities_buttons.dart/sport.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart';
import 'package:flutter_project_for_retired_seniors/pages/pages_for_activities_buttons.dart/drawing.dart';
import 'package:flutter_project_for_retired_seniors/pages/pages_for_activities_buttons.dart/trip.dart';
import 'package:flutter_project_for_retired_seniors/pages/pages_for_activities_buttons.dart/all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 40, left: 20, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [
                    SizedBox(width: 8.0),
                    Text(
                      ' الرئيسية',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'بحث ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllScreen()),
                        );
                      },
                      child: const Text(
                        'الكل',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.hiking,
                      label: 'الرحلات',
                      iconColor: Colors.deepPurple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TripScreen()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.sports_baseball,
                      label: 'الرياضة',
                      iconColor: Colors.green.shade400,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SportScreen()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.brush,
                      label: 'الرسم',
                      iconColor: Colors.red.shade400,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DrawingScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'الأحداث القريبة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SmallEventCard(
                      eventImage: AssetImage('images/music.jpg'),
                      title: 'حفل موسيقي',
                      date: '12 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0),
                    SmallEventCard(
                      eventImage: AssetImage('images/chess.jpg'),
                      title: 'لعبة الشطرنج',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0),
                    SmallEventCard(
                      eventImage: AssetImage('images/football.jpg'),
                      title: 'مباراة كرة قدم',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'الأحداث القادمة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SmallEventCard(
                      eventImage: AssetImage('images/garddening.jpeg'),
                      title: 'البستنة',
                      date: '12 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0),
                    SmallEventCard(
                      eventImage: AssetImage('images/photoraphy.webp'),
                      title: 'التصوير الفوتوغرافي',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0),
                    SmallEventCard(
                      eventImage: AssetImage('images/cycling.jpeg'),
                      title: 'ركوب الدراجات',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
