class Stock {
  final String? symbol;
  final String? company;
  final double? price;

  Stock({this.symbol, this.company, this.price});

  static List<Stock> getAll() {
    List<Stock> stocks = List<Stock>.empty(growable: true);

    stocks.add(Stock(company: "McDonalds", symbol: "MCD", price: 3.50));
    stocks.add(Stock(company: "BangBroz", symbol: "BBZ", price: 3.50));
    stocks.add(Stock(company: "PornHub", symbol: "PH", price: 3.50));
    stocks.add(Stock(company: "Segway", symbol: "SG", price: 3.50));
    stocks.add(Stock(company: "Ballsakc", symbol: "BSK", price: 3.50));
    stocks.add(Stock(company: "PEnis", symbol: "PN", price: 3.50));
    stocks.add(Stock(company: "Vagenis", symbol: "VG", price: 3.50));
    stocks.add(Stock(company: "PussyCatFLowe", symbol: "PCF", price: 3.50));
    stocks.add(Stock(company: "NigerianBalls", symbol: "NB", price: 3.50));
    stocks.add(Stock(company: "Daddy", symbol: "DDY", price: 3.50));

    return stocks;
  }
}
