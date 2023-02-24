import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mycar_app/screens/carmodel.dart';
import 'package:mycar_app/screens/carmodel/kia.dart';

class dashboard extends StatefulWidget {
  String? value;
  String? year;
  dashboard({@required this.value, this.year});

  @override
  State<dashboard> createState() => _dashboardState(value, year);
}

class _dashboardState extends State<dashboard> {
  String? value;
  String? year;

  _dashboardState(this.value, this.year);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
        automaticallyImplyLeading: false,
        elevation: 2,
        leading: Icon(
          Icons.shopping_cart_outlined,
          size: 24,
        ),
        bottom: PreferredSize(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => carModel());
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'تغيير السيارة',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 17, 0, 114),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '$year',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 17, 0, 114),
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '$value',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 17, 0, 114),
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            width: double.infinity,
            height: 50,
            color: Colors.white,
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'مرحبآ',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        LineIcons.home,
                        size: 32,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 184, 184, 184),
                  ),
                ),
              ),
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'عروض العناية والصيانة',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 184, 184, 184),
                  ),
                ),
              ),
              height: 290,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'الاكسسوارات',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            print('object');
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  'اكسسوارات داخلية',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/car-seat.png',
                                  height: 45,
                                  width: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            print('obj2');
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  'اكسسوارات العناية',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/car (1).png',
                                  height: 60,
                                  width: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(flex: 2),
                        Text(
                          'الزيوت والسوائل',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 2),
                        Image.asset(
                          'assets/images/engine-oil (1).png',
                          height: 45,
                          width: 40,
                        ),
                        Spacer(flex: 1),
                        Text(
                          'الاضاءات والمصابيح',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 3),
                        Image.asset(
                          'assets/images/car-lights (1).png',
                          height: 41,
                          width: 45,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(flex: 6),
                        GestureDetector(
                          onTap: () {
                            print('obj2');
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  'ديسكوات',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/tire.png',
                                  height: 40,
                                  width: 45,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(flex: 1),
                        GestureDetector(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  'ادوات ومعدات صيانة',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 6),
                                Image.asset(
                                  'assets/images/settings.png',
                                  height: 35,
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 184, 184, 184),
                  ),
                ),
              ),
              height: 480,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'قطع الغيار',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'كمبيوات',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('obj2');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'محركات',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car (1).png',
                                      height: 60,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'كمبيوات',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('obj2');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'محركات',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car (1).png',
                                      height: 60,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'منظومة المحرك',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/car-seat.png',
                                      height: 45,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
