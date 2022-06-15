import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './first_screen.dart';
import './logínScreen.dart';
import './second_screen.dart';
import './tabHomsScreen.dart';

// void main() => runApp(MyApp());

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MyApp());
}

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
      home: const TabHomeScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        TabHomeScreen.routeName: (ctx) => const TabHomeScreen(),
        FirstScreen.routeName: (ctx) => const FirstScreen(),
        SecondScreen.routeName: (ctx) => const SecondScreen(),
      },
    );
  }
}
