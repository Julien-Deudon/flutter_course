import 'package:flutter/material.dart';
import 'package:flutter_intro/core/models/user_model.dart';

class UserDetailPracticePage extends StatelessWidget {
  const UserDetailPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(),
      body: Card(
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
      ),
    );
  }
}
