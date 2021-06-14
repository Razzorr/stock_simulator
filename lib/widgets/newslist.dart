import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/news_models/view_models/newsarticle_listview.dart';

class NewsList extends StatelessWidget {
  dynamic _displayMedia(String? media) {
    if (media == null) {
      return Image.asset('/assets/asfalt-light.png');
    } else
      return Image.network(media);
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: vm.articles.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: _displayMedia(vm.articles[index].imageURL),
          title: Text(vm.articles[index].title,
              style: TextStyle(color: Colors.white)),
        );
      },
    );
  }
}
