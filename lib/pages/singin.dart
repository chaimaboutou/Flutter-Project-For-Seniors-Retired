import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end, // Align title to the right
          children: [
            Text(
              'دخول',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(235, 228, 230, 1),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align column children to the start (right)
              children: [
                SizedBox(height: 15.0),
                // Title for Username
                Text(
                  'اسم المستخدم',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 8.0),
                // Text Field for Name
                TextField(
                  textAlign: TextAlign.right, // Ensure text is aligned right
                  decoration: InputDecoration(
                    labelText: 'اسم المستخدم',
                    labelStyle: TextStyle(
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintText: 'أدخل اسم المستخدم',
                  ),
                ),
                SizedBox(height: 20.0),

                // Title for Phone Number

                // Title for Password
                Text(
                  'كلمة المرور',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 8.0),
                // Text Field for Password
                TextField(
                  textAlign: TextAlign.right, // Ensure text is aligned right
                  decoration: InputDecoration(
                    labelText: 'كلمة المرور',
                    hintText: 'أدخل كلمة المرور',
                    labelStyle: TextStyle(
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),

                // Title for Confirm Password

                SizedBox(height: 30.0),

                // Align the Sign Up Button to the right
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Sign-up logic will go here
                    },
                    child: Text(
                      'دخول',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(235, 228, 230, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some spacing at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
