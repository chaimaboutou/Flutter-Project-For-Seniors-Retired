import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/card_settings.dart';
import 'package:flutter_project_for_retired_seniors/pages/home_page.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  Widget buildTextTitle({
    required String title,
  }) {
    return Text(
      textDirection: TextDirection.rtl,
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.pinkAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(226, 245, 245, 245),
      appBar: AppBar(
        title: const Text('الإعدادات',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Align(
                //alignment: Alignment.centerRight,
                child: Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTextTitle(title: 'عام'),
                    CardSettings(
                      leadingIcon1: Icons.notifications,
                      listTitle1: 'التنبيهات',
                      onTap1: () {},
                      leadingIcon2: Icons.language,
                      listTitle2: 'اللغة',
                      onTap2: () {},
                    ),
                    const SizedBox(height: 20),
                    buildTextTitle(title: 'إعدادات الحساب'),
                    CardSettings(
                      leadingIcon1: Icons.person,
                      listTitle1: 'تعديل الملف الشخصي',
                      onTap1: () {},
                      leadingIcon2: Icons.lock,
                      listTitle2: 'تغيير كلمة المرور',
                      onTap2: () {},
                    ),
                    const SizedBox(height: 20),
                    buildTextTitle(title: 'الدعم'),
                    CardSettings(
                      leadingIcon1: Icons.report_problem,
                      listTitle1: 'سؤال أو مشكلة حول التطبيق',
                      onTap1: () {},
                      leadingIcon2: Icons.help,
                      listTitle2: 'الأسئلة الشائعة',
                      onTap2: () {},
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          'تسجيل الخروج من الحساب الحالي',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl, // RTL support
                        ),
                      ),
                    )
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
