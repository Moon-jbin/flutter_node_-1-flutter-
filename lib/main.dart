import 'package:flutter/material.dart';
import 'package:flutter_nodejs_mysql/pages/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter & nodejs',
      home: MainPage(),
    );
  }
}