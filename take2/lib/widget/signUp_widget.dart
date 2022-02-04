import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:take2/provider/googleAuth.dart';

class signUp extends StatelessWidget {
  signUp(Type myStatefulWidget);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (_) => GoogleAuth(),
      child: Builder(
        builder: (context) {
          return Center( 
                child: ElevatedButton.icon(
                    onPressed: () {
                      final provider = Provider.of<GoogleAuth>(context, listen: false);
                      provider.googleLogin();
                      
                    },
                    icon: const FaIcon(FontAwesomeIcons.google, color: Colors.white),
                    label: const Text('Sign in with Google'),
                    //change background color 
                    style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                ))
            );
        }
      ),
    ); 
  }