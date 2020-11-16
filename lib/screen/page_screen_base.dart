import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('11'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('${MediaQuery.of(context).size}'),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).padding.top,
              color: Colors.grey,
              alignment: Alignment.center,
              child: Text('${MediaQuery.of(context).padding.bottom}'),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).padding.vertical,
              color: Colors.grey,
              alignment: Alignment.center,
              child: Text('${MediaQuery.of(context).padding.horizontal}'),
            ),
            Container(
              height: 40,
              width: (1080 / 2) / window.devicePixelRatio,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('${(1080 / 2) / window.devicePixelRatio}'),
            )
          ],
        ),
      ),
    );
  }
}
