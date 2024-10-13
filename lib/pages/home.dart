import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/button_activity.dart';
import 'package:flutter_project_for_retired_seniors/components/small_event_card.dart'; // Import the SmallEventCard

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130), // Set the desired height
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align items to the start (left)
            children: [
              // Row for Profile Icon and User Name
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 20, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [
                    // Profile Icon
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 8.0), // Control space between icon and text
                    // User Name
                    Text(
                      'اسم المستخدم', // Replace with dynamic name if needed
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // Search Field
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
                    fillColor:
                        Colors.white, // Background color of the text field
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(234, 235, 248, 1),
        ),
      ),
      body: SingleChildScrollView(
        // Wrap the Column in SingleChildScrollView
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the start
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0), // Padding around the row
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space between buttons
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print("الكل button pressed");
                      },
                      child: Text(
                        'الكل',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Spacing between buttons
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.hiking,
                      label: 'الرحلات',
                      iconColor: Colors.deepPurple,
                      onPressed: () {
                        print("الرحلات button pressed");
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Spacing between buttons
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.sports_baseball,
                      label: 'الرياضة',
                      iconColor: Colors.green.shade400,
                      onPressed: () {
                        print("الرياضة button pressed");
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Spacing between buttons
                  Expanded(
                    child: IconButtonWithLabel(
                      icon: Icons.brush,
                      label: 'الرسم',
                      iconColor: Colors.red.shade400,
                      onPressed: () {
                        print("الرسم button pressed");
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey, thickness: 1.0), // Line below title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'الأحداث القريبة',
                textAlign: TextAlign.right, // Align text to the right
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200, // Set a fixed height for the card list
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SmallEventCard(
                      eventImage: const AssetImage('images/music.jpg'),
                      title: 'حفل موسيقي',
                      date: '12 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0), // Space between cards
                    SmallEventCard(
                      eventImage: const AssetImage(
                          'images/chess.jpg'), // Use the asset path
                      title: 'لعبة الشطرنج',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0), // Space between cards
                    SmallEventCard(
                      eventImage: const AssetImage(
                          'images/football.jpg'), // Use the asset path
                      title: 'مباراة كرة قدم',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.grey, thickness: 1.0), // Line below title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'الأحداث القادمة',
                textAlign: TextAlign.right, // Align text to the right
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200, // Set a fixed height for the card list
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SmallEventCard(
                      eventImage: const AssetImage('images/garddening.jpeg'),
                      title: 'البستنة',
                      date: '12 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0), // Space between cards
                    SmallEventCard(
                      eventImage: const AssetImage(
                          'images/photoraphy.webp'), // Use the asset path
                      title: 'التصوير الفوتوغرافي',
                      date: '13 أكتوبر 2024',
                      location: 'الرباط',
                    ),
                    SizedBox(width: 2.0), // Space between cards
                    SmallEventCard(
                      eventImage: const AssetImage(
                          'images/cycling.jpeg'), // Use the asset path
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
    );
  }
}
