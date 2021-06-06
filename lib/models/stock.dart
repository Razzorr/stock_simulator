import 'package:yahoofin/yahoofin.dart';

class Stock {
  final yfin = YahooFin();
  String? symbol;
  String? company;
  double? price;
  double? rate;
  bool? isPressed;
  Stock({this.symbol, this.company, this.price, this.isPressed, this.rate});

  // Stock(String? c) {
  //   company = c;
  //   StockInfo info = yfin.getStockInfo(ticker: company);
  //   Future<StockQuote> price = yfin.getPrice(stockInfo: info);
  // }

  String? get companyName => company!;
  String? get symbolName => symbol!;
  double? get stockPrice => price!;
  double? get ratePercent => rate!;

  void setPressed(bool? pressed2) => isPressed = pressed2;
}
