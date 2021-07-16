import 'package:flutter/material.dart';
import 'package:login/User_screan.dart';
import 'package:login/counterscrean.dart';
import 'package:login/message_screen.dart';

import 'login_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}


