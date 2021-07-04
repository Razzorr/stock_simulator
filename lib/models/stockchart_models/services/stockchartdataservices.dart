import 'dart:convert';

import 'package:http/http.dart' as http;

import '../stockchartdata.dart';

class StockChartDataService {
  final String symbol;

  StockChartDataService(this.symbol);

  Future<List<StockChartData>> fetchStockData() async {
    //api key: dba7d3b3f7733fc94e6eb2d2caf01c55

    Uri url = Uri.parse(
        'https://financialmodelingprep.com/api/v3/historical-chart/1hour/$symbol?apikey=dba7d3b3f7733fc94e6eb2d2caf01c55');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      Iterable list = result;

      return list
          .map((stockchartdata) => StockChartData.fromJSON(stockchartdata))
          .toList();
    } else {
      throw Exception("Failed to get stock chart data.");
    }
  }
}
