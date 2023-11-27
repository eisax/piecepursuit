import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/splash/splashscreen.dart';
import 'package:piece_pursuit/screenss/choosetheme.dart';
import 'package:piece_pursuit/screenss/homeScreen.dart';



void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puzzle Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}