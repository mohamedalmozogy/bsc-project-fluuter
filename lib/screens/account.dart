import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mycar_app/screens/myacountpage.dart';
import 'package:mycar_app/screens/signin.dart';

class myacountstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return myacountpage();
          } else {
            return signin();
          }
        },
      ),
    );
  }
}
