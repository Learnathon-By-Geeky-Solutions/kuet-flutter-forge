import 'package:flutter/material.dart';

class SplashScreenProvider with ChangeNotifier {
  bool _checkUser = false;
  bool get checkUser => _checkUser;

  Future<void> checkUserStatus() async {
    await Future.delayed(const Duration(seconds: 2));
    _checkUser = true;
    notifyListeners();
  }
}
