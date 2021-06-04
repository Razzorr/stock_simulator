import 'package:stock_simulator/pages/buyandsellpage.dart';

class Stock {
  final String? symbol;
  final String? company;
  final double? price;
  bool? isPressed;
  Stock({this.symbol, this.company, this.price, this.isPressed});

  String? get companyName => company!;
  String? get symbolName => symbol!;
  double? get stockPrice => price!;

  void setPressed(bool? pressed2) => isPressed = pressed2;
}
