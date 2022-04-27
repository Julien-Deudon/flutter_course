import 'package:flutter/material.dart';
import 'package:flutter_intro/core/models/user_model.dart';
import 'package:flutter_intro/core/service/users_service.dart';

class UsersPracticePage extends StatelessWidget {
  const UsersPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UserService.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return ListView(
            children: (snapshot.data as List<User>)
                .map((user) => InkWell(
                      onTap: () {
                        print(
                          'You need to redirect to user detail and pass User as argument',
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              '${user.name}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              '${user.email}',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text('${user.phone}'),
                            Text(
                              '${user.address?.street}, ${user.address?.city}, ${user.address?.zipcode}',
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        }
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
