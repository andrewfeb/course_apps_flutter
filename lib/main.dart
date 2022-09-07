import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infilearn',
      theme: AppTheme.blue(),
      home: const HomeScreen(),
    );
  }
}
