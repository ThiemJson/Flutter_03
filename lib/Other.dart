import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Show Country Flag", style: TextStyle(fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Other('Viet Nam','vietnam'),
            Other('USA','usa'),
            Other('JAPAN','japan'),
            Other('CHINA','china'),
          ],
        ),
      )
    );
  }
}
class Other extends StatelessWidget {
  Other(this.title, this.images);
  final String title;
  final String images;
  @override
  Widget build(BuildContext context) {
    return
    Container(
      padding: EdgeInsets.all(25),
      color: Colors.grey,
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("images/${this.images}.jpg", scale: 3.5,),
          Container(
              //padding: EdgeInsets.all(12),
              child: NewWidget(title: title)
          ),
          /*Container(
          child: Text(title, style: TextStyle(fontSize: 35 , color: Colors.black),),
          padding: EdgeInsets.all(50),
          color: Colors.grey,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.all(30),
        )*/
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 35 , color: Colors.black),);
  }
}
