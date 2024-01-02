import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roovies/helpers/constant.dart';
import 'package:roovies/providers.dart/movies_provider.dart';
import 'package:roovies/widget/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoviesProvider(),
      child: MaterialApp(
        title: 'Roovies',
        theme: ThemeData(
          primarySwatch: Constants.color,
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme: const ColorScheme.light(),
          fontFamily: "Poppins",
        ),
        home: HomeScreen(),
      ),
    );
  }
}
