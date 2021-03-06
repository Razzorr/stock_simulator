import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/stock_models/viewmodels/stock_listview.dart';
import 'package:stock_simulator/pages/buyandsellpage.dart';

class StockList extends StatefulWidget {
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  void initState() {
    super.initState();
    Provider.of<StockListViewModel>(context, listen: false)
        .populateActiveStocks();
  }

  String posOrNeg(double val) {
    if (val > 0)
      return "+$val%";
    else if (val < 0)
      return "-$val%";
    else
      return "$val%";
  }

  Widget build(BuildContext context) {
    final vm = Provider.of<StockListViewModel>(context);
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey[400]);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: vm.stocks.length,
        itemBuilder: (context, index) {
          final stock = vm.stocks[index];
          var ticker = stock.ticker;
          var companyName = stock.companyName;
          var price = stock.price;
          var changes = stock.changes;
          return ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 3.0),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(0.0),
                      child: TextButton(
                        onPressed: () {
                          stock.setPressed(true);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuySellPage(
                                      stockCarrier: vm.stocks[index])));
                        },
                        child: Text('$ticker',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500)),
                      )),
                  Text('$companyName',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.w500))
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
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
                        child: Text(posOrNeg(changes!),
                            style: TextStyle(color: Colors.white)),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: checkColor(changes),
                        )),
                  )
                ],
              ));
        });
  }

  Color checkColor(double? val) {
    double value = 0;
    if (val != null) {
      value = val;
    }

    if (value > 0) {
      return Colors.green;
    } else if (value < 0) {
      return Colors.red;
    }
    return Colors.grey;
  }
}
