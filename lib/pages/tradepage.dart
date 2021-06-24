import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/stock_models/viewmodels/stock_listview.dart';
import 'package:stock_simulator/widgets/buttons.dart';
import 'package:stock_simulator/widgets/stocklist.dart';
import 'package:intl/intl.dart';

//import 'dart.html';

class TradePage extends StatefulWidget {
  _tradepage createState() => _tradepage();
}

// ignore: camel_case_types
class _tradepage extends State<TradePage> {
  List<String> a = ['a'];
  String date = new DateFormat.yMMMMd('en_US').format(new DateTime.now());

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SafeArea(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 300,
                        child: ChangeNotifierProvider(
                            create: (context) => StockListViewModel(),
                            child: StockList()),
                      ),
                    ),
                  ),
                  //buttons
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Buttons(
                        homepage: false,
                        newspage: false,
                        tradepage: true,
                        activitypage: false,
                        learnpage: false),
                  )
                ]),
          ))
    ]));
  }
}
