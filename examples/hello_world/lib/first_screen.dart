// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const FirstScreen());
}
// Class sử dụng StatelessWidget vì chỉ đơn thuần hiển thị Widget : MyHomePage
// Thông thường, khi bắt đầu một ứng dụng , class đầu tiên sẽ extends StatelessWidget
// và bên trong hàm build dùng Widget : MaterialApp

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  static const String routeName = '/first-screen';
  // Các widget lồng nhau để tạo lên một giao diện
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
        count: 1,
      ),
    );
  }
}

// Class sử dụng StatefulWidget
class MyHomePage extends StatefulWidget {
  // Hàm khởi tạo - Constructor
  const MyHomePage({Key? key, required this.title, required this.count})
      : super(key: key);

  final String title;

  final int count;

// Khởi Tạo State
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
// Hàm thay đổi State của biến _counter
// Hàm setState() : giúp set lại State của màn hình ứng dụng và gọi lại hàm build lại State mới
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tạo Appbar
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Hiển thị ở giữa
      body: Center(
        // Tạo cột
        child: Column(
          // Căn trục ở vị trí giữa
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Hàng một
            const Text(
              'You have pushed the button this many times:',
            ),
            // Hàng 2
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // Mỗi khi nhấn nút sẽ gọi đến hàm _incrementCounter, và khi đó State của _counter lại được đặt lại và thay đổi lên màn hình
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
