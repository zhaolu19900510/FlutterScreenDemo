import 'package:flutter/material.dart';
import 'package:flutter_test_screen/screen/page_screen_aspectratio.dart';
import 'package:flutter_test_screen/screen/page_screen_base.dart';
import 'package:flutter_test_screen/screen/page_screen_compute.dart';
import 'package:flutter_test_screen/screen/page_screen_expanded.dart';
import 'package:flutter_test_screen/screen/page_screen_flexible.dart';
import 'package:flutter_test_screen/screen/page_screen_spacer.dart';
import 'package:flutter_test_screen/screen/page_screen_wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage('Flutter Screen Demo'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("Expanded"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenExpandedPage();
                }));
              },
            ),
            TextButton(
              child: Text("Spacer"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenSpacerPage();
                }));
              },
            ),
            TextButton(
              child: Text("Flexible"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenFlexiblePage();
                }));
              },
            ),
            TextButton(
              child: Text("AspectRatio"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenAspectRatioPage();
                }));
              },
            ),
            TextButton(
              child: Text("WrapPage"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return WrapPage();
                }));
              },
            ),
            TextButton(
              child: Text("Cpmpute"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return CpmputePage();
                }));
              },
            ),
            TextButton(
              child: Text("Base"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return BaseScreenPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
