

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

    return user.user.uid;
  }

  Auth();
  Future<String> signUp(String email, String password) async {
    UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    Firestore.instance.runTransaction((Transaction transaction)async{
      CollectionReference reference = Firestore.instance.collection('users');
      await reference.add({
        "uid":user.user.uid,
        "email":email,
        "password":password
      });
    });
    return user.user.uid;
  }


  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}