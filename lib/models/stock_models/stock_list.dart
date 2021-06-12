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
        symbol: "CP1",
        price: 1.23,
        isPressed: false,
        rate: -1.09,
      ),
      Stock(
        company: "Company2",
        symbol: "CP2",
        price: 1.23,
        isPressed: false,
        rate: 3.06,
      ),
      Stock(
        company: "Company3",
        symbol: "CP3",
        price: 1.23,
        isPressed: false,
        rate: -7.86,
      ),
      Stock(
        company: "Company4",
        symbol: "CP4",
        price: 1.23,
        isPressed: false,
        rate: 8.28,
      ),
      Stock(
        company: "Company5",
        symbol: "CP5",
        price: 1.23,
        isPressed: false,
        rate: 9.10,
      ),
      Stock(
        company: "Company6",
        symbol: "CP6",
        price: 1.23,
        isPressed: false,
        rate: -1.23,
      ),
      Stock(
        company: "Company7",
        symbol: "CP7",
        price: 1.23,
        isPressed: false,
        rate: 2.34,
      ),
      Stock(
        company: "Company8",
        symbol: "CP8",
        price: 1.23,
        isPressed: false,
        rate: 7.67,
      ),
      Stock(
        company: "Company9",
        symbol: "CP9",
        price: 1.23,
        isPressed: false,
        rate: -3.45,
      ),
      Stock(
        company: "Company10",
        symbol: "CP10",
        price: 1.23,
        isPressed: false,
        rate: -6.54,
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
