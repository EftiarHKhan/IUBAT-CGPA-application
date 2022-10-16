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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview page'),
        centerTitle: true,
      ),
    );
  }
}