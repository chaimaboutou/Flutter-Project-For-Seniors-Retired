import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/addscreen_textfield.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  int _selectedIndex = 2;

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
                      '  إضافة حدث',
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
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(24),
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('تفاصيل الحدث',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Text('اصنع حدثًا بنفسك وادعُ أصدقاءك إليه',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10.0,
              ),
              const AddTextField(label: 'عنوان الحدث', hint: 'العنوان'),
              const AddTextField(label: 'وصف الحدث', hint: 'الوصف'),
              const AddTextField(
                  label: 'إضافة الصور',
                  hint: 'الصورة',
                  prefixIcon: Icons.photo),
              const AddTextField(
                  label: ' بداية الحدث',
                  hint: 'الشهر/اليوم/السنة',
                  prefixIcon: Icons.date_range),
              const AddTextField(
                  label: ' نهاية الحدث',
                  hint: 'الشهر/اليوم/السنة',
                  prefixIcon: Icons.date_range),
              const AddTextField(
                  label: ' سعر التذكرة',
                  hint: 'الثمن بالدرهم',
                  prefixIcon: Icons.currency_exchange),
              const AddTextField(
                  label: 'العدد الاقصى للمشاركين',
                  hint: 'المشاركين',
                  prefixIcon: Icons.people),
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  const Text(textDirection: TextDirection.rtl, 'أضف العنوان'),
                  const SizedBox(height: 5),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        height: 250,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              50), // Apply border radius to the image
                          child: Image(
                            image: AssetImage(
                                'images/rabat_map.png'), // Use AssetImage here
                            fit: BoxFit
                                .cover, // Ensure the image covers the container
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Search',
                            hintTextDirection: TextDirection.rtl,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chat_outlined,
                                color: Color.fromRGBO(78, 132, 193, 1),
                                size: 23,
                              )),
                          const Text(
                            'أضف مجموعة الواتساب',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                color: Color.fromRGBO(78, 132, 193, 1),
                                size: 23,
                              )),
                          const Text(
                            'ادعو أصدقاء',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Color.fromRGBO(78, 132, 193, 1)),
                      child: const Text(
                        'أضف',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
