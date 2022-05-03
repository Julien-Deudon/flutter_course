import 'package:flutter_intro/core/models/user_model.dart';
import 'package:flutter_intro/modules/users_practice/data/users_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersController extends StateNotifier<AsyncValue<List<User>>> {
  UsersController(this._usersRepository) : super(const AsyncValue.loading());

  final UsersRepository _usersRepository;

  Future<void> getUsers() async {
    state = const AsyncValue.loading();

    final result = await _usersRepository.getUsers();

    state = result.fold(
      (exception) => AsyncValue.error(exception),
      (userList) => AsyncValue.data(userList),
    );
  }
}
