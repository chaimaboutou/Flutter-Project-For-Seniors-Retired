import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({
    super.key,
    required this.apBarColor,
    required this.apBarImageAsset,
    required this.eventLocal,
    required this.eventDate,
    required this.eventTime,
    required this.aboutEvent,
    required this.mapLink,
  });
  final MaterialColor apBarColor;
  final String apBarImageAsset;
  final String eventLocal;
  final VoidCallback mapLink;
  final String eventDate;
  final String eventTime;
  final String aboutEvent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CustomScrollView for the sliver components (including SliverAppBar)
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: apBarColor,
                expandedHeight: 200,
                centerTitle: true,
                pinned: true,
                title: const Text(
                  textDirection: TextDirection.rtl,
                  'تفاصيل الحدث',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Image.asset(
                    apBarImageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // First SliverToBoxAdapter
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18, right: 18, left: 18),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chat_outlined,
                                color: Colors.green,
                                size: 23,
                              )),
                          const Text(
                            'انضم إلى مجموعة الواتساب',
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
                                color: Color.fromARGB(255, 0, 38, 255),
                                size: 23,
                              )),
                          const Text(
                            'شارك مع صديق',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Additional SliverToBoxAdapters
              SliverToBoxAdapter(
                child: Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: mapLink,
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 248, 248),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 4,
                                ),
                                icon: const Icon(
                                  Icons.location_on,
                                  color: Color.fromARGB(255, 127, 91, 172),
                                  size: 25,
                                )),
                            Text(
                              eventLocal,
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 100),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 248, 248),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 4,
                                ),
                                icon: const Icon(
                                  Icons.calendar_month_sharp,
                                  color: Color.fromARGB(255, 127, 91, 172),
                                  size: 25,
                                )),
                            Text(
                              eventDate,
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              eventTime,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: Container(
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
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      const Text(
                          textDirection: TextDirection.rtl,
                          'حول الحدث :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          textDirection: TextDirection.rtl,
                          aboutEvent,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )
            ],
          ),

          // Positioned widget to appear over the SliverAppBar
          Positioned(
            top: 160, // Adjust the vertical position
            left: 20, // Adjust as needed
            right: 20, // Adjust as needed
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'تذكرة السينما',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            '50 مشارك',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          '45 درهم',
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
