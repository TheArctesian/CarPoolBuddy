import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './signUp_widget.dart';

class accountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return signUp();
        },
      ));
}
