import 'package:flutter/material.dart';
import 'package:flutter_intro/core/models/user_model.dart';
import 'package:flutter_intro/core/service/users_service.dart';

class UserDetailPracticePage extends StatelessWidget {
  const UserDetailPracticePage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: UserService.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            final User user = (snapshot.data as List<User>).firstWhere(
              (element) => element.id.toString() == userId,
            );
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${user.name}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      'Email: ${user.email}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 8),
                    Text('Phone: ${user.phone}'),
                    const SizedBox(height: 8),
                    Text(
                      'Address: ${user.address?.street}, ${user.address?.city}, ${user.address?.zipcode}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text('Website: ${user.website}'),
                    const SizedBox(height: 8),
                    Text(
                      'Company: ${user.company?.name} - ${user.company?.catchPhrase}',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
