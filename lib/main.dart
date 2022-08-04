import 'package:app_counter/auth_provider.dart';
import 'package:app_counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'login.dart';
import 'auth_provider.dart';
void main() {
  runApp(MultiProvider
  (
  providers:[
    ChangeNotifierProvider(create: (context) => Counter(),),
    ChangeNotifierProvider(create: (context) => AuthProvider(),),
  ],
  child: const MyApp()));
}
