import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mycar_app/screens/splashview.dart';

void main() {
  runApp(myCar());
}

class myCar extends StatelessWidget {
  const myCar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashVeiw(),
    );
  }
}
