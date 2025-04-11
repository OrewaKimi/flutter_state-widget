import 'package:flutter/material.dart';

class CounterCardStateless extends StatelessWidget {
  final int fixedValue;

  const CounterCardStateless({super.key, required this.fixedValue});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
        child: Column(
          children: [
            Text(
              'Stateless Counter',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              '$fixedValue',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: 26),
            Text(
              'Tidak bisa berubah',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
