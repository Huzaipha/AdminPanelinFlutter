// ignore_for_file: prefer_const_constructors

import 'package:adminvessel/AdminSide/AdminLoginScreen.dart';
import 'package:adminvessel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA_uuoHO_sxhaY1OUjV8PVs0mnuh1o3-hE",
          authDomain: "huzaipha-flutter.firebaseapp.com",
          projectId: "huzaipha-flutter",
          storageBucket: "huzaipha-flutter.appspot.com",
          messagingSenderId: "1072698470757",
          appId: "1:1072698470757:web:054593c8b00eddb00ff18c",
          measurementId: "G-W1LQM25H5B"),
    );
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminLoginScreen(),
    );
  }
}
