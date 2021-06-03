class Stock {
  final String? symbol;
  final String? company;
  final double? price;

  Stock({this.symbol, this.company, this.price});

  static List<Stock> getAll() {
    List<Stock> stocks = List<Stock>.empty(growable: true);

    stocks.add(Stock(company: "Company1", symbol: "CP1", price: 3.50));
    stocks.add(Stock(company: "Company2", symbol: "CP2", price: 3.50));
    stocks.add(Stock(company: "Company3", symbol: "CP3", price: 3.50));
    stocks.add(Stock(company: "Company4", symbol: "CP4", price: 3.50));
    stocks.add(Stock(company: "Company5", symbol: "CP5", price: 3.50));
    stocks.add(Stock(company: "Company6", symbol: "CP6", price: 3.50));
    stocks.add(Stock(company: "Company7", symbol: "CP7", price: 3.50));
    stocks.add(Stock(company: "Company8", symbol: "CP8", price: 3.50));
    stocks.add(Stock(company: "Company9", symbol: "CP9", price: 3.50));
    stocks.add(Stock(company: "Company10", symbol: "CP10", price: 3.50));

    return stocks;
  }
}
