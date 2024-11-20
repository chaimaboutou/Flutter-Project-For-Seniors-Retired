import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/addscreen_textfield.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(24),
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('تفاصيل الحدث',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text('اصنع حدثًا بنفسك وادعُ أصدقاءك إليه',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                        child: Image.asset(
                          'images/rabat_map.png',
                          fit: BoxFit.cover,
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
                                color: Colors.orange,
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
                                color: Colors.orange,
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
                          backgroundColor: Colors.orange),
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
    );
  }
}
