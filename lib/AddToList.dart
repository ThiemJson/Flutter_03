import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

class AddToList extends StatefulWidget {
  @override
  _AddToListState createState() => _AddToListState();
}

class _AddToListState extends State<AddToList> {
  List<Item> ListItem = new List<Item>();
  final _contentController = new TextEditingController();
  final _amountController  = new TextEditingController();
  String _CurrentContent = '';
  String _CurrentAmount = '';

  List<Widget> getWidgetFormList(List<Item> item){
    List<Widget> ListWidget = new List<Widget>();
    item.forEach((_itemOfListItem) {
      ListWidget.add(new _Item(_itemOfListItem));
    });
    return ListWidget;
  }

  @override
  Widget build(BuildContext context) {
    print('Building this APPPPP...');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          minimum: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'Content'
                ),
                controller: _contentController,
                onChanged: (text){
                  _CurrentContent = text;
                },
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Amount'
                ),
                controller: _amountController,
                onChanged: (text){
                  _CurrentAmount = text;
                },
              ),
              SizedBox(
                width: 10,
                height: 20,
              ),
              FlatButton.icon(
                label: Text(
                  'Add To List'
                ),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: (){
                  setState(() {
                    Item item = new Item(_CurrentContent, double.tryParse(_CurrentAmount) ?? 0);
                    ListItem.add(item);
                  });
                },
                icon: Icon(Icons.add),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: getWidgetFormList(ListItem),
              )
            ],
          ),
        ),
      )
    );
  }
}

class Item{
  String _content;
  double _amount;
  Item(this._content, this._amount);
}

class _Item extends StatelessWidget {
  Item item = null;
  _Item(this.item);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          item._content,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          item._amount.toString(),
          style: TextStyle(
              fontSize: 20,
              color: Colors.red
          ),
        )
      ],
    );
  }
}
