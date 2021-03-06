import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_performance/firebase_performance.dart';



void main() {
  // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/login': (context) => LoginRoute(),
      '/add': (context) => AddRoute(),
      '/manage': (context) => ManageRoute(),
    },
  ));
}
 
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Login!'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          RaisedButton(
            child: Text('Add Car!'),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          ),
          RaisedButton(
            child: Text('Manage Car'),
            onPressed: () {
              Navigator.pushNamed(context, '/manage');
            },
          ),
        ],
      )),
    );
  }
}
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class LoginRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // login form 
        child: Column(
          children: <Widget>[
            Text('Login'),
            TextField(),
            TextField(),
            RaisedButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AddRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}

class ManageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}
