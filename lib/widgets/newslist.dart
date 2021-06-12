import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/news_models/news_article.dart';
import 'package:stock_simulator/models/news_models/view_models/newsarticle_listview.dart';

class NewsList extends StatelessWidget {
  String _displayMedia(String? media) {
    if (media == null) {
      return '/assets/asfalt-light.png';
    } else
      return media;
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    //TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: vm.articles.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: FadeInImage.assetNetwork(
              placeholder: 'N/A',
              image: _displayMedia(vm.articles[index].imageURL)),
          title: Text(vm.articles[index].title,
              style: TextStyle(color: Colors.white)),
        );
      },
    );
  }
}
