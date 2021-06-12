import 'package:flutter/cupertino.dart';
import 'package:stock_simulator/models/news_models/services/web_service.dart';

import '../news_article.dart';
import 'newsarticle_view.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = [];

  NewsArticleListViewModel() {
    populateTopHeadlines();
  }

  Future<void> populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
