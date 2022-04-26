import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final Map<String, String> features = {
    'Stateful Practice': 'stateful_practice',
    'Flex Practice': 'flex_practice',
  };

  @override
  Widget build(BuildContext context) {
    // TODO: Use an TabBar to manage the views of the two exercises
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
