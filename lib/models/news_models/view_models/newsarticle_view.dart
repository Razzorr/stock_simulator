import '../news_article.dart';

class NewsArticleViewModel {
  NewsArticle? newsArticle;

  NewsArticleViewModel({NewsArticle? article}) : newsArticle = article;

  String get title {
    return newsArticle!.title;
  }

  String? get description {
    return newsArticle!.description;
  }

  String? get imageURL {
    return newsArticle!.urlToImage;
  }

  String get url {
    return newsArticle!.url;
  }
}
