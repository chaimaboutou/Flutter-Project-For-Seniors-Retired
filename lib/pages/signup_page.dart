import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/login_textfield.dart';
import 'package:flutter_project_for_retired_seniors/pages/home_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'تسجيل',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'إنشاء حساب جديد',
                  style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 20),
                    const LoginField(
                        hintText: 'إسم المستخدم', icons: Icons.person),
                    const SizedBox(height: 20),
                    const LoginField(
                        hintText: 'البريد الالكتروني', icons: Icons.email),
                    const SizedBox(height: 20),
                    const LoginField(
                        hintText: 'كلمة المرور', icons: Icons.password),
                    const SizedBox(height: 20),
                    const LoginField(
                        hintText: 'تأكيد كلمة المرور', icons: Icons.password),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: Colors.blue),
                        child: const Text(
                          'إنشاء الحساب',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ],
                ),
                const Text('أو'),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.blue,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          'التسجيل بحساب Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('هل لديك حساب مسبق ؟'),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'دخول',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
