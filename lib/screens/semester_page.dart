import 'package:flutter/material.dart';

class SemesterPage extends StatefulWidget {
  static String routeName = 'SemesterPage';

  const SemesterPage({super.key});

  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   leading: BackButton(
        //     onPressed: (() {
        //       Navigator.pop(
        //         context,
        //         MaterialPageRoute(
        //           builder: ((context) => const SemesterPage()),
        //         ),
        //       );
        //     }),
        //   ),
        //   backgroundColor: Colors.transparent,
        // ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, top: 60),
              child: Row(
                children: const [
                  Text(
                    'Summer 2022',
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
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'SGPA 3.92',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'lato',
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Credits 13',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'lato',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(38, 38, 38, 2),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Center(
                                    child: Text(
                                      '3.74',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                ),
                                title: const Text(
                                  'System Analysis & Design',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                subtitle: const Text(
                                  'CSC 387',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 205, 206, 207),
                                  ),
                                ),
                                trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
