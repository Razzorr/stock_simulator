import 'dart:convert';

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
    fetchCandles(symbol: "BTCUSDT", interval: "1h").then((value) {
      setState(() {
        candles = value;
      });
      print(value[0].date.day);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
          child: StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                final data =
                    jsonDecode(snapshot.data as String) as Map<String, dynamic>;
                if (data.containsKey("k") == true &&
                    candles[0].date.millisecondsSinceEpoch == data["k"]["t"]) {
                  candles[0] = Candle(
                      date: candles[0].date,
                      high: double.parse(data["k"]["h"]),
                      low: double.parse(data["k"]["l"]),
                      open: double.parse(data["k"]["o"]),
                      close: double.parse(data["k"]["c"]),
                      volume: double.parse(data["k"]["v"]));
                } else if (data.containsKey("k") == true) {
                  candles.insert(
                      0,
                      Candle(
                          date: DateTime.fromMillisecondsSinceEpoch(
                              data["k"]["t"]),
                          high: double.parse(data["k"]["h"]),
                          low: double.parse(data["k"]["l"]),
                          open: double.parse(data["k"]["o"]),
                          close: double.parse(data["k"]["c"]),
                          volume: double.parse(data["k"]["v"])));
                }
              }
              // candles[0] = new Candle(close: )
              return Candlesticks(
                candles: candles,
              );
            },
          ),
        ),
      ),
    );
  }
}
