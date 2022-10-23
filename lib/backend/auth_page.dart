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

// import 'package:firebase_auth/firebase_auth.dart';

// class AuthPage {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   static String routeName = 'AuthPage';

//   User? get currentUser => _firebaseAuth.currentUser;

//   Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

//   Future<void> signInWithEmainAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.signInWithEmailAndPassword(
//         email: email, password: password);
//   }

//   Future<void> createUserWithEmainAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email, password: password);
//   }

//   Future<void> signOut() async {
//     await _firebaseAuth.signOut();
//   }
// }
