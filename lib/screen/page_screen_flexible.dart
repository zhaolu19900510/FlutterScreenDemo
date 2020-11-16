import 'package:flutter/material.dart';

class ScreenFlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit:FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.amber.withOpacity(0.5),
              ),
            ),
          ),
          Flexible(
            fit:FlexFit.loose,
            flex: 2,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.yellow.withOpacity(0.5),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.cyan.withOpacity(0.5),
              ),
            ),
          ),
          Flexible(
            fit:FlexFit.loose,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.red.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
