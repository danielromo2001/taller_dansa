import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-5B-WjMIIaBweNf6hTeob1LEa3froo8o",
            authDomain: "tallerdansa-2307.firebaseapp.com",
            projectId: "tallerdansa-2307",
            storageBucket: "tallerdansa-2307.appspot.com",
            messagingSenderId: "815687075784",
            appId: "1:815687075784:web:784c9dcee38d8fdc06a2fd"));
  } else {
    await Firebase.initializeApp();
  }
}
