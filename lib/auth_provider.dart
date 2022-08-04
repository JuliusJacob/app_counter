import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  User user = User(name: "", phone: "", email: "");
  void login(
      {required String name, required String phone, required String email}) {
    user = User(name: name, phone: phone, email: email);
    notifyListeners();
  }
}

class User {
  String name;
  String phone;
  String email;
  User({required this.name, required this.phone, required this.email});
}
