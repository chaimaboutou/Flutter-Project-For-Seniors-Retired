import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize with example data (you can replace these with actual values)
    _nameController.text = 'شيماء';
    _surnameController.text = 'بوتو';
    _phoneController.text = '0675898745';
    _addressController.text = 'xxxxxxxx';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'تعديل الملف الشخصي',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'images/profile.png'), // Replace with your image asset or network image
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: InkWell(
                      onTap: () {
                        // Handle image edit
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.photo_camera,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildTextField(label: 'الاسم', controller: _nameController),
              _buildTextField(label: 'النسب', controller: _surnameController),
              _buildTextField(
                label: 'رقم الهاتف',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              _buildTextField(label: 'العنوان', controller: _addressController),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Cancel logic or navigation
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'إلغاء',
                      style: TextStyle(
                          color: Color.fromRGBO(78, 132, 193, 1), fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white60, // Background color (if desired)
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Save logic
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('تم الحفظ')),
                      );
                    },
                    child: const Text(
                      'حفظ',
                      style: TextStyle(
                          color: Color.fromRGBO(78, 132, 193, 1), fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white60, // Background color (if desired)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
