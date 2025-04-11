import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Ini adalah StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Stateful',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless vs Stateful Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyStatelessWidget(),
            Divider(height: 40),
            MyStatefulWidget(),
          ],
        ),
      ),
    );
  }
}

// Widget ini tidak akan pernah berubah
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build StatelessWidget"); // Untuk melihat kapan dibuild
    return Center(
      child: Text(
        'Ini StatelessWidget (selalu tetap)',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}

// Widget ini bisa berubah saat tombol ditekan
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build StatefulWidget"); // Untuk melihat kapan dibuild
    return Column(
      children: [
        Text(
          'Counter: $_counter',
          style: TextStyle(fontSize: 24, color: Colors.green),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Tambah Counter'),
        ),
      ],
    );
  }
}
