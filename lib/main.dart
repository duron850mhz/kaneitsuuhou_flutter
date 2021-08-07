import 'package:flutter/material.dart';
import 'analytics.dart';
import 'input.dart';
import 'setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '寛永通宝',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 表示中のページのインデックス
  int _selectedIndex = 0;

  // ページたち
  static List<Widget> _pageList = [
    PageInput(),
    PageAnalytics(),
    PageSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded),
            label: '入力',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_rounded),
            label: '分析',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: '設定',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapped,
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
