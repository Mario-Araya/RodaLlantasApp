// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> createUser(
  String email,
  String password,
  String randomDocGen,
) async {
  String message = "User created";
  DateTime created_time = DateTime.now();

  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);

  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: email, password: password);
    String? uid = userCredential.user?.uid;

    if (uid != null) {
      final CollectionReference<Map<String, dynamic>> user =
          FirebaseFirestore.instance.collection('users');
      user.doc(uid).set({
        'uid': uid,
        'email': email,
        'created_time': created_time,
      });
    } else {
      return 'Error';
    }

    return message;
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
