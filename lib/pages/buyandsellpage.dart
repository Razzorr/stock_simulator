import 'package:flutter/material.dart';
import 'package:stock_simulator/models/stock.dart';
import 'package:stock_simulator/pages/tradepage.dart';
import 'package:stock_simulator/models/stock_list.dart';
import 'tradepage.dart';

class BuySellPage extends StatefulWidget {
  final StockList2? stocks;
  BuySellPage(this.stocks);
  _buysellpage createState() => _buysellpage(this.stocks);
}

// ignore: camel_case_types
class _buysellpage extends State<BuySellPage> {
  final StockList2? stocks;
  _buysellpage(this.stocks);
  Color checkColor(double? val) {
    if (val! > 0) return Colors.green;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    Stock? stock = stocks!.trueStock();
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width + 100,
                    color: Colors.black,
                    child: SafeArea(
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(0.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TradePage()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.grey[600],
                                  shadowColor: Colors.white,
                                  primary: Colors.red,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10.0),
                                  minimumSize: Size(5, 2.5),
                                ),
                                child: Text("back",
                                    style: TextStyle(fontSize: 10.0)),
                              )),
                          Container(
                              padding: EdgeInsets.all(30.0),
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black,
                              child: (SafeArea(
                                  child: Text(
                                      "${stocks!.trueStock()!.companyName}",
                                      style: TextStyle(
                                          color: checkColor(stock!.stockPrice),
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold)))))
                        ],
                      ),
                    )),
              ])))
    ]));
  }
}
