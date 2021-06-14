import 'dart:convert';

import 'package:http/http.dart' as http;

import '../stock.dart';

class Stockservice {
  Future<List<Stock>> fetchActiveStocks() async {
    //api key: dba7d3b3f7733fc94e6eb2d2caf01c55

    Uri url = Uri.parse(
        'https://financialmodelingprep.com/api/v3/actives?apikey=dba7d3b3f7733fc94e6eb2d2caf01c55');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      Iterable list = result;

      return list.map((stock) => Stock.fromJSON(stock)).toList();
    } else {
      throw Exception("Failed to get stocks.");
    }
  }
}
