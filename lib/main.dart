import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/wrapper.dart';
import 'package:flutter/gestures.dart';

//void main() => runApp(MyApp());

void main() {
  debugPrintHitTestResults = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}

