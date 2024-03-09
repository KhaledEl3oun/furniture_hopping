import 'package:flutter/material.dart';
import 'package:furniture_hopping/feature/home/home.dart';
import 'package:furniture_hopping/feature/navBar/navBar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
     home: navBar());
  }
}
