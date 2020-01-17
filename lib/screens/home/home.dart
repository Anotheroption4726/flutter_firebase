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

  Color colorPicked = Colors.brown[400];

  var colorChoice = 
  [
    'Brown',
    'Blue',
    'Green'
  ];

  @override
  Widget build(BuildContext context) {

    void pickColor(int colorChosen)
    {
      setState(()
      {
        colorIndex = colorChosen;
        print(colorIndex);

        if(colorChosen == 1){
          colorPicked = Colors.blue[400];
        }
        else if(colorChosen == 2){
          colorPicked = Colors.green[400];
        }
        else{
          colorPicked = Colors.brown[400];
        }
      });
    }

    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Flutter Firebase'),
        backgroundColor: colorPicked,
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
            child: Text('Brown'),
            onPressed: () => pickColor(0)
          ),
          RaisedButton(
            child: Text('Blue'),
            onPressed: () => pickColor(1)
          ),
          RaisedButton(
            child: Text('Green'),
            onPressed: () => pickColor(2)
          ),
          RaisedButton(
            child: Text('Fonctionalité'),
            onPressed: () => {}
          ),
        ],
      ),
    );
  }
}