import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Information',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Home() //ambil kelas home
        );
  }
}
