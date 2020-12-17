import 'dart:async';

import 'package:flutter/material.dart';

import 'custom_exception.dart';

class ExceptionTest extends StatefulWidget {
  @override
  _ExceptionTestState createState() => _ExceptionTestState();
}

class _ExceptionTestState extends State<ExceptionTest> {
  String exceptionDesc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exception"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              print('123123123123123123');
              syncException();
            },
            child: Container(color: Colors.cyan, padding: EdgeInsets.all(5), child: Text('同步异常')),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              // runZoned(() {
              asynException();
              // });
            },
            child: Container(color: Colors.greenAccent, padding: EdgeInsets.all(5), child: Text('异步异常')),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              otherException();
            },
            child: Container(color: Colors.yellowAccent, padding: EdgeInsets.all(5), child: Text('其他异常')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(exceptionDesc),
          SizedBox(
            height: 10,
          ),
          // RaisedButton(
          //   onPressed: () {
          //     exceptionDesc.substring(10, 30).toLowerCase();
          //   },
          //   child: Container(color: Colors.yellowAccent, padding: EdgeInsets.all(5), child: Text(exceptionDesc.substring(10, 30))),
          // ),
          RaisedButton(
            onPressed: () {
              // try {
              //   exceptionDesc.substring(10, 30).toLowerCase();
              // } catch (e) {
              //   Future.error(e);
              // }

              Future.delayed(Duration(seconds: 1)).then((e) => Future.error(CustomException(1,'自定义exception')));
            },
            child: Container(color: Colors.yellowAccent, padding: EdgeInsets.all(5), child: Text('异常1')),
          ),
          RaisedButton(
            onPressed: () {
              var future = new Future.value(499);
              runZoned(() {
                var future2 = future.then((_) {
                  throw "error in first error-zone";
                });
                runZoned(() {
                  var future3 = future2.catchError((e) {
                    print("Never reached!");
                  });
                }, onError: (e, s) {
                  print("unused error handler");
                });
              }, onError: (e, s) {
                print("catches error of first error-zone.");
              });
            },
            child: Container(color: Colors.yellowAccent, padding: EdgeInsets.all(5), child: Text('异常2')),
          )
        ],
      )),
    );
  }

  syncException() {
    try {
      throw StateError('This is a Dart exception.');
    } catch (e) {
      print(e.toString());
      setState(() {
        exceptionDesc = e.toString();
      });
    }
  }

  asynException() {
    Future.delayed(Duration(seconds: 1))
        .then((e) => throw StateError('This is a Dart exception in Future.'))
        .catchError((e) {
      setState(() {
        exceptionDesc = e.toString();
      });
    });
  }

  otherException() {
    try {
      Future.delayed(Duration(seconds: 1)).then((e) => throw StateError('This is a Dart exception in Future.'));
    } catch (e) {
      setState(() {
        exceptionDesc = e.toString();
      });
    }
  }
}
