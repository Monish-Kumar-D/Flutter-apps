// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bmi/calculator.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();

  var MyCalculator = await Hive.openBox("MyCalculator");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiCalculator() 
    );
  }
}