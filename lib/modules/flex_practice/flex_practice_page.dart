import 'package:flutter/material.dart';

class FlexPracticePage extends StatelessWidget {
  const FlexPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.amberAccent,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
