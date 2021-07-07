import 'package:flutter/material.dart';
import 'package:weaver/signin.dart';
import 'package:weaver/signup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home.dart';
import 'intro.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weaver',
      theme: ThemeData(
        //sets the main color for the entire app
        primaryColor: Colors.blue[100],
        accentColor: Colors.white,
      ),
      //initialRoute: '\intropage',
      routes: {
        //Set routes to be used in the app
        '\intropage': (context) => IntroPage(),
        '\signup': (context) => SignUp(),
        '\signin': (context) => SignIn(),
        '\home': (context) => HomePage(),
      },
      home: IntroPage(),
    );
  }
}
