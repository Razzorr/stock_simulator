class Stock {
  String? ticker;
  String? company;
  String? price;
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
  String? get stockPrice => price;
  double? get ratePercent => changes!;

  void setPressed(bool? pressed2) => isPressed = pressed2;

  static double? getChanges(String? val) {
    if (val!.contains("-")) {
      return double.parse(val.substring(2, 6)) * -1;
    } else {
      return double.parse(val.substring(2, 6));
    }
  }

  factory Stock.fromJSON(Map<String, dynamic> json) {
    return Stock(
        ticker: json["ticker"],
        company: json["companyName"],
        price: json["price"],
        changes: getChanges(json["changesPercentage"]));
  }
}
