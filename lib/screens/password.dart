import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class password extends StatefulWidget {
  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تغيير كلمة السر',
          style: TextStyle(
              fontSize: 22, fontFamily: 'Cairo', fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'ادخل عنوان البريد الالكتروني',
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: _emailcontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'الرجاء ادخال البريد الالكتروني';
                      }
                    },
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'البريد الالكتروني',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () async {
                      if (_globalKey.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance.sendPasswordResetEmail(
                            email: _emailcontroller.text.trim(),
                          );
                        } on FirebaseAuthException catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.message!),
                            ),
                          );
                          setState(() {});
                        }
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 280,
                      child: Center(
                        child: Text(
                          'ارسل',
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
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
