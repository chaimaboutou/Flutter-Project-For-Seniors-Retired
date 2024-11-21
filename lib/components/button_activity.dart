import 'package:flutter/material.dart';

class IconButtonWithLabel extends StatelessWidget {
  final IconData icon; // Icon to be displayed
  final String label; // Label under the icon
  final Color iconColor; // Color for the icon
  final VoidCallback onPressed; // Action when the button is clicked

  const IconButtonWithLabel({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor, // New parameter for icon color
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Handle button tap
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(
              217, 217, 217, 0.47), // Background color of the button
          borderRadius: BorderRadius.circular(20.0), // Change the radius
        ),
        padding: const EdgeInsets.all(10.0), // Add padding for size adjustment
        child: Column(
          mainAxisSize: MainAxisSize.min, // Adjust size to fit content
          children: [
            Icon(
              icon,
              size: 30.0, // Size for the icon
              color: iconColor, // Use the dynamic color for the icon
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14.0, // Font size for the label
                fontWeight: FontWeight.bold, // Style of the label
                color: Colors.black, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
