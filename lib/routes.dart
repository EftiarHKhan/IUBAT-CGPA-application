import 'package:flutter/cupertino.dart';
import 'package:iubat_cgpa/backend/auth_page.dart';

import 'package:iubat_cgpa/screens/home_page.dart';
import 'package:iubat_cgpa/screens/login_screen.dart';
import 'package:iubat_cgpa/screens/main_page.dart';
import 'package:iubat_cgpa/screens/overview_page.dart';
import 'package:iubat_cgpa/screens/profile_page.dart';

Map<String, WidgetBuilder> routes = {
  AuthPage.routeName: (context) => const AuthPage(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomePage.routeName: (context) => const HomePage(),
  ProfilePage.routeName: (context) => const ProfilePage(),
  OverviewPage.routeName: (context) => const OverviewPage(),
  MainPage.routeName: (context) => const MainPage(),
};
