import 'package:flutter/material.dart';
import 'package:stock_simulator/models/stock.dart';
import 'package:stock_simulator/models/stock_list.dart';
import 'package:stock_simulator/widgets/stocklist.dart';
import '_homepage.dart';
import 'activitypage.dart';
import 'learnpage.dart';
import 'newspage.dart';
import 'package:intl/intl.dart';

//import 'dart.html';

class TradePage extends StatefulWidget {
  _tradepage createState() => _tradepage();
}

// ignore: camel_case_types
class _tradepage extends State<TradePage> {
  String date = new DateFormat.yMMMMd('en_US').format(new DateTime.now());
  List<Stock> stocks1 = StockList2.stocks;
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < StockList2.stocks.length; i++) {
      StockList2.stocks[i].setPressed(false);
    }
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
                  Text("Trade",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  Text("$date",
                      style: TextStyle(
                          color: Colors.white30,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 50,
                        child: TextField(
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                hintText: "Search a stock...",
                                prefix: Icon(Icons.search),
                                fillColor: Colors.grey[800],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32)))))),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height - 300,
                      child: StockList(stocks: StockList2(StockList2.stocks))),
                  //buttons
                  Container(
                      padding: EdgeInsets.all(10.0),
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
                                            builder: (context) => HomePage2()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("H",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NewsPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("N",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
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
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("T",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActivityPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("A",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LearnPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("L",
                                      style: TextStyle(fontSize: 20.0)),
                                ))
                          ],
                        ),
                      ))
                ]),
          ))
    ]));
  }
}
