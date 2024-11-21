import 'package:flutter/material.dart';

class EventCardWithDescLeft extends StatelessWidget {
  final AssetImage eventImage;
  final String title;
  final String date;
  final String location;

  const EventCardWithDescLeft({
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Border radius
      ),
      margin: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 20.0), // Adjust margin to center the card
      child: Row(
        children: [
          // Image container with reduced width and rounded corners
          Container(
            height: 100, // Set desired height
            width: 180, // Reduced width
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ), // Apply border radius to the left side
              image: DecorationImage(
                image: eventImage,
                fit: BoxFit.cover, // Cover the entire container
              ),
            ),
          ),
          const SizedBox(width: 4.0),
          // Padding and alignment adjustments for text on the right
          Expanded(
            child: Padding(
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
                      fontSize: 16, // Font size for the title
                    ),
                  ),
                  const SizedBox(height: 4.0), // Space between text lines
                  Text(
                    date,
                    textAlign: TextAlign.right, // Align text to the right
                    style: const TextStyle(fontSize: 13), // Font size for date
                  ),
                  Text(
                    location,
                    textAlign: TextAlign.right, // Align text to the right
                    style:
                        const TextStyle(fontSize: 13), // Font size for location
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
