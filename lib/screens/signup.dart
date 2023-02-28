import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:mycar_app/screens/maindashboard.dart';

import 'signin.dart';

class signupscreen extends StatefulWidget {
  @override
  State<signupscreen> createState() => _signupscreenState();
}

final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
final _emailcontroller = TextEditingController();
final _paswordcontroller = TextEditingController();
final _confirmpaswordcontroller = TextEditingController();
bool showspinner = false;

@override
void dispose() {
  _emailcontroller.dispose();
  _paswordcontroller.dispose();
  _confirmpaswordcontroller.dispose();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Form(
                key: _globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      'التسجيل',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 35),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'البريد الالكتروني',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: _paswordcontroller,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء ادخال كلمة السر  ';
                        }
                      },
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintTextDirection: TextDirection.rtl,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'كلمة السر',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: _confirmpaswordcontroller,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء تاكيد كلمة السر  ';
                        }
                      },
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintTextDirection: TextDirection.rtl,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'تاكيد كلمة السر',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          if (_globalKey.currentState!.validate()) {
                            showspinner = true;
                            if (_paswordcontroller.text.trim() ==
                                _confirmpaswordcontroller.text.trim()) {
                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: _emailcontroller.text.trim(),
                                        password:
                                            _paswordcontroller.text.trim());
                                Get.to(() => dashboard());
                              } on FirebaseAuthException catch (e) {
                                showspinner = false;
                                print(e.message!);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(e.message!),
                                  ),
                                );
                                setState(() {});
                              }
                              showspinner = false;
                            } else {
                              showspinner = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('كلمة السر غير متطابقة'),
                                ),
                              );
                              setState(() {});
                            }
                            showspinner = false;
                          }
                          showspinner = false;
                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          child: Center(
                            child: Text(
                              'تسجيل',
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
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Spacer(flex: 8),
                        Text(
                          ' لديك حساب؟',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Spacer(flex: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
