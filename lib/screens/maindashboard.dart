import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mycar_app/screens/carmodel.dart';
import 'package:mycar_app/screens/account.dart';
import 'package:mycar_app/screens/signin.dart';

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
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      'مرحبآ',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 230, 230, 230),
                          ),
                        ),
                      ),
                      width: double.infinity,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الرئيسية',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              LineIcons.home,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'التنبيهات',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            LineIcons.bell,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => myacountstate());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 230, 230, 230),
                          ),
                        ),
                      ),
                      width: double.infinity,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'حسابي',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.person_outlined,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'خدمة العملاء',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'الاسئلة الشائعة',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            LineIcons.questionCircle,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'الشروط والاحكام',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.list_outlined,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'عن سيارتي',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            LineIcons.car,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
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
              height: 490,
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
                      children: [
                        Spacer(flex: 1),
                        Container(
                          height: 430,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                                        'assets/images/gearbox.png',
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
                                        'منظومة الوقود',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 4),
                                      Image.asset(
                                        'assets/images/fuel.png',
                                        height: 60,
                                        width: 45,
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
                                      Column(
                                        children: [
                                          Text(
                                            'منظومة التكييف',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'والتبيريد',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/car-radiator.png',
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
                                        'منظومة العادم',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/exhaust-pipe.png',
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
                                      Column(
                                        children: [
                                          Text(
                                            'قطع الهيكل',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '(الخارجية)',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 6),
                                      Image.asset(
                                        'assets/images/chassis.png',
                                        height: 60,
                                        width: 60,
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
                                        'الاطارات',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/wheel.png',
                                        height: 45,
                                        width: 50,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 1),
                        Container(
                          height: 430,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print('object');
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
                                        'assets/images/car-engine.png',
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
                                        'منظومة المحرك',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/spark.png',
                                        height: 60,
                                        width: 40,
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
                                        'منظومة الكهرباء',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/alternator.png',
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
                                        'منظومة الفرامل',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/disc-brake.png',
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
                                        'قطع الصالة',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Image.asset(
                                        'assets/images/suspension.png',
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
                                      Column(
                                        children: [
                                          Text(
                                            'قطع الهيكل',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '(الداخلية)',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Cairo',
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
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
                        ),
                        Spacer(flex: 1),
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
