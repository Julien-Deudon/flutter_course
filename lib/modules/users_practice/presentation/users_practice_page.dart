import 'package:flutter/material.dart';
import 'package:flutter_intro/modules/users_practice/users_practice_binding.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersPracticePage extends ConsumerWidget {
  const UsersPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(usersControllerProvider).when(
        data: (data) {
          return ListView(
            children: data
                .map((user) => InkWell(
                      onTap: () {
                        GoRouter.of(context).push('/users/${user.id}');
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
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        },
        error: (error, _) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ));
  }
}
