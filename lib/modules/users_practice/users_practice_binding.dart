import 'package:flutter_intro/core/app_binding/app_binding.dart';
import 'package:flutter_intro/core/models/user_model.dart';
import 'package:flutter_intro/modules/users_practice/controller/users_controller.dart';
import 'package:flutter_intro/modules/users_practice/data/datasources/users_remote_datasources.dart';
import 'package:flutter_intro/modules/users_practice/data/users_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRemoteDataSourceProvider = Provider(
  (ref) => UsersRemoteDataSource(ref.watch(dioProvider)),
);

final usersRepository = Provider(
  (ref) => UsersRepository(
    ref.watch(userRemoteDataSourceProvider),
  ),
);

final usersControllerProvider =
    StateNotifierProvider<UsersController, AsyncValue<List<User>>>(
  (ref) => UsersController(
    ref.watch(usersRepository),
  )..getUsers(),
);
