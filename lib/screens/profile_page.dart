import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String routeName = 'ProfilePage';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
    );
  }
}
