class StockChartData {
  String? date;
  double? open;
  double? close;
  double? high;
  double? low;
  int? volume;
  StockChartData(
      {this.date, this.open, this.close, this.high, this.low, this.volume});

  String? get stockdate => date!;
  double? get stockopen => open!;
  double? get stockclose => close!;
  double? get stockhigh => high!;
  double? get stocklow => low!;
  int? get stockvolume => volume!;

  factory StockChartData.fromJSON(Map<String, dynamic> json) {
    return StockChartData(
        date: json["date"],
        open: json["open"],
        close: json["close"],
        high: json["high"],
        low: json["low"],
        volume: json["volume"]);
  }
}
