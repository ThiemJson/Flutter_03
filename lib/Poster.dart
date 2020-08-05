import 'package:flutter/material.dart';

class Poster extends StatefulWidget {
  @override
  _PosterState createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.network("https://flutter.dev/assets/tools/devtools/inspector_screenshot-fa3e7d8cd58a361dec60639bcd38592a8ef4626e400512e3799ca2f5f2403a1a.png", height: 500,),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'A Sweeties Deer', style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.white),
                    ),
                  )
                )
              ],
            )
          ),
        )
      ),
    );
  }
}
