import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC0srHNyLSGcv4F6TeeE0Dql6UJAJmGHY8",
            authDomain: "w8-pl8.firebaseapp.com",
            projectId: "w8-pl8",
            storageBucket: "w8-pl8.appspot.com",
            messagingSenderId: "1050956017338",
            appId: "1:1050956017338:web:5131178db6b961d2af9c83",
            measurementId: "G-7XQWCQ2EGE"));
  } else {
    await Firebase.initializeApp();
  }
}
