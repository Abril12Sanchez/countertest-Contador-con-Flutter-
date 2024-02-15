import 'package:countertest/pages/home_page.dart';
import 'package:flutter/material.dart';
//mateapp
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Super es el constructor de la clase padre

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contador',
      home: HomePage(),
    );
  }
}