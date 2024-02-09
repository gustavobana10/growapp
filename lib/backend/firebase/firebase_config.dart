import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDmlmudXIWSHNVldICRcaDT4TJ4ih2FgvA",
            authDomain: "growapp-z4k9te.firebaseapp.com",
            projectId: "growapp-z4k9te",
            storageBucket: "growapp-z4k9te.appspot.com",
            messagingSenderId: "648097154556",
            appId: "1:648097154556:web:ec0ca73bc783f875129e79"));
  } else {
    await Firebase.initializeApp();
  }
}
