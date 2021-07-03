import 'package:flutter/material.dart';
import 'package:stock_simulator/pages/_homepage.dart';
import 'package:stock_simulator/pages/activitypage.dart';
import 'package:stock_simulator/pages/learnpage.dart';
import 'package:stock_simulator/pages/newspage.dart';
import 'package:stock_simulator/pages/tradepage.dart';

// ignore: camel_case_types
// ignore: must_be_immutable

class Buttons extends StatefulWidget {
  final bool homepage, newspage, tradepage, activitypage, learnpage;
  Buttons(
      {required this.homepage,
      required this.newspage,
      required this.tradepage,
      required this.activitypage,
      required this.learnpage});
  _ButtonState createState() => _ButtonState(
      homepage: homepage,
      newspage: newspage,
      tradepage: tradepage,
      activitypage: activitypage,
      learnpage: learnpage);
}

class _ButtonState extends State<Buttons> {
  final bool homepage, newspage, tradepage, activitypage, learnpage;

  _ButtonState(
      {required this.homepage,
      required this.newspage,
      required this.tradepage,
      required this.activitypage,
      required this.learnpage});
  Color onPage(bool isOn) {
    if (isOn)
      return Colors.red;
    else
      return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: SafeArea(
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage2()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: onPage(homepage),
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 7.75, 10),
                    ),
                    child: Text("🏠", style: TextStyle(fontSize: 20.0)),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewsPage()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: onPage(newspage),
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 7.75, 10),
                    ),
                    child: Text("📰", style: TextStyle(fontSize: 20.0)),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TradePage()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: onPage(tradepage),
                      shadowColor: Colors.white,
                      primary: Colors.red,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 7.75, 10),
                    ),
                    child: Text("💵", style: TextStyle(fontSize: 20.0)),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ActivityPage()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: onPage(activitypage),
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 7.75, 10),
                    ),
                    child: Text("📜", style: TextStyle(fontSize: 20.0)),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LearnPage()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: onPage(learnpage),
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 7.75, 10),
                    ),
                    child: Text("✏️", style: TextStyle(fontSize: 20.0)),
                  )),
            ],
          ),
        ));
  }
}
