import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';
import 'package:vehicle_check/screens/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: kGreen,
          ),
        ),
        home: const HomePage());
  }
}
