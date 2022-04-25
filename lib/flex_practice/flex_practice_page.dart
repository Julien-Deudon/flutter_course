import 'package:flutter/material.dart';

class FlexPracticePage extends StatelessWidget {
  const FlexPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                color: Colors.blueAccent,
                height: 50,
              ),
              Container(
                color: Colors.amberAccent,
                height: 50,
              ),
              Container(
                color: Colors.deepPurpleAccent,
                height: 50,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                color: Colors.greenAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.redAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.blueGrey,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
