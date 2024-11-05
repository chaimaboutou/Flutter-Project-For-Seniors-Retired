import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/login_textfield.dart';
import 'package:flutter_project_for_retired_seniors/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              )),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(24),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'مرحبا بعودتك',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const Text(
                'أدخل بياناتك لتسجيل الدخول',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LoginField(
                      hintText: 'إسم المستخدم', icons: Icons.person),
                  const SizedBox(height: 10),
                  const LoginField(
                      hintText: 'كلمة المرور', icons: Icons.password),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.blue),
                      child: const Text(
                        'دخول',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))
                ],
              ),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'نسيت كلمة المرور؟',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

  _signup(context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('هل تمتلك حساب؟'),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpPage()),
              );
            },
            child: const Text(
              'إنشاء حساب',
              style: TextStyle(color: Colors.blue),
            ))
      ],
    );
  }
}
