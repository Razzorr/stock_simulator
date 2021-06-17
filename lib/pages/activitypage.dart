import 'package:flutter/material.dart';
import 'package:stock_simulator/widgets/buttons.dart';

class ActivityPage extends StatefulWidget {
  _activitypage createState() => _activitypage();
}

// ignore: camel_case_types
class _activitypage extends State<ActivityPage> {
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
                  Text("Activity",
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
