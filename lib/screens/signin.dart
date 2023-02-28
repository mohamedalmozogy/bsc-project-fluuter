import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:mycar_app/screens/password.dart';
import 'package:mycar_app/screens/signup.dart';

class signin extends StatefulWidget {
  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _paswordcontroller = TextEditingController();
  bool showspinner = false;

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _paswordcontroller.dispose();
  }

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
                    SizedBox(height: 50),
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 45),
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
                    SizedBox(height: 40),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => password()));
                        },
                        child: Text(
                          'نسيت كلمة السر؟',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {});

                          if (_globalKey.currentState!.validate()) {
                            showspinner = true;
                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _emailcontroller.text.trim(),
                                      password: _paswordcontroller.text.trim());
                            } on FirebaseAuthException catch (e) {
                              showspinner = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(e.message!),
                                ),
                              );
                              setState(() {});
                            }
                            showspinner = false;
                          }
                          setState(() {
                            showspinner = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          child: Center(
                            child: Text(
                              'تسجيل الدخول',
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
                          'ليس لديك حساب؟',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => signupscreen());
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => signupscreen()));
                            },
                            child: Container(
                              child: Text(
                                'انشاء حساب',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w500),
                              ),
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
