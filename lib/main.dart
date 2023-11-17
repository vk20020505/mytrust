import 'package:flutter/material.dart';

import 'home.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black,
        elevation: 0),
        scaffoldBackgroundColor: Colors.black
         
        ),
        home: const Home(),
      ),
    );
  }
}

