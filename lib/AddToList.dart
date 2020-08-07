import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';

class AddToList extends StatefulWidget {
  @override
  _AddToListState createState() => _AddToListState();
}
class _AddToListState extends State<AddToList> {
  GlobalKey<ScaffoldState> _scarfolKey = new GlobalKey<ScaffoldState>();
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

  void showSnackBar(){
    _scarfolKey.currentState.showSnackBar(
        SnackBar(
          backgroundColor: Colors.blue,
          content: Text("Bạn cần nhập đầy đủ thông tin:", style: TextStyle(fontSize: 15),),
          duration: Duration(seconds:  3),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    print('Building this APPPPP...');
    return MaterialApp(
      home: Scaffold(
        key: _scarfolKey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            'Add To List',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: SafeArea(
          minimum: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                autofocus: true,
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
                    if( !(_CurrentAmount == "" || _CurrentContent == "")){
                      Item item = new Item(_CurrentContent, double.tryParse(_CurrentAmount) ?? 0);
                      ListItem.add(item);
                      _contentController.text = "";
                      _amountController.text = "";
                      _CurrentContent = "";
                      _CurrentAmount ="";
                    }
                    else{
                      _scarfolKey.currentState.showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.blue,
                          content: Text("Bạn cần nhập đầy đủ thông tin:", style: TextStyle(fontSize: 15),),
                          duration: Duration(seconds:  3),
                        )
                      );
                    }
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
    return ListTile(
      leading: const Icon(Icons.account_circle),
      title: Text("${item._content}"),
      subtitle: Text("Amount: ${item._amount}"),
      onTap: (){
        print('On tapping');
      },
    );
  }
}
