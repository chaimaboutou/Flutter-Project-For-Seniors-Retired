import 'package:flutter/material.dart';

import 'singin.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end, // Align title to the right
          children: [
            Text(
              'تسجيل ',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(4, 82, 133, 0.29),
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
                Text(
                  'رقم الهاتف',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 8.0),
                // Text Field for Phone Number
                TextField(
                  textAlign: TextAlign.right, // Ensure text is aligned right
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    labelStyle: TextStyle(
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.call),
                    contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintText: 'أدخل رقم الهاتف',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.0),

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
                Text(
                  'تأكيد كلمة السر',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 8.0),
                // Text Field for Confirm Password
                TextField(
                  textAlign: TextAlign.right, // Ensure text is aligned right
                  decoration: InputDecoration(
                    labelText: 'تأكيد كلمة السر',
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
                SizedBox(height: 30.0),

                // Align the Sign Up Button to the right
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: Text(
                      'تسجيل',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(151, 207, 245, 0.767),
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
