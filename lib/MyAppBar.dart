import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: (){
            print("day la dang an button bar");
          }
        ),
        centerTitle: true,
        title: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: 'Search',labelStyle: TextStyle(fontSize: 20, color: Colors.white), hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(Icons.search, color: Colors.white,),
                    suffixText: 'USD',
                    suffixStyle: const TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      borderSide: BorderSide(width: 1,color: Colors.red),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      borderSide: BorderSide(width: 1,color: Colors.orange),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      borderSide: BorderSide(width: 1,color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        borderSide: BorderSide(width: 1,)
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        borderSide: BorderSide(width: 1,color: Colors.black)
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        borderSide: BorderSide(width: 1,color: Colors.yellowAccent)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: ()=>print("Search button was taped !"),
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            tooltip: 'Browns',
            onPressed: ()=>print("Alarm button was taped !"),
          )
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}