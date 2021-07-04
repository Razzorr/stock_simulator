import 'package:flutter/material.dart';
import 'package:candlesticks/candlesticks.dart';
import 'package:stock_simulator/models/stockchart_models/services/repository.dart';

class StockChart extends StatefulWidget {
  final String? symbol;

  StockChart(this.symbol);

  _stockchart createState() => _stockchart(symbol!);
}

class _stockchart extends State<StockChart> {
  List<Candle> candles = [];

  final String symbol;

  _stockchart(this.symbol);

  @override
  void initState() {
    fetchCandles(symbol: this.symbol, interval: "1h").then((value) {
      setState(() {
        candles = value;
      });
      print(value[0].date.day);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("candleSticks"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.2,
          child: Candlesticks(
            candles: candles,
          ),
        ),
      ),
    );
  }
}
