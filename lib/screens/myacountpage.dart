import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class myacountpage extends StatefulWidget {
  const myacountpage({super.key});

  @override
  State<myacountpage> createState() => _myacountpageState();
}

final user = FirebaseAuth.instance.currentUser!;

class _myacountpageState extends State<myacountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حسابي',
          style: TextStyle(
              fontSize: 22, fontFamily: 'Cairo', fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outlined,
                  size: 200,
                  color: Colors.grey,
                ),
                Text(
                  user.email!,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 23),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Container(
                    height: 50,
                    width: 280,
                    child: Center(
                      child: Text(
                        ' تسجيل الخروج',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                          colors: [Colors.orangeAccent, Colors.red]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
