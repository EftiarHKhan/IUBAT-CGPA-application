import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  static String routeName = 'HomePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;
  // final tabs = [HomePage(), OverviewPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    // var data = '3.55';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: const Text(
              'Very Good!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Madrigal',
                
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 120, top: 150),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 90,
              lineWidth: 22,
              percent: 0.8,
              progressColor: Color.fromARGB(255, 250, 155, 13),
              backgroundColor: Color.fromARGB(167, 99, 90, 90),
              circularStrokeCap: CircularStrokeCap.round,
              
               center: const Text(
                'CGPA',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
                
                
              ),
            ),
          ),
        ]),
        // bottomSheet: tabs[_currentIndex],
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _currentIndex,
        //   type: BottomNavigationBarType.fixed,
        //   iconSize: 10,
        //   // selectedFontSize: 10,
        //   backgroundColor: Colors.grey,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //       backgroundColor: Colors.orange,
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.bar_chart),
        //       label: 'Overview',
        //       backgroundColor: Colors.orange,
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //       backgroundColor: Colors.orange,
        //     ),
        //   ],
        //   onTap: (index) {
        //     setState(() {
        //       _currentIndex = index;
        //     });
        //   },
        // ),
      ),
    );
  }
}
