import 'package:flutter/material.dart';

class PageSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageSetting'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('せってい'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
