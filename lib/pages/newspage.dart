import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/news_models/view_models/newsarticle_listview.dart';
import 'package:stock_simulator/widgets/buttons.dart';
import 'package:stock_simulator/widgets/newslist.dart';

class NewsPage extends StatefulWidget {
  _newspage createState() => _newspage();
}

// ignore: camel_case_types
class _newspage extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("News",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SafeArea(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 200,
                        child: ChangeNotifierProvider(
                            create: (context) => NewsArticleListViewModel(),
                            child: NewsList()),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Buttons(),
                  )
                ]),
          ))
    ]));
  }
}
