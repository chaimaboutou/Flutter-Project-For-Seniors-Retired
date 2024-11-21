import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/my_card_event.dart';
import 'package:flutter_project_for_retired_seniors/pages/events_pages/theater_evant.dart';
import 'package:flutter_project_for_retired_seniors/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl, // Set the entire page to RTL layout
        child: ListView(
          padding: const EdgeInsets.all(9),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderRow(context),
                const SizedBox(height: 15),
                const Text(
                  'مرحبًا بك في مجتمع ذوي الخبرة في الحياة.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'انضم إلينا لتكتشف خبرات وتجارب جديدة، ولتشاركها مع أصدقاء جدد.',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 10),
                const Text(
                  'الأحداث',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                _buildEventCard(
                    context,
                    'images/theater.jpg',
                    'مسرحية مسارح مدينة مراكش',
                    '21 ماي',
                    const TheaterEvant(),
                    const TheaterEvant()),
                _buildEventCard(
                    context,
                    'images/music.jpg',
                    'تعلم العزف على البيانو أكاديمية موسيقية في الرباط',
                    '15 ماي',
                    const TheaterEvant(),
                    const TheaterEvant()),
                _buildEventCard(
                    context,
                    'images/football.jpg',
                    'العب مباريات كرة القدم أكاديمية كرة القدم في الرباط',
                    '08 ماي',
                    const TheaterEvant(),
                    const TheaterEvant()),
                _buildEventCard(
                    context,
                    'images/chess.jpg',
                    'لعبة الشطرنج أكاديمية ألعاب الذكاء في الرباط',
                    '28 ماي',
                    const TheaterEvant(),
                    const TheaterEvant()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Method to build the header row with the button and logo
Widget _buildHeaderRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          elevation: 5,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.deepPurple[48],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
        child: const Text('دخول'),
      ),
      Image.asset(
        'images/logo1.png',
        width: 80,
        height: 50,
      ),
    ],
  );
}

// Method to build event cards
Widget _buildEventCard(BuildContext context, String imagePath, String title,
    String date, Widget dateButton, Widget cardButton) {
  return MyCardEvent(
      eventImage: AssetImage(imagePath),
      eventDate: date,
      eventButton: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cardButton));
      },
      dateButton: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => dateButton));
      },
      eventTitle: title);
}
