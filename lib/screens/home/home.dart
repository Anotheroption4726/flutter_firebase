import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

//////////////////////////////////////////
///
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return HomeState();
  }
}
///
//////////////////////////////////////////

class HomeState extends State<Home> {

  final AuthService _auth = AuthService();

//////////////////////////////////////////
///
  int questionIndex = 0;

  var questions = 
  [
    'Color 0',
    'Color 1',
    'Color 2'
  ];
///
//////////////////////////////////////////

  @override
  Widget build(BuildContext context) {

//////////////////////////////////////////
///
    void answerQuestion()
    {
      print("color 0 chosen!");

      if(questionIndex < 1)
      {
        setState(()
        {
          questionIndex += 1;
          print(questionIndex);
        });
      }
    }
///
/////////////////////////////////////////
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

/////////////////////////////////////////
///
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 0'),
              onPressed: answerQuestion
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print("Color 1 chosen!")
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => {
                print("Color 2 chosen!")
              }
            ),
          ],
        ),
///
////////////////////////////////////////
    );
  }
}