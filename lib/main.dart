import 'package:flutter/material.dart';
import 'package:flutter_intro/dashboard/dashboard_page.dart';
import 'package:flutter_intro/flex_practice/flex_practice_page.dart';
import 'package:flutter_intro/stateful_practice/stateful_practice_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => DashboardPage(),
        'stateful_practice': (context) => const StatefulPractice(),
        'flex_practice': (context) => const FlexPracticePage(),
      },
    );
  }
}
