import 'package:flutter/material.dart';
import 'singup.dart';
import 'singin.dart';

class SignInUpScreen extends StatelessWidget {
  const SignInUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                Container(
                  width: 170.0,
                  child: Image.asset('./images/logo.png'),
                ),
                SizedBox(height: 30.0),

                // Arabic Text with RTL support
                SizedBox(
                  width: 300.0,
                  child: Directionality(
                    textDirection: TextDirection.rtl, // Ensures RTL text
                    child: Text(
                      'انضم إلينا لتكتشف خبرات وتجارب جديدة، ولتشاركها مع أصدقاء جدد.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.0),

                // Registration Button
                buildCustomButton(
                  text: 'تسجيل',
                  color: Color.fromRGBO(4, 82, 133, 0.29), // Adjusted opacity
                  onPressed: () {
                    // Navigate to Sign Up Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                ),
                SizedBox(height: 30.0),

                // Login Button
                buildCustomButton(
                  text: 'دخول',
                  color: Color.fromRGBO(203, 187, 190, 0.6), // Adjusted opacity
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable Button Widget
  Widget buildCustomButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 18), // Increased font size slightly
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white, // Ensures white text
        elevation: 2, // Reduced elevation for a cleaner look
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 50, vertical: 14), // Better padding
      ),
    );
  }
}
