import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_bootcamp/auth/auth_page.dart';
import 'package:firebase_bootcamp/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            return HomePage();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
