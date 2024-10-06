import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/pages/home_page.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set Arabic as the locale
      locale: const Locale('ar'), // Locale for Arabic
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        // Provide localization for Material widgets
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // This sets the text direction globally
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl, // Right-to-left
          child: child!,
        );
      },
      home: const HomePage(),
    );
  }
}
