import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

//import firebase auth package

class GoogleAuth extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async{
    final googleUser =await googleSignIn.signIn();
    if(googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users.doc(googleUser.id).set({
      'id': googleUser.id,
      'email': googleUser.email,
      'displayName': googleUser.displayName,
      'photoUrl': googleUser.photoUrl,
      'createdAt': FieldValue.serverTimestamp(),
    });
    print("done");
    notifyListeners(); 
  }
}
