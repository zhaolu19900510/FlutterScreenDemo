import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test_screen/exception/exception_test.dart';
import 'package:flutter_test_screen/screen/page_screen_aspectratio.dart';
import 'package:flutter_test_screen/screen/page_screen_base.dart';
import 'package:flutter_test_screen/screen/page_screen_compute.dart';
import 'package:flutter_test_screen/screen/page_screen_expanded.dart';
import 'package:flutter_test_screen/screen/page_screen_flexible.dart';
import 'package:flutter_test_screen/screen/page_screen_spacer.dart';
import 'package:flutter_test_screen/screen/page_screen_wrap.dart';

main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    // FlutterError.dumpErrorToConsole(details);
    Zone.current.handleUncaughtError(details.exception, details.stack);
  };
  // runZoned<Null>(() => runApp(MyApp()),
  //     zoneSpecification: ZoneSpecification(print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
  //   parent.print(zone, "Intercepted: $line");
  // }), onError: (obj, stack) {
  //   print('onError: ---obj--  ' + obj.toString());
  //   print('onError: ---stack--  ' + stack.toString());
  // });
  runZonedGuarded<Future<Null>>(() async {
    runApp(MyApp());
  }, (obj, stack) {
    print('onError: ---obj--  ' + obj.toString());
    print('onError: ---stack--  ' + stack.toString());
  }, zoneSpecification: ZoneSpecification(print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
    parent.print(zone, "Intercepted: $line");
  }));

  ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.error,
          color: Colors.red,
          size: 100,
        ),
        Text(
          flutterErrorDetails.exceptionAsString(),
          style: TextStyle(color: Colors.blue, fontSize: 14),
          textAlign: TextAlign.start,
        )
      ]),
    ));
  };
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
      home: HomeExceptionPage('Flutter Exception Demo'),
    );
  }
}

class HomeScreenPage extends StatelessWidget {
  final String title;

  HomeScreenPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text("Expanded"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenExpandedPage();
                }));
              },
            ),
            GestureDetector(
              child: Text("Spacer"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenSpacerPage();
                }));
              },
            ),
            GestureDetector(
              child: Text("Flexible"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenFlexiblePage();
                }));
              },
            ),
            GestureDetector(
              child: Text("AspectRatio"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenAspectRatioPage();
                }));
              },
            ),
            GestureDetector(
              child: Text("WrapPage"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return WrapPage();
                }));
              },
            ),
            GestureDetector(
              child: Text("Cpmpute"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return CpmputePage();
                }));
              },
            ),
            GestureDetector(
              child: Text("Base"),
              onTap: () {
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

class HomeExceptionPage extends StatelessWidget {
  final String title;

  HomeExceptionPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Exception Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text("Exception"),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return ExceptionTest();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
