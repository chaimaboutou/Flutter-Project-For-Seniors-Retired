import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart'; // Ensure this file exists
import 'package:flutter_project_for_retired_seniors/pages/profile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 40, left: 20, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [
                    SizedBox(width: 8.0),
                    Text(
                      ' الإعدادات',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.0),
            _buildSection(
              title: 'عام',
              items: [
                _buildItem(title: 'التنبيهات', icon: Icons.notifications),
                _buildItem(title: 'اللغة', icon: Icons.language),
              ],
            ),
            _buildSection(
              title: 'إعدادات الحساب',
              items: [
                _buildItem(title: 'تعديل الملف الشخصي', icon: Icons.person),
                _buildItem(title: 'تغيير كلمة المرور', icon: Icons.lock),
              ],
            ),
            _buildSection(
              title: 'الدعم',
              items: [
                _buildItem(
                    title: 'سؤال أو مشكلة حول التطبيق', icon: Icons.help),
                _buildItem(
                    title: 'الأسئلة الشائعة', icon: Icons.question_answer),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> items}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0), // Space between title and items
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    78, 132, 193, 1), // Blue color for section titles
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color:
                      Colors.grey.shade300), // Single border around all items
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: items,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({required String title, required IconData icon}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing:
          const Icon(Icons.chevron_right), // Add an arrow in front of each item
      onTap: () {
        // Handle item tap
        if (title == 'تعديل الملف الشخصي') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        }
      },
    );
  }
}
