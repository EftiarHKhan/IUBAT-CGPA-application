
import 'package:flutter/material.dart';
import 'package:iubat_cgpa/routes.dart';

import 'package:iubat_cgpa/screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'login_screen',
    // routes: {
    //   'login_screen': (context)=> const LoginScreen()
    // },
  
    // home: const RootPage(),

    initialRoute: LoginScreen.routeName,
    routes: routes,
    
  ));
}





