class Stock {
  String? ticker;
  String? company;
  double? price;
  double? changes;
  bool? isPressed;
  Stock(
      {this.ticker,
      this.company,
      required this.price,
      this.isPressed,
      this.changes});

  String? get companyName => company!;
  String? get symbolName => ticker!;
  double? get stockPrice => price;
  double? get ratePercent => changes!;

  void setPressed(bool? pressed2) => isPressed = pressed2;

  factory Stock.fromJSON(Map<String, dynamic> json) {
    return Stock(
        ticker: json["ticker"],
        company: json["companyName"],
        price: json["price"],
        changes: json["changes"]);
  }
}
