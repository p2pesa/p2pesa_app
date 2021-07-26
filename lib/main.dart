import 'package:flutter/material.dart';

import 'package:p2pesa_app/login.dart';
// import 'package:p2pesa_app/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Pesa 2 Pesa',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000000),
        brightness: Brightness.dark,
        primaryColor: Color(0xFFFFFFFF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF54F5D8),
            textStyle: TextStyle(
              color: Color(0xFF1E3352),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        // '/home': (context) => HomeScreen(),
      },
    ),
  );
}
