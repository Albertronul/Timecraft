import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8qk6UFATk__h-Zlwc6LmsMYeiFeS1UB4",
            authDomain: "timecraft-sxxko5.firebaseapp.com",
            projectId: "timecraft-sxxko5",
            storageBucket: "timecraft-sxxko5.firebasestorage.app",
            messagingSenderId: "601437132863",
            appId: "1:601437132863:web:79b10d192f8b4625e7c08a",
            measurementId: "G-Y37SL9KFED"));
  } else {
    await Firebase.initializeApp();
  }
}
