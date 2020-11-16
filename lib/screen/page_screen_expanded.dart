import 'package:flutter/material.dart';

class ScreenExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Center(
        child: Container(
          // 容器组件
          height: 200, // 设置默认高度
          margin: EdgeInsets.symmetric(horizontal: 10.0), // 两边的外边距
          child: Row(
            // 一行显示
            children: <Widget>[
              // 第一个区块
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)), // 圆角
                      color: Colors.cyan.withOpacity(0.5)), // 颜色
                ),
              ),
              // 间隔
              SizedBox(width: 10.0, height: 10.0),
              // 第二个区块
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      // 继续用Expanded撑开
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)), // 圆角
                          color: Colors.grey.withOpacity(0.5), // 颜色
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0, height: 10.0), // 间隔10
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                                color: Colors.red.withOpacity(0.5),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0, height: 10.0),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                  color: Colors.blueAccent.withOpacity(0.5)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // 为了使代码简单就不减少嵌套了
            ],
          ),
        ),
      ),
    );
  }
}
