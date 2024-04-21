import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD1P5DUt5wHNQqeHaDb3x8q2QNSiwmZBdk",
            authDomain: "dev-scribe-ocrbxu.firebaseapp.com",
            projectId: "dev-scribe-ocrbxu",
            storageBucket: "dev-scribe-ocrbxu.appspot.com",
            messagingSenderId: "365101486757",
            appId: "1:365101486757:web:7a4ae04f7715606732734c"));
  } else {
    await Firebase.initializeApp();
  }
}
