import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  int colorIndex = 0;

  var colorChoice = 
  [
    'Color 0',
    'Color 1',
    'Color 2'
  ];

  @override
  Widget build(BuildContext context) {

    void pickColor(int colorChosen)
    {
      setState(()
      {
        colorIndex = colorChosen;
        print("$colorChoice[$colorIndex] chosen!");
        //print(questionIndex);
      });
    }

    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Flutter Firebase'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            //color: Colors.white,
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Text(colorChoice[colorIndex]),
          RaisedButton(
            child: Text('Color 0'),
            onPressed: () => pickColor(0)
          ),
          RaisedButton(
            child: Text('Color 1'),
            onPressed: () => pickColor(1)
          ),
          RaisedButton(
            child: Text('Color 2'),
            onPressed: () => pickColor(2)
          ),
        ],
      ),
    );
  }
}