import 'package:flutter/cupertino.dart';
import 'package:stock_simulator/models/stock_models/services/stockservice.dart';

import '../stock.dart';
import 'stock_view.dart';

class StockListViewModel extends ChangeNotifier {
  List<StockViewModel> stocks = [];

  StockListViewModel() {
    populateActiveStocks();
  }

  Future<void> populateActiveStocks() async {
    List<Stock> stockLists = await Stockservice().fetchActiveStocks();
    this.stocks =
        stockLists.map((stock) => StockViewModel(newStock: stock)).toList();
    notifyListeners();
  }
}
