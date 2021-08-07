import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum RadioValue { SHISYUTSU, SYUNYU }

class PageInput extends StatefulWidget {
  @override
  _PageInputState createState() => _PageInputState();
}

class _PageInputState extends State<PageInput> {
  RadioValue _gValue = RadioValue.SHISYUTSU;
  DateTime _date = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageInput'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          RadioListTile(
            title: Text('支出'),
            value: RadioValue.SHISYUTSU,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('収入'),
            value: RadioValue.SYUNYU,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
        ]),
        Row(children: <Widget>[
          new Text("日付"),
          new Text(_date.toString()),
          IconButton(
            icon: Icon(Icons.date_range),
            onPressed: () => _selectDate(context),
          )
        ]),
        Row(children: <Widget>[
          new Text("金額"),
          new TextField(),
        ]),
        Row(children: <Widget>[
          new Text("項目名"),
          new TextField(),
        ]),
        Row(children: <Widget>[
          new Text("分類"),
          new TextField(),
        ]),
      ]),
    );
  }

  void _onRadioSelected(value) {
    setState(() {
      _gValue = value;
    });
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime.now().add(new Duration(days: 360)));

    if (picked != null) {
      // 日時反映
      setState(() => _date = picked);
    }
  }
}
