import 'stock.dart';

class StockList2 {
  static List<Stock> stocks = [
    Stock(company: "Company1", symbol: "CP1", price: 1.23, isPressed: false),
    Stock(company: "Company2", symbol: "CP2", price: 1.23, isPressed: false),
    Stock(company: "Company3", symbol: "CP3", price: 1.23, isPressed: false),
    Stock(company: "Company4", symbol: "CP4", price: 1.23, isPressed: false),
    Stock(company: "Company5", symbol: "CP5", price: 1.23, isPressed: false),
    Stock(company: "Company6", symbol: "CP6", price: 1.23, isPressed: false),
    Stock(company: "Company7", symbol: "CP7", price: 1.23, isPressed: false),
    Stock(company: "Company8", symbol: "CP8", price: 1.23, isPressed: false),
    Stock(company: "Company9", symbol: "CP9", price: 1.23, isPressed: false),
    Stock(company: "Company10", symbol: "CP10", price: 1.23, isPressed: false)
  ];

  StockList2(List<Stock> stocks) {
    StockList2.stocks = stocks;
  }
  int length() {
    return stocks.length;
  }

  dynamic getIndex(int i) {
    return stocks[i];
  }

  Stock? trueStock() {
    for (int i = 0; i < stocks.length; i++) {
      Stock s = stocks[i];
      if (s.isPressed == true) return s;
    }
    Stock s = stocks[0];
    return s;
  }

  get all {
    return stocks;
  }
}
