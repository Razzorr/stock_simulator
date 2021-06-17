import 'package:flutter/material.dart';
import 'package:stock_simulator/widgets/buttons.dart';

class LearnPage extends StatefulWidget {
  _learnpage createState() => _learnpage();
}

// ignore: camel_case_types
class _learnpage extends State<LearnPage> {
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
                  Text("Learn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Buttons(),
                  )
                ]),
          ))
    ]));
  }
}
