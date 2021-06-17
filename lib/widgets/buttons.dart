import 'package:flutter/material.dart';
import 'package:stock_simulator/pages/_homepage.dart';
import 'package:stock_simulator/pages/activitypage.dart';
import 'package:stock_simulator/pages/learnpage.dart';
import 'package:stock_simulator/pages/newspage.dart';
import 'package:stock_simulator/pages/tradepage.dart';

// ignore: camel_case_types
// ignore: must_be_immutable

class Buttons extends StatefulWidget {
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Buttons> {
  bool homePage = false,
      activityPage = false,
      learnPage = false,
      tradePage = false,
      newsPage = false;
  Color onPage(bool isOn) {
    if (isOn) return Colors.red;
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
                      backgroundColor: Colors.grey[600],
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize: Size(50, 10),
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
                      backgroundColor: Colors.grey[600],
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize: Size(50, 10),
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
                      backgroundColor: Colors.grey[600],
                      shadowColor: Colors.white,
                      primary: Colors.red,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize: Size(50, 10),
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
                      backgroundColor: Colors.grey[600],
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize: Size(50, 10),
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
                      backgroundColor: Colors.grey[600],
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      minimumSize: Size(50, 10),
                    ),
                    child: Text("✏️", style: TextStyle(fontSize: 20.0)),
                  )),
            ],
          ),
        ));
  }
}
