import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iubat_cgpa/screens/semester_page.dart';

class ProfilePage extends StatefulWidget {
  static String routeName = 'ProfilePage';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, top: 60),
                child: Row(
                  children: const [
                    Text(
                      'Student Details',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 40, right: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(38, 38, 38, 2),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      user.email!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'lato',
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'B.Sc. in CSE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'lato',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ID',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'lato',
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '20103198',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'lato',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 280, top: 60),
                child: MaterialButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  color: Colors.blue,
                  child: const Text('sign out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
