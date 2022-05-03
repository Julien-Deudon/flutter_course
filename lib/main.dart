import 'package:flutter/material.dart';
import 'package:flutter_intro/modules/dashboard/dashboard_page.dart';
import 'package:flutter_intro/modules/user_detail_practice/user_detail_practice_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DashboardPage(),
        ),
      ),
      GoRoute(
          path: '/users/:id',
          pageBuilder: (context, state) => NoTransitionPage(
                child: UserDetailPracticePage(
                  userId: state.params['id']!,
                ),
              )),
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
