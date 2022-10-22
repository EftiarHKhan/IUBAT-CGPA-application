import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iubat_cgpa/backend/auth_page.dart';
import 'package:iubat_cgpa/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'login_screen',
    // routes: {
    //   'login_screen': (context)=> const LoginScreen()
    // },

    // home: const RootPage(),

    initialRoute: AuthPage.routeName,
    routes: routes,
  ));
}
