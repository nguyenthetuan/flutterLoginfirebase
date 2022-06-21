// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';

import './second_screen.dart';
import './first_screen.dart';

void main() {
  runApp(TabHomeScreen());
}

class TabHomeScreen extends StatefulWidget {
  static const routeName = '/tabhome-screen';
  // Hàm khởi tạo - Constructor
  const TabHomeScreen() : super();
  // final String title;
// Khởi Tạo State
  @override
  homeScreen createState() => homeScreen();
}

class homeScreen extends State<TabHomeScreen> {
  int _selectedIndex = 2;

  // const homeScreen({Key? key}) : super(key: key);
  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    print('$index');
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 1:
        Navigator.of(context).pushNamed(FirstScreen.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(SecondScreen.routeName);
        break;
      default:
        break;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
