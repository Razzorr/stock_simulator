class Stock {
  String? symbol;
  String? company;
  double? price;
  double? rate;
  bool? isPressed;
  Stock(
      {this.symbol,
      this.company,
      required this.price,
      this.isPressed,
      this.rate});

  String? get companyName => company!;
  String? get symbolName => symbol!;
  double? get stockPrice => price;
  double? get ratePercent => rate!;

  void setPressed(bool? pressed2) => isPressed = pressed2;
}
