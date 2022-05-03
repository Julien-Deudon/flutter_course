import 'package:dartz/dartz.dart';
import 'package:flutter_intro/core/models/user_model.dart';
import 'package:flutter_intro/modules/users_practice/data/datasources/users_remote_datasources.dart';

class UsersRepository {
  UsersRepository(this._remoteDataSource);

  final UsersRemoteDataSource _remoteDataSource;

  Future<Either<Exception, List<User>>> getUsers() async {
    try {
      final userList = await _remoteDataSource.getUsers();
      return Right(userList);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
