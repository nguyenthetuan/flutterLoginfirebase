import 'package:flutter/material.dart';

import './first_screen.dart';

void main() {
  runApp(SecondScreen());
}

class SecondScreen extends StatefulWidget {
  static String routeName = '/second-screen';
  const SecondScreen() : super();
  @override
  second createState() => second();
}

class second extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Text('This is the second screen!'),
          const SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FirstScreen.routeName);
            },
            child: const Text('BACK TO FIRST SCREEN'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('BACK USING POP METHOD'),
          ),
        ],
      ),
    );
  }
}
