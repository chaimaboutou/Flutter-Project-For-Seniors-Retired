import 'package:flutter/material.dart';

class CardSettings extends StatelessWidget {
  const CardSettings(
      {super.key,
      required this.leadingIcon1,
      required this.listTitle1,
      required this.onTap1,
      required this.leadingIcon2,
      required this.listTitle2,
      required this.onTap2});

  final IconData leadingIcon1;
  final String listTitle1;
  final VoidCallback onTap1;
  final IconData leadingIcon2;
  final String listTitle2;
  final VoidCallback onTap2;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(leadingIcon1),
            title: Text(
              textDirection: TextDirection.rtl,
              listTitle1,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Colors.grey,
            ),
            onTap: onTap1,
          ),
          const Divider(height: 1, thickness: 1, color: Colors.grey),
          ListTile(
            leading: Icon(leadingIcon2),
            title: Text(
              textDirection: TextDirection.rtl,
              listTitle2,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Colors.grey,
            ),
            onTap: onTap2,
          ),
        ],
      ),
    );
  }
}
