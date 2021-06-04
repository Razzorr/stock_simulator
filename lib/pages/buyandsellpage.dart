import 'package:flutter/material.dart';
import 'package:stock_simulator/pages/tradepage.dart';
import 'tradepage.dart';

class BuySellPage extends StatefulWidget {
  _buysellpage createState() => _buysellpage();
}

// ignore: camel_case_types
class _buysellpage extends State<BuySellPage> {
  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.all(0.0),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: SafeArea(
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10.0),
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
                        ],
                      ),
                    )),
                Text("Buy/Sell",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold)),
              ])))
    ]));
  }
}
