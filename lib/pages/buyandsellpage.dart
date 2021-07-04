import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/stock_models/viewmodels/stock_view.dart';
import 'package:stock_simulator/models/stockchart_models/viewmodels/stockchartdatalistview.dart';
import 'package:stock_simulator/models/stockchart_models/viewmodels/stockchartdataview.dart';
import 'package:stock_simulator/pages/stockchartx.dart';
import 'package:stock_simulator/pages/tradepage.dart';
import 'tradepage.dart';
//import 'stockchart.dart';

class BuySellPage extends StatefulWidget {
  final StockViewModel stockCarrier;

  const BuySellPage({required this.stockCarrier});
  _buysellpage createState() => _buysellpage(this.stockCarrier);
}

// ignore: camel_case_types
class _buysellpage extends State<BuySellPage> {
  final StockViewModel stock;

  _buysellpage(this.stock);
  Color checkColor(double? val) {
    if (val! > 0) return Colors.green;
    return Colors.red;
  }

  List sampleData = [
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volume": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volume": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volume": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volume": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volume": 3000.0},
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volume": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volume": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volume": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volume": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volume": 3000.0},
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volume": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volume": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volume": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volume": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volume": 3000.0},
  ];

  @override
  Widget build(BuildContext context) {
    // final vm = Provider.of<StockChartDataListViewModel>(context);

    // builder:
    // (context) {
    //   for (int i = 0; i < vm.stockdata.length; i++) {
    //     sampleData.add({
    //       "open": vm.stockdata[i].open,
    //       "high": vm.stockdata[i].high,
    //       "low": vm.stockdata[i].low,
    //       "close": vm.stockdata[i].close,
    //       "volume": vm.stockdata[i].volume
    //     });
    //   }
    // };
    double price = double.parse(stock.price!);
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SafeArea(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TradePage()));
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey[600],
                                        shadowColor: Colors.white,
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        minimumSize: Size(5, 2.5),
                                      ),
                                      child: Text("back",
                                          style: TextStyle(fontSize: 10.0)),
                                    )),
                                Container(
                                    padding: EdgeInsets.all(30.0),
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    color: Colors.black,
                                    child: (SafeArea(
                                        child: Text("${stock.companyName}",
                                            style: TextStyle(
                                                color:
                                                    checkColor(stock.changes),
                                                fontSize: 36,
                                                fontWeight: FontWeight.bold)))))
                              ],
                            ),
                          ),
                          SafeArea(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                Text("${stock.ticker}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold)),
                                Text("\$${stock.price}",
                                    style: TextStyle(
                                        color: checkColor(stock.changes),
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Text("${stock.changes}%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: checkColor(stock.changes),
                                      )),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: TextButton(
                                      onPressed: () {
                                        TradePage.money -= price;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TradePage()));
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        shadowColor: Colors.white,
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                7.75,
                                            10),
                                      ),
                                      child: Text("buy",
                                          style: TextStyle(fontSize: 20.0)),
                                    )),
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: TextButton(
                                      onPressed: () {
                                        TradePage.money += price;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TradePage()));
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shadowColor: Colors.white,
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                7.75,
                                            10),
                                      ),
                                      child: Text("sell",
                                          style: TextStyle(fontSize: 20.0)),
                                    ))
                              ])),
                          // //SizedBox(
                          //     height: 300,
                          //     width: 300,
                          //     child: StockChart(stock.ticker))
                          SizedBox(
                              height: 195,
                              width: MediaQuery.of(context).size.width,
                              child: OHLCVGraph(
                                data: sampleData,
                                enableGridLines: true,
                                key: new Key("pencil"),
                                volumeProp: 0.3,
                              ))
                        ])),
              ])))
    ]));
  }
}
