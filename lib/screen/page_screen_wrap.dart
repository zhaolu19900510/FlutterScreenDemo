import 'dart:math';

import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warp"),
      ),
      body: Container(
          child: Wrap(
              runAlignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.start,
              runSpacing: 1,
              children: tags.map((e) => TagItem(e)).toList())),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;
  final a = Random();

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.cyan,
          border: Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}

const List<String> tags = [
  "12",
  "3",
  " 111111",
  "阿佛拍拍拍拍拍",
  "sdzxc",
  "zxc阿弹尽粮绝",
  "hhhh",
  "全球",
  "qe434",
  "2俄企鹅企鹅",
  "'c;vkz;'';zxcl';'",
  "这种",
  "asd9083049",
  "11233"
];
