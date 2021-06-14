import 'package:flutter/material.dart';
import 'package:stock_simulator/models/stock_models/stock.dart';
import 'package:stock_simulator/pages/tradepage.dart';
import 'package:stock_simulator/models/stock_models/stock_list.dart';
import 'tradepage.dart';
//import 'stockchart.dart';

class BuySellPage extends StatefulWidget {
  final StockList2? stocks;
  BuySellPage(this.stocks);
  _buysellpage createState() => _buysellpage(this.stocks);
}

// ignore: camel_case_types
class _buysellpage extends State<BuySellPage> {
  final vm = Provider.of<StockListViewModel>(context);

  dynamic trueStock() {
    for (int i = 0; i < vm.stocks.length; i++) {
      if (vm.stocks[i].isPressed()) {
        return vm.stocks[i];
      }
    }
  }

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
                                        child: Text(
                                            "${stocks!.trueStock()!.companyName}",
                                            style: TextStyle(
                                                color:
                                                    checkColor(stock!.changes),
                                                fontSize: 36,
                                                fontWeight: FontWeight.bold)))))
                              ],
                            ),
                          ),
                          SafeArea(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                Text("${stocks!.trueStock()!.ticker}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold)),
                                Text("\$${stocks!.trueStock()!.price}",
                                    style: TextStyle(
                                        color: checkColor(stock.changes),
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Text(
                                          "${stocks!.trueStock()!.changes}%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: checkColor(stock.changes),
                                      )),
                                )
                              ])),
                          //SizedBox(child: StockChart())
                        ])),
              ])))
    ]));
  }
}
