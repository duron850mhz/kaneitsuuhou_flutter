import 'package:flutter/material.dart';

class PageAnalytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageAnalytics'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('分析'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
