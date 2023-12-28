import 'package:first_project/signup_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'start page',
      home: signup_page(),
    );
  }
}
