import 'package:flutter/cupertino.dart';

import 'package:iubat_cgpa/screens/home_page.dart';
import 'package:iubat_cgpa/screens/login_screen.dart';
import 'package:iubat_cgpa/screens/main_page.dart';
import 'package:iubat_cgpa/screens/overview_page.dart';
import 'package:iubat_cgpa/screens/profile_page.dart';


Map<String, WidgetBuilder> routes = {

  LoginScreen.routeName :(context) => const LoginScreen(),
  HomePage.routeName :(context) => const HomePage(),
  // NavPage.routeName:(context) => const NavPage(),
  ProfilePage.routeName:(context) => const ProfilePage(),
  OverviewPage.routeName:(context) => const OverviewPage(),
  MainPage.routeName:(context) => const MainPage(),
};