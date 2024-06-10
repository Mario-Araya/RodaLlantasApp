import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDDX_AawzLjKAy1M1req7jfzRK9rJTlwFA",
            authDomain: "roda-llantas.firebaseapp.com",
            projectId: "roda-llantas",
            storageBucket: "roda-llantas.appspot.com",
            messagingSenderId: "129066847051",
            appId: "1:129066847051:web:afd36f122a19da2a43b6ce",
            measurementId: "G-C43PS5WVFH"));
  } else {
    await Firebase.initializeApp();
  }
}
