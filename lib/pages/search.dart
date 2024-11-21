import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart';
import 'package:flutter_project_for_retired_seniors/components/color_event_card.dart';
import 'package:flutter_project_for_retired_seniors/pages/search_result.dart';
import 'package:flutter_project_for_retired_seniors/pages/sportsevents.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 1;
  bool _isExpanded = false;
  String _selectedButton = ''; // Variable to track which button is pressed
  DateTime? _selectedDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectStartTime(BuildContext context) async {
    TimeOfDay? pickedStartTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedStartTime != null) {
      setState(() {
        _startTime = pickedStartTime;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    TimeOfDay? pickedEndTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedEndTime != null) {
      setState(() {
        _endTime = pickedEndTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_isExpanded ? 410 : 180),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40, left: 20, right: 20.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'بحث',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'ما هو الحدث الذي تبحث عنه؟',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 8.0),
                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              if (_selectedButton == 'date') {
                                // Toggle expansion state if the same button is clicked again
                                _isExpanded = !_isExpanded;
                                _selectedButton = '';
                              } else {
                                _selectedButton = 'date';
                                _isExpanded = true;
                              }
                            });
                          },
                          icon: const Icon(Icons.calendar_today),
                          label: const Text('التاريخ'),
                          style: TextButton.styleFrom(
                            backgroundColor: _selectedButton == 'date'
                                ? Color.fromRGBO(106, 109, 205, 1)
                                : Colors.white,
                            foregroundColor: _selectedButton == 'date'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              if (_selectedButton == 'location') {
                                // Toggle expansion state if the same button is clicked again
                                _isExpanded = !_isExpanded;
                                _selectedButton = '';
                              } else {
                                _selectedButton = 'location';
                                _isExpanded = true;
                              }
                            });
                          },
                          icon: const Icon(Icons.location_on),
                          label: const Text('الموقع'),
                          style: TextButton.styleFrom(
                            backgroundColor: _selectedButton == 'location'
                                ? Color.fromRGBO(106, 109, 205, 1)
                                : Colors.white,
                            foregroundColor: _selectedButton == 'location'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    if (_isExpanded)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: _selectedButton == 'date'
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 17),
                                  Text(
                                    "الساعة",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton.icon(
                                          onPressed: () =>
                                              _selectStartTime(context),
                                          icon: const Icon(Icons.access_time),
                                          label: Text(
                                            _startTime != null
                                                ? 'من: ${_startTime!.format(context)}'
                                                : 'من: ساعة',
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 249, 250, 250),
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 12.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: ElevatedButton.icon(
                                          onPressed: () =>
                                              _selectEndTime(context),
                                          icon: const Icon(Icons.access_time),
                                          label: Text(
                                            _endTime != null
                                                ? 'إلى: ${_endTime!.format(context)}'
                                                : 'إلى: ساعة',
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 249, 250, 250),
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 12.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "اليوم",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () => _selectDate(context),
                                    icon: const Icon(Icons.event),
                                    label: Text(
                                      _selectedDate != null
                                          ? 'اليوم: ${_selectedDate!.toLocal().toString().split(' ')[0]}'
                                          : 'اختر اليوم',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 249, 250, 250),
                                      foregroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 12.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchResultScreen()),
                                          );
                                        },
                                        child: const Text('بحث'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              106, 109, 205, 1),
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24.0, vertical: 12.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : _selectedButton == 'location'
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 17),
                                      Text(
                                        " الموقع",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 17),
                                      SizedBox(
                                        width: 200, // تحديد العرض المطلوب
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            // Handle location selection logic
                                            print("Select place pressed");
                                          },
                                          icon: const Icon(Icons.location_on),
                                          label: const Text('حدد الموقع'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 249, 250, 250),
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 12.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 30), // مسافة بين الأزرار
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SearchResultScreen()),
                                              );
                                            },
                                            child: const Text('بحث'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      106, 109, 205, 1),
                                              foregroundColor: Colors.white,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24.0,
                                                      vertical: 12.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                      ),
                  ],
                ),
              ],
            ),
            backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ColoredEventCard(
                    eventImage: const AssetImage(
                        'images/sport.webp'), // This can remain const
                    title: 'الرياضة',
                    color: const Color.fromRGBO(
                        1, 100, 80, 1), // This can remain const
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SportEventsScreen(), // Example navigation
                        ),
                      );
                    },
                  ),
                  ColoredEventCard(
                    eventImage: AssetImage('images/music.jpeg'),
                    title: 'الموسيقى ',
                    color: Color.fromRGBO(83, 5, 144, 0.83),
                  ),
                  ColoredEventCard(
                    eventImage: AssetImage('images/arts.jpg'),
                    title: ' الفنون والثقافة',
                    color: Color.fromARGB(255, 2, 100, 51),
                  ),
                  ColoredEventCard(
                    eventImage: AssetImage('images/health.jpg'),
                    title: 'الصحة واللياقة ',
                    color: Color.fromARGB(255, 131, 2, 2),
                  ),
                  ColoredEventCard(
                    eventImage: AssetImage('images/family.jpg'),
                    title: ' لعائلة والأطفال',
                    color: Color.fromARGB(255, 146, 101, 3),
                  ),
                  ColoredEventCard(
                    eventImage: AssetImage('images/food.jpeg'),
                    title: 'الطعام والمشروبات ',
                    color: Color.fromARGB(255, 3, 141, 146),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
