import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mycar_app/screens/carmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class onBording extends StatefulWidget {
  const onBording({super.key});

  @override
  State<onBording> createState() => _onBordingState();
}

class _onBordingState extends State<onBording> {
  savepref(bool Value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('value', Value);
  }

  getpref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var state = pref.getBool('value');
    if (state == false) {
      Get.to(() => carModel());
    }
    print(state);
  }

  @override
  void initState() {
    getpref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'قطع الغيار أصبحت أسهل',
          body: 'تشكيلة واسعة من قطع الغيار تلبي جميع احتياجاتك',
          image: Image.asset('assets/images/car-engine.png'),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 24,
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.w500),
            bodyTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo',
                color: Color.fromARGB(255, 121, 121, 121)),
            imageFlex: 2,
            contentMargin: EdgeInsets.only(top: 30),
            titlePadding: EdgeInsets.only(top: 0, bottom: 10),
            imagePadding: EdgeInsets.all(60),
          ),
        ),
        PageViewModel(
          title: 'عروض قطع الغيار',
          body: 'قائمة دائمة ومتجددة بآخر عروض قطع الغيار',
          image: Image.asset('assets/images/discount.png'),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 24,
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.w500),
            bodyTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo',
                color: Color.fromARGB(255, 121, 121, 121)),
            imageFlex: 2,
            contentMargin: EdgeInsets.only(top: 30),
            titlePadding: EdgeInsets.only(top: 0, bottom: 10),
            imagePadding: EdgeInsets.all(60),
          ),
        ),
        PageViewModel(
          title: 'طرق الدفع',
          body: 'العديد من طرق الدفع بين يديك',
          image: Image.asset('assets/images/payment-method.png'),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 24,
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.w500),
            bodyTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo',
                color: Color.fromARGB(255, 121, 121, 121)),
            imageFlex: 2,
            contentMargin: EdgeInsets.only(top: 30),
            titlePadding: EdgeInsets.only(top: 0, bottom: 10),
            imagePadding: EdgeInsets.all(60),
          ),
        ),
        PageViewModel(
          title: 'الشحن',
          body: 'طلباتك الى امام باب بيتك',
          image: Image.asset('assets/images/delivery-box.png'),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 24,
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.w500),
            bodyTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo',
                color: Color.fromARGB(255, 121, 121, 121)),
            imageFlex: 2,
            contentMargin: EdgeInsets.only(top: 30),
            titlePadding: EdgeInsets.only(top: 0, bottom: 10),
            imagePadding: EdgeInsets.all(50),
          ),
        ),
      ],
      showSkipButton: false,
      showBackButton: true,
      next: const Text(
        "التالي",
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Cairo',
            color: Colors.black,
            fontWeight: FontWeight.w400),
      ),
      back: const Text(
        "السابق",
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Cairo',
            color: Colors.black,
            fontWeight: FontWeight.w400),
      ),
      done: const Text("اضف سيارتك",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: 'Cairo',
              color: Colors.black)),
      onDone: () {
        // On Done button pressed

        setState(() {
          savepref(false);
          Get.to(() => carModel());
        });
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.black,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
