import 'package:flutter/material.dart';

class SignUpScreenProvider with ChangeNotifier {
  String _name = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  bool _isLoading = false;

  String get name => _name;
  String get email => _email;
  String get password => _password;
  String get confirmPassword => _confirmPassword;
  bool get isLoading => _isLoading;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  set confirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  Future<void> signUp() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));

    // After sign-up is "complete"
    _isLoading = false;
    notifyListeners();

  }
}
