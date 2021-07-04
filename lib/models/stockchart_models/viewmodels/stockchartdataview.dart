import '../stockchartdata.dart';

class StockChartDataView {
  final StockChartData data;

  StockChartDataView({required this.data});

  String? get stockdate => data.date!;

  double? get stockopen => data.open!;

  double? get stockclose => data.close!;

  double? get stockhigh => data.high!;

  double? get stocklow => data.low!;

  int? get stockvolume => data.volume!;
}
