import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  static String routeName = 'OverviewPage';

  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 80),
              child: const Text(
                'Semesters',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 150),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        '2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lato',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
