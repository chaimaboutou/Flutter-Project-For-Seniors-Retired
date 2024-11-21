import 'package:flutter/material.dart';

class SmallEventCard extends StatelessWidget {
  final AssetImage eventImage;
  final String title;
  final String date;
  final String location;

  const SmallEventCard({
    super.key,
    required this.eventImage,
    required this.title,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          // Set a fixed size for the image
          Container(
            height: 100, // Set desired height
            width: 200, // Set desired width
            decoration: BoxDecoration(
              image: DecorationImage(
                image: eventImage,
                fit: BoxFit.cover, // Cover the entire container
              ),
            ),
          ),
          // Padding and alignment adjustments for text
          Padding(
            padding: const EdgeInsets.all(8.0), // Adjusted padding
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the right
              children: [
                Text(
                  title,
                  textAlign: TextAlign.right, // Align text to the right
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Smaller font size
                  ),
                ),
                const SizedBox(
                    height: 4.0), // Add some space between text lines
                Text(
                  date,
                  textAlign: TextAlign.right, // Align text to the right
                  style: const TextStyle(fontSize: 13), // Smaller font size
                ),
                Text(
                  location,
                  textAlign: TextAlign.right, // Align text to the right
                  style: const TextStyle(fontSize: 13), // Smaller font size
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
