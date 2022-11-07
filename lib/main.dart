import 'package:flutter/material.dart';
import 'package:roovies/helpers/constant.dart';
import 'package:roovies/widget/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roovies',
      theme: ThemeData(
        primarySwatch: Constants.color,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        accentColor: Color.fromRGBO(244, 193, 15, 1),
        fontFamily: "Poppins",
      ),
      home: HomeScreen(),
    );
  }
}
