import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class UsernameProvider with ChangeNotifier {
  String _username = '';

  String get username => _username;

  Future<void> saveUsername(String newUsername) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', newUsername);
    _username = newUsername;
    notifyListeners();
  }

  Future<void> deleteUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    _username = '';
    notifyListeners();
  }

  Future<void> loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = prefs.getString('username') ?? '';
    notifyListeners();
  }
}
