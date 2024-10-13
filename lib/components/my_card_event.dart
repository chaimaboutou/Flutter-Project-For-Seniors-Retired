import 'package:flutter/material.dart';

class MyCardEvent extends StatelessWidget {
  const MyCardEvent(
      {super.key,
      required this.eventButton,
      required this.eventImage,
      required this.eventDate,
      required this.dateButton,
      required this.eventTitle});
  final Function eventButton;
  final AssetImage eventImage;
  final String eventDate;
  final VoidCallback dateButton;
  final String eventTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                eventButton;
              },
              child: Image(
                image: eventImage,
                //height: 200,
                //fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15.0, // Rounded corners
                        ),
                      ),
                    ),
                    onPressed: dateButton,
                    child: Text(
                      eventDate,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  eventTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
