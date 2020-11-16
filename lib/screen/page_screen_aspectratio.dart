import 'package:flutter/material.dart';

class ScreenAspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AspectRatio作用于父控件，根据aspectRatio计算父控件的宽或者高，AspectRatio的子控件将填充满父控件，子控件的宽高无效。
    // 强制子部件的宽度和高度具有给定的宽高比,可以父容器给定一个宽或者高，来换算另一个值
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio"),
      ),
      body: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.red,
            ),
          )),
    );
  }
}
