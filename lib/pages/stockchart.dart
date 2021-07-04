import 'package:flutter/material.dart';
import 'package:candlesticks/candlesticks.dart';

class StockChart extends StatefulWidget {
  final String? symbol;

  StockChart(this.symbol);

  _stockchart createState() => _stockchart(symbol);
}

class _stockchart extends State<StockChart> {
  final String? symbol;

  _stockchart(this.symbol);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
