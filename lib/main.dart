import 'package:flutter/material.dart';
import 'package:flutter_intro/modules/dashboard/dashboard_page.dart';
import 'package:flutter_intro/modules/user_detail_practice/user_detail_practice_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => DashboardPage(),
      ),
      GoRoute(
        path: '/users/:id',
        builder: (context, state) => UserDetailPracticePage(
          userId: state.params['id']!,
        ),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}
