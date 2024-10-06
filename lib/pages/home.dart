import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Set the desired height
        child: AppBar(
          flexibleSpace: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align items to the start (left)
            children: [
              // Row for Profile Icon and User Name
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 20, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [
                    // Profile Icon
                    CircleAvatar(
                      backgroundColor:
                          Colors.grey, // Change to your preferred color
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 8.0), // Control space between icon and text
                    // User Name
                    Text(
                      'اسم المستخدم', // Replace with dynamic name if needed
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // Search Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'بحث ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor:
                        Colors.white, // Background color of the text field
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(234, 235, 248, 1),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to Home Screen!', // You can replace this with your content
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
