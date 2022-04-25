import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final Map<String, String> features = {
    'Stateful Practice': 'stateful_practice',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: features.entries
            .map(
              (value) => TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, value.value);
                },
                child: Text(value.key),
              ),
            )
            .toList(),
      ),
    );
  }
}
