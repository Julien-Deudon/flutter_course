import 'package:flutter/material.dart';
import 'package:flutter_intro/flex_practice/flex_practice_page.dart';
import 'package:flutter_intro/stateful_practice/stateful_practice_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final Map<IconData, Widget> features = {
    Icons.radio_button_checked: const StatefulPractice(),
    Icons.brush: const FlexPracticePage(),
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: features.length,
      child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  child: Text('Header'),
                ),
                ListTile(
                  title: const Text('Coming soon'),
                  onTap: () {
                    print('Coming soon');
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: features.entries
                  .map((element) => Tab(
                        icon: Icon(element.key),
                      ))
                  .toList(),
            ),
          ),
          body: TabBarView(
            children: features.entries
                .map(
                  (element) => element.value,
                )
                .toList(),
          )),
    );
  }
}
