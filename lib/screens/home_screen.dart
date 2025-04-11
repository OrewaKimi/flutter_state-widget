import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/counter_card_stateless.dart';
import '../widgets/counter_card_stateful.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double cardWidth = MediaQuery.of(context).size.width / 2 - 30;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SizedBox(height: 30),
              Text(
                "Perbandingan Stateless dan Stateful",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: cardWidth,
                    child: CounterCardStateless(fixedValue: 0),
                  ),
                  SizedBox(width: 16),
                  SizedBox(
                    width: cardWidth,
                    child: CounterCardStateful(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
