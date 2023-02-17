import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar_app/screens/onbording.dart';

class splashVeiw extends StatefulWidget {
  const splashVeiw({super.key});

  @override
  State<splashVeiw> createState() => _splashVeiwState();
}

class _splashVeiwState extends State<splashVeiw> {
  changescreen() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Get.to(() => onBording(), transition: Transition.fade);
    });
  }

  @override
  void initState() {
    super.initState();
    changescreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/welome logo.png',
              ),
              width: 185,
              height: 120,
            ),
          ),
          Text(
            "!قطع غيار السيارات... ابسط",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Cairo',
            ),
          )
        ],
      ),
    );
  }
}
