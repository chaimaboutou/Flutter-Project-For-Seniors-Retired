import 'package:flutter/material.dart';

class ColoredEventCard extends StatelessWidget {
  final AssetImage eventImage;
  final String title;
  final Color color;
  final VoidCallback? onTap; // Callback function for tap action

  const ColoredEventCard({
    Key? key,
    required this.eventImage,
    required this.title,
    required this.color,
    this.onTap, // Optional parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the callback when tapped
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Reduced height of the image container
            Container(
              height: 130, // Reduced height to make the card smaller
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                image: DecorationImage(
                  image: eventImage,
                  fit: BoxFit.cover, // Cover the entire container
                ),
              ),
            ),
            // Adjusted height of the title container
            Container(
              height: 50, // Reduced height
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Color for text
                    fontSize: 14, // Adjust font size if needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
