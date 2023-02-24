import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar_app/screens/carmodel/bwm.dart';
import 'package:mycar_app/screens/carmodel/hyndia.dart';
import 'package:mycar_app/screens/carmodel/kia.dart';
import 'package:mycar_app/screens/carmodel/toyota.dart';

class carModel extends StatelessWidget {
  const carModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Center(
          child: Text(
            'اختر سيارتك',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cairo',
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => kia());
                  },
                  child: caricon(
                    image: 'assets/images/pngimg.com - kia_PNG46.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => hyndia());
                  },
                  child: caricon(
                    image: 'assets/images/pngimg.com - car_logo_PNG1645.png',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => toyota());
                  },
                  child: caricon(
                    image: 'assets/images/pngimg.com - car_logo_PNG1665.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => bmw());
                  },
                  child: caricon(
                    image: 'assets/images/pngimg.com - car_logo_PNG1641.png',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1655.png',
                ),
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1648.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1640.png',
                ),
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1643.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1654.png',
                ),
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1658.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1666.png',
                ),
                caricon(
                  image: 'assets/images/pngimg.com - car_logo_PNG1667.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/1.png',
                ),
                caricon(
                  image: 'assets/images/2.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/3.png',
                ),
                caricon(
                  image: 'assets/images/4.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/5.png',
                ),
                caricon(
                  image: 'assets/images/6.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/7.png',
                ),
                caricon(
                  image: 'assets/images/8.png',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caricon(
                  image: 'assets/images/9.png',
                ),
                caricon(
                  image: 'assets/images/10.png',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class caricon extends StatelessWidget {
  caricon({this.image});
  String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: 150,
      child: Image.asset('$image'),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color.fromARGB(255, 180, 180, 180)),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
