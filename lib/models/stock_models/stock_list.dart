import 'stock.dart';

class StockList2 {
  static Map<String, Map<String, dynamic>> rand = {
    'a': {'a': 'a'}
  };

  static List<String> rand2 = ['a'];
  static List<Stock> stocks = [];

  StockList2(List<Stock> stocks) {
    StockList2.stocks = stocks;
  }

  Future<List<Stock>> building(List<String> arguments) async {
    stocks = [
      Stock(
        company: "Company1",
        ticker: "CP1",
        price: 1.23,
        isPressed: false,
        changes: -1.09,
      ),
      Stock(
        company: "Company2",
        ticker: "CP2",
        price: 1.23,
        isPressed: false,
        changes: 3.06,
      ),
      Stock(
        company: "Company3",
        ticker: "CP3",
        price: 1.23,
        isPressed: false,
        changes: -7.86,
      ),
      Stock(
        company: "Company4",
        ticker: "CP4",
        price: 1.23,
        isPressed: false,
        changes: 8.28,
      ),
      Stock(
        company: "Company5",
        ticker: "CP5",
        price: 1.23,
        isPressed: false,
        changes: 9.10,
      ),
      Stock(
        company: "Company6",
        ticker: "CP6",
        price: 1.23,
        isPressed: false,
        changes: -1.23,
      ),
      Stock(
        company: "Company7",
        ticker: "CP7",
        price: 1.23,
        isPressed: false,
        changes: 2.34,
      ),
      Stock(
        company: "Company8",
        ticker: "CP8",
        price: 1.23,
        isPressed: false,
        changes: 7.67,
      ),
      Stock(
        company: "Company9",
        ticker: "CP9",
        price: 1.23,
        isPressed: false,
        changes: -3.45,
      ),
      Stock(
        company: "Company10",
        ticker: "CP10",
        price: 1.23,
        isPressed: false,
        changes: -6.54,
      )
    ];
    return stocks;
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
