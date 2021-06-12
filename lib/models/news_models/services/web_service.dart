import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stock_simulator/models/news_models/news_article.dart';

class Webservice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    //api key: 105b36a59b744d8a9c37a5c35d070a88

    Uri url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=105b36a59b744d8a9c37a5c35d070a88');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      Iterable list = result["articles"];

      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Failed to get top news.");
    }
  }
}
