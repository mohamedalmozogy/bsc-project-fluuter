import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'EG'),
      ],
      debugShowCheckedModeBanner: false,
      home: splashVeiw(),
    );
  }
}
