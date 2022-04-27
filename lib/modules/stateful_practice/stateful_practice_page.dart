import 'package:flutter/material.dart';

class StatefulPractice extends StatefulWidget {
  const StatefulPractice({Key? key}) : super(key: key);

  @override
  State<StatefulPractice> createState() => _StatefulPracticeState();
}

class _StatefulPracticeState extends State<StatefulPractice> {
  bool isStateful = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text('Is it stateful?'),
          ListTile(
            title: const Text('No'),
            leading: Radio<bool>(
              value: false,
              groupValue: isStateful,
              onChanged: _onChanged,
            ),
          ),
          ListTile(
            title: const Text('Yes'),
            leading: Radio<bool>(
              value: true,
              groupValue: isStateful,
              onChanged: _onChanged,
            ),
          )
        ],
      ),
    );
  }

  void _onChanged(bool? newValue) {
    if (newValue != null) {
      setState(() {
        isStateful = newValue;
      });
    }
  }
}
