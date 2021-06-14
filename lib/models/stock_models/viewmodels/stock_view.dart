import 'package:stock_simulator/models/stock_models/stock.dart';

class StockViewModel {
  Stock? stock;

  StockViewModel({Stock? newStock}) : stock = newStock;

  String? get ticker {
    return stock!.ticker;
  }

  String? get companyName {
    return stock!.companyName;
  }

  double? get price {
    return stock!.price;
  }

  double? get changes {
    return stock!.changes;
  }

  void setPressed(bool? newPressed) {
    stock!.isPressed = newPressed;
  }
}
