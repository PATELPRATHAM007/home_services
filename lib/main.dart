import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_services/pagehendler.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBZnhIfD0e360FlV-N2XUAZYX-N941Shb0",
      authDomain: "home-services-web.firebaseapp.com",
      projectId: "home-services-web",
      storageBucket: "home-services-web.appspot.com",
      messagingSenderId: "803241437844",
      appId: "1:803241437844:web:e6fe3a09716274aa74e281",
      measurementId: "G-KH01MW5K7Y",
    ),
  );
  runApp(const PageHendler());
}