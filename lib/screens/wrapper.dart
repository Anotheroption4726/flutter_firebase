import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/authenticate/authenticate.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //  return either Home or Authenticate
    return Authenticate();
  }
}