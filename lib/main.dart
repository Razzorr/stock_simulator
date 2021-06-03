import 'package:flutter/material.dart';
import 'package:stock_simulator/pages/homepage.dart';

void main() {
  runApp(StockApp());
}

class StockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "StockSim", home: HomePage());
  }
}
