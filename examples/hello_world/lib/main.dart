import 'package:flutter/material.dart';

import './first_screen.dart';
import './loginScreen.dart';
import './second_screen.dart';
import './tabHomsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo App',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        TabHomeScreen.routeName: (ctx) => const TabHomeScreen(),
        FirstScreen.routeName: (ctx) => const FirstScreen(),
        SecondScreen.routeName: (ctx) => const SecondScreen(),
      },
    );
  }
}
