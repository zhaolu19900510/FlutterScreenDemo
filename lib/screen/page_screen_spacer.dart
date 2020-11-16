import 'package:flutter/material.dart';

class ScreenSpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.amber.withOpacity(0.5),
              ),
            ),
            Spacer(flex: 1),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Colors.blueAccent.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
