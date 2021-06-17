import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/news_models/view_models/newsarticle_listview.dart';

class NewsList extends StatefulWidget {
  @override
  _newsListState createState() => _newsListState();
}

// ignore: camel_case_types
class _newsListState extends State<NewsList> {
  dynamic _displayMedia(String? media) {
    if (media == null) {
      return Image.asset('images/placeholder.png');
    } else
      return Image.network(media);
  }

  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);

    dynamic isNull(media) {
      if (media == null)
        return "No author";
      else
        return media;
    }

    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(color: Colors.grey[400]);
      },
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: vm.articles.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 3.0),
          leading: Container(
              width: 100,
              height: 100,
              child: _displayMedia(vm.articles[index].imageURL)),
          title: Column(
            children: <Widget>[
              Text(vm.articles[index].title,
                  style: TextStyle(color: Colors.white)),
              Text(isNull(vm.articles[index].author),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold))
            ],
          ),
        );
      },
    );
  }
}
