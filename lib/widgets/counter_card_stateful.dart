import 'package:flutter/material.dart';

class CounterCardStateful extends StatefulWidget {
  const CounterCardStateful({super.key});

  @override
  _CounterCardStatefulState createState() => _CounterCardStatefulState();
}

class _CounterCardStatefulState extends State<CounterCardStateful> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[400], // Agar tombol putih kelihatan
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
        child: Column(
          children: [
            Text(
              'Stateful Counter',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 12),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _increment,
                  icon: Icon(Icons.add),
                  label: Text('Tambah'),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: _reset,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text('Reset'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
