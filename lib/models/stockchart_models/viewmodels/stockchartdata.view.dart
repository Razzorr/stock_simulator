import 'package:flutter/cupertino.dart';
import 'package:stock_simulator/models/stock_models/services/stockservice.dart';
import 'package:stock_simulator/models/stockchart_models/services/stockchartdataservices.dart';

import '../stockchartdata.dart';

class StockChartDataViewModel extends ChangeNotifier {
  List<dynamic> stockdata = [];

  final String symbol;

  StockChartDataViewModel(this.symbol);

  Future<void> populateStockData() async {
    List<StockChartData> stockData =
        await StockChartDataService(symbol).fetchStockData();
    this.stockdata = stockData;
    notifyListeners();
  }
}
