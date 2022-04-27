import 'package:flutter/services.dart';
import 'package:flutter_intro/core/models/user_model.dart';

class UserService {
  static Future<List<User>> getUsers() async {
    final String response =
        await rootBundle.loadString('assets/json/users.json');
    return userFromJson(response);
  }
}
