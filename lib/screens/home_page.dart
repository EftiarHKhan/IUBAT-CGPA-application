import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  static String routeName = 'HomePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
              progressColor: const Color.fromARGB(255, 250, 155, 13),
              backgroundColor: const Color.fromARGB(167, 99, 90, 90),
              circularStrokeCap: CircularStrokeCap.round,
              // center: const Text(
              //   'CGPA\n',
              //   style: TextStyle(
              //     fontSize: 18,
              //     color: Colors.white,
              //     // fontWeight: FontWeight.bold,
              //   ),
              // ),
              center: Column(
                children: const [
                  Text(
                    'CGPA',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    '3.65',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 400),
            child: Row(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // 3 values
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Year',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                'CSE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Dept',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                'FIST',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Faculty',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                '8',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Semester',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                '201',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Batch',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(38, 38, 38, 2),
                          ),
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: const [
                              Text(
                                '101',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Credits',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
