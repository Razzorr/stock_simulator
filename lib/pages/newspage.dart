import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_simulator/models/news_models/view_models/newsarticle_listview.dart';
import 'package:stock_simulator/widgets/newslist.dart';
import '_homepage.dart';
import 'activitypage.dart';
import 'tradepage.dart';
import 'learnpage.dart';

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
                  Container(
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: SafeArea(
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage2()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("H",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NewsPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.red,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("N",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TradePage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("T",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActivityPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("A",
                                      style: TextStyle(fontSize: 20.0)),
                                )),
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LearnPage()));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                    shadowColor: Colors.white,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    minimumSize: Size(50, 10),
                                  ),
                                  child: Text("L",
                                      style: TextStyle(fontSize: 20.0)),
                                ))
                          ],
                        ),
                      ))
                ]),
          ))
    ]));
  }
}
