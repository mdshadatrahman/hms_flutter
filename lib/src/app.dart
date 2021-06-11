import 'package:flutter/material.dart';
import 'package:hms_flutter/src/screens/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HMS',
      theme: ThemeData(
        accentColor: Colors.orange,
        primaryColor: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
