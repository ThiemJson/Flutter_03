import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  DateTime _dateTime = new DateTime.now();
  bool isLike = true;
  String btn_text = "Like";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void change() {
    setState(() {
      isLike = !isLike;
      btn_text = (isLike)?"Dislike":"Like";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(_dateTime.year.toString()+'/'+_dateTime.month.toString()+'/'+_dateTime.day.toString(), style: TextStyle(fontSize: 25),) ,
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
//                    Image.network("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png", scale: ,),
                  Container(
                    //color: Colors.red,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    //child: Image.network("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",width: 300, height: 150,),
                    child: Image.asset('images/vietnam.jpg',width: 500, height: 150,),
                  ),
                  Container(
                    //color: Colors.grey,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child:TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                labelText: "Enter your UserName",
                                hintStyle: TextStyle(fontSize: 25 , color: Colors.blue),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32),
                                    borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.solid
                                    )
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                //contentPadding: EdgeInsets.all(),
                              )
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                labelText: "Enter your Password",
                                hintStyle: TextStyle(fontSize: 25 , color: Colors.blue),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32),
                                    borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.solid
                                    )
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                //contentPadding: EdgeInsets.all(),
                              )
                          ),
                        ),
                        Container(
                          //color: Colors.indigoAccent,
                          child: ButtonBar(
                            alignment: MainAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              RaisedButton(
                                color: Colors.blue,
                                onPressed: change,
                                child: Text(
                                  "Sign In", style: TextStyle(fontSize: 20),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(38)
                                ),
                              ),
                              RaisedButton(
                                color: Colors.blue,
                                onPressed: change,
                                child: Text(
                                  "Sign Up", style: TextStyle(fontSize: 20),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(38)
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset((isLike) ? 'images/like.png' : 'images/dislike.jpeg'),
                  FlatButton.icon(
                    label: Text(btn_text,style: TextStyle(fontSize: 25),),
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: change,
                    icon: Icon(
                        Icons.add_a_photo
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: change,
            icon: Icon(Icons.message),
            backgroundColor: Colors.blue,
            label: Text("Messenger"),
          ),
        )
    );
  }
}