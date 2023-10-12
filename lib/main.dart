import 'package:flutter/material.dart';
import 'package:authentication_flutter/signIn.dart';
import 'package:authentication_flutter/signUp.dart';

void main() {
  runApp(Auth());
}

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signIn(),
    );
  }
}
