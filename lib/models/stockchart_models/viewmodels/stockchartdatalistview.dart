import 'package:flutter/cupertino.dart';
import 'package:stock_simulator/models/stockchart_models/services/stockchartdataservices.dart';
import 'package:stock_simulator/models/stockchart_models/viewmodels/stockchartdataview.dart';

import '../stockchartdata.dart';

class StockChartDataListViewModel extends ChangeNotifier {
  List<dynamic> stockdata = [];

  final String symbol;

  StockChartDataListViewModel(this.symbol);

  Future<void> populateStockData() async {
    List<StockChartData> stockData =
        await StockChartDataService(symbol).fetchStockData();
    this.stockdata =
        stockData.map((dataa) => StockChartDataView(data: dataa)).toList();
    notifyListeners();
  }
}
