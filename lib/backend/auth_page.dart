import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iubat_cgpa/screens/login_screen.dart';
import 'package:iubat_cgpa/screens/main_page.dart';

class AuthPage extends StatelessWidget {
  static String routeName = 'AuthPage';

  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const MainPage();
          } else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
