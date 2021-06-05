import 'package:flutter/material.dart';

import 'package:p2pesa_app/login.dart';
// import 'package:p2pesa_app/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Pesa 2 Pesa',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1A237E),
        brightness: Brightness.light,
        primaryColor: Color(0xFFFFFFFF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        // '/home': (context) => HomeScreen(),
      },
    ),
  );
}
