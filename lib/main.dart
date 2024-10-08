import 'package:flutter/material.dart';
import 'package:islam/app_theme.dart';
import 'package:islam/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(), 
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
