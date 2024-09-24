import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDEqQvtlcmZ0wmjeJoTpUwG8poFr588gT8",
            authDomain: "rba-generators.firebaseapp.com",
            projectId: "rba-generators",
            storageBucket: "rba-generators.appspot.com",
            messagingSenderId: "55167005601",
            appId: "1:55167005601:web:c3102df60fb4985f5751e0",
            measurementId: "G-974W1PC9RC"));
  } else {
    await Firebase.initializeApp();
  }
}
