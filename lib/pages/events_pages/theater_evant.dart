import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/event_details.dart';

class TheaterEvant extends StatelessWidget {
  const TheaterEvant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventDetails(
        apBarColor: Colors.red,
        apBarImageAsset: 'images/theater.jpg',
        eventLocal: 'الرباط',
        eventDate: 'الأحد 28 أبريل 2024',
        aboutEvent:
            ' تقع السينما في مدينة الرباط، سيتم عرض يوم الاحد 28 أبريل ....للمزيد من التفاصيل المرجو تسجيل الدخول ',
        mapLink: () {},
        eventTime: '20:00 - 22:30',
      ),
    );
  }
}
