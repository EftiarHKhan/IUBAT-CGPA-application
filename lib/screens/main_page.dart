import 'package:flutter/material.dart';
import 'package:iubat_cgpa/screens/home_page.dart';
import 'package:iubat_cgpa/screens/overview_page.dart';
import 'package:iubat_cgpa/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  static String routeName = 'MainPage';

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const OverviewPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: screens[currentIndex],
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(38, 38, 38, 2),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromRGBO(95, 96, 101, 95),
        // iconSize: 20,
        // selectedFontSize: 25,
        // unselectedFontSize: 16,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        // onTap: (index) => currentIndex = index,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Overview',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}