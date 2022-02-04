import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:take2/provider/googleAuth.dart';

class accountPage extends StatelessWidget {
  //get user data from provider
  final GoogleAuth _googleAuthProvider = GoogleAuth();

  accountPage(Type myStatefulWidget);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        Provider.of<GoogleAuth>(context, listen: false)
                            .user
                            .photoUrl),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        Provider.of<GoogleAuth>(context, listen: false)
                            .user
                            .displayName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Provider.of<GoogleAuth>(context, listen: false)
                            .user
                            .email,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
