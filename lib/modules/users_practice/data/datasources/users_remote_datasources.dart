import 'package:dio/dio.dart';
import 'package:flutter_intro/core/models/user_model.dart';

class UsersRemoteDataSource {
  UsersRemoteDataSource(this.dio);

  final Dio dio;

  Future<List<User>> getUsers() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode != 200) {
      throw Exception('Invalid reponse ${response.statusCode}');
    }

    return userFromJson(response.data);
  }
}
