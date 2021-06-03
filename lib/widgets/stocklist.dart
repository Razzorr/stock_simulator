import 'package:flutter/material.dart';
import 'package:stock_simulator/models/stock.dart';

class StockList extends StatelessWidget {
  final List<Stock>? stocks;

  StockList({this.stocks});

  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey[400]);
        },
        itemCount: stocks!.length,
        itemBuilder: (context, index) {
          final stock = stocks![index];
          var symbol = stock.symbol;
          var company = stock.company;
          var price = stock.price;
          var randPrice = -1.09;
          return ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('$symbol',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
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
                        child: Text("$randPrice%",
                            style: TextStyle(color: Colors.white)),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: checkColor(randPrice),
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
