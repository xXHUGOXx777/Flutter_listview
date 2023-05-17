import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview2",
      routes: {
        "/listview1": (BuildContext context) => ListView1(),
        "/listview2": (BuildContext context) => ListView2(),
      },
      theme: ThemeData(
          primaryColor: Colors.blueGrey,
          accentColor: Colors.red,
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.pink,
          ))),
    );
  }
}
