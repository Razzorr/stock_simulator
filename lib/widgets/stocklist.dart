import 'package:flutter/material.dart';
import 'package:stock_simulator/models/stock.dart';
import 'package:stock_simulator/pages/buyandsellpage.dart';
import 'package:stock_simulator/models/stock_list.dart';

class StockList extends StatelessWidget {
  final StockList2? stocks;

  StockList({this.stocks});

  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey[400]);
        },
        itemCount: stocks!.length(),
        itemBuilder: (context, index) {
          final stock = stocks!.getIndex(index);
          var symbol = stock.symbol;
          var company = stock.company;
          var price = stock.price;
          var rate = stock.rate;
          return ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 3.0),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () {
                          stock.setPressed(true);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BuySellPage(this.stocks)));
                        },
                        child: Text('$symbol',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500)),
                      )),
                  Text('$company',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.w500))
                ],
              ),
              trailing: Column(
                children: <Widget>[
                  Text("\$$price",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    child: Container(
                        width: 75,
                        height: 25,
                        child: Text("$rate%",
                            style: TextStyle(color: Colors.white)),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: checkColor(rate),
                        )),
                  )
                ],
              ));
        });
  }

  Color checkColor(double val) {
    if (val > 0) return Colors.green;
    return Colors.red;
  }
}
