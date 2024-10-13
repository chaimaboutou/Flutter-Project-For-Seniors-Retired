import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/my_card_event.dart';
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              // crossAxisAlignment:
              //     CrossAxisAlignment.center, // Center horizontally
              children: [
                // const SizedBox(
                //   height: 20,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(
                            20), // Padding inside the button
                        elevation: 5,
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.deepPurple[48],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0, // Rounded corners
                          ),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
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
                ),
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
                      color: Colors.deepOrange),
                ),
                MyCardEvent(
                    eventButton: () {},
                    eventImage: const AssetImage('images/theater.jpg'),
                    eventDate: '21 ماي',
                    dateButton: () {},
                    eventTitle: 'مسرحية مسارح مدينة مراكش'),
                MyCardEvent(
                    eventButton: () {},
                    eventImage: const AssetImage('images/music.jpg'),
                    eventDate: '15 ماي',
                    dateButton: () {},
                    eventTitle:
                        'تعلم العزف على البيانو أكاديمية موسيقية في الرباط'),
                MyCardEvent(
                    eventButton: () {},
                    eventImage: const AssetImage('images/football.jpg'),
                    eventDate: '08 ماي',
                    dateButton: () {},
                    eventTitle:
                        'العب مباريات كرة القدم أكاديمية كرو القدم في الرباط'),
                MyCardEvent(
                    eventButton: () {},
                    eventImage: const AssetImage('images/chess.jpg'),
                    eventDate: '28 ماي',
                    dateButton: () {},
                    eventTitle: 'لعبة الشطرنج أكاديمية ألعاب الذكاء في الرباط'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// Widget buildImageCard() => Card(
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//       child: Stack(
//         //alignment: Alignment.topRight,
//         textDirection: TextDirection.rtl,
//         children: [
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 print('YOU PRESS THE BUTTON !!!!');
//               },
//               child: const Image(
//                 image: AssetImage('images/1.jpg'),
//                 //height: 200,
//                 //fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.all(8),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                           15.0, // Rounded corners
//                         ),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       '21 ماي',
//                       textDirection: TextDirection.rtl,
//                       style:
//                           TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                     )),
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 const Text(
//                   'مسرحية مسارح مدينة مراكش',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
