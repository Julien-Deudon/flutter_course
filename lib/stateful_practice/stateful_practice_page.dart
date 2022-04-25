import 'package:flutter/material.dart';

class StatefulPractice extends StatelessWidget {
  const StatefulPractice({Key? key}) : super(key: key);

  final isStateful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Is it stateful?'),
            ListTile(
              title: const Text('No'),
              leading: Radio(
                value: false,
                groupValue: isStateful,
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            ListTile(
              title: const Text('Yes'),
              leading: Radio(
                value: true,
                groupValue: isStateful,
                onChanged: (value) {
                  print(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
