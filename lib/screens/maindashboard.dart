import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mycar_app/screens/carmodel.dart';
import 'package:mycar_app/screens/account.dart';
import 'package:mycar_app/screens/cart_screen.dart';
import 'package:mycar_app/screens/categorys_screen/accessory.dart';
import 'package:mycar_app/screens/categorys_screen/carengins.dart';
import 'package:mycar_app/screens/categorys_screen/light.dart';
import 'package:mycar_app/screens/categorys_screen/oil.dart';
import 'package:mycar_app/screens/categorys_screen/tranmetion.dart';
import 'package:mycar_app/screens/signin.dart';

import '../modals/ads_list.dart';
import '../modals/constant.dart';
import 'categorys_screen/daetels_view.dart';

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
    return GetBuilder<ADSview>(
        init: Get.put(ADSview()),
        builder: (controller) => Scaffold(
              backgroundColor: Color.fromARGB(255, 226, 226, 226),
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 17, 0, 114),
                automaticallyImplyLeading: false,
                elevation: 2,
                leading: GestureDetector(
                  onTap: () {
                    Get.to(() => CartScreen());
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                  ),
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
                                  '?????????? ??????????????',
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
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
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
                              '??????????',
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
                                      '????????????????',
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
                                    '??????????????????',
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
                                      '??????????',
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
                                    '???????? ??????????????',
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
                                    '?????????????? ??????????????',
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
                                    '???????????? ????????????????',
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
                                    '???? ????????????',
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
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '???????? ?????????????? ????????????????',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10),
                              _listViewCategory()
                            ],
                          ),
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
                              '??????????????????????',
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
                                          '?????????????????? ????????????',
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
                                    Get.to(() => accessory(
                                          value: value,
                                          year: year,
                                        ));
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '?????????????????? ??????????????',
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
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => Oil(
                                          value: value,
                                          year: year,
                                        ));
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '???????????? ????????????????',
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
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => Light(
                                          value: value,
                                          year: year,
                                        ));
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '???????????????? ??????????????????',
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
                                  ),
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
                                          '??????????????',
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
                                          '?????????? ???????????? ??????????',
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
                              '?????? ????????????',
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() => tranmetion(
                                                value: value,
                                                year: year,
                                              ));
                                        },
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                '??????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                '???????????? ????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                    '???????????? ??????????????',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '??????????????????',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
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
                                                '???????????? ????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                    '?????? ????????????',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '(????????????????)',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
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
                                                '????????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() => engin(
                                                value: value,
                                                year: year,
                                              ));
                                        },
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                '????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                '???????????? ????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                '???????????? ????????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                '???????????? ??????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                '?????? ????????????',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                    '?????? ????????????',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '(????????????????)',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
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
            ));
  }
}

Widget _listViewCategory() {
  return GetBuilder<ADSview>(
    init: Get.find(),
    builder: (controller) => controller.loading.value
        ? Container(
            height: 190,
            width: 150,
            child: Center(child: CircularProgressIndicator()))
        : Container(
            height: 190,
            child: ListView.separated(
              itemCount: controller.ads.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Get.to(DetailsView(
                    //   model: controller.ads[index],
                    // ));
                  },
                  child: Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 196, 196, 196)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: controller.ads[index].adsimageUrl!,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 172, 172, 172),
                          thickness: 0.5,
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.ads[index].adsname!,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 154, 1)),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    controller.ads[index].newprice!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '??????????',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    controller.ads[index].oldprice!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.lineThrough,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    '??????????',
                                    style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.lineThrough,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Spacer(flex: 1),
                                  Container(
                                    height: 25,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Center(
                                      child: Text(
                                        '%${controller.ads[index].adspersentage!}',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
            ),
          ),
  );
}

class ADSview extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  ValueNotifier<bool> get havevalue => _havevalue;
  ValueNotifier<bool> _havevalue = ValueNotifier(false);

  List<ADS> get ads => _ads;
  List<ADS> _ads = [];

  CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection(kadscollection);

  ADSview() {
    getCollection();
  }

  getCollection() async {
    _loading.value = true;
    await _collectionReference.get().then((value) {
      if (value.docs.length == 0) {
        _havevalue.value = true;
        _loading.value = false;
      } else {
        for (int i = 0; i < value.docs.length; i++) {
          _ads.add(ADS.fromJson(value.docs[i].data() as Map<dynamic, dynamic>));

          _loading.value = false;
        }
      }
      update();
    });
  }
}
