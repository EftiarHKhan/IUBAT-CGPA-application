import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  static String routeName = 'OverviewPage';

  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final List<int> year = <int>[2022, 2021, 2020];
  final List<String> semester = <String>['Spring', 'Summer', 'Fall'];
  final List<double> cgpa = <double>[3.38, 3.56, 3.98, 4.00];

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

            ListView.separated(
              padding: const EdgeInsets.only(left: 30, top: 150),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              '${year[index]}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 40, right: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(38, 38, 38, 2),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${cgpa[index]}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '${semester[index]}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 30, top: 150),
            //   child: Row(
            //     children: [
            //       Column(
            //         children: const [
            //           Text(
            //             '2022',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontFamily: 'lato',
            //               fontSize: 25,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
