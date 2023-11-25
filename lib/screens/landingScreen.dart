import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:piece_pursuit/screens/homeScreen.dart';
import 'package:piece_pursuit/screens/startGame.dart';

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
      home: const LandingScreen(),
    );
  }
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                maxWidth: 250,
                maxHeight: 250,
              ),
              child: Lottie.asset('assets/logo.json'),
            ),
            const SizedBox(height: 20),
            const Text(
              'PIECE PURSUIT',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(300, 50)), // Set the width and height
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PuzzleGameScreen()),
                );
              },
              child: const Text('Play'),
            ),
            const SizedBox(height: 10), // Add space between buttons
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(300, 50)), // Set the width and height
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StartGameScreen()),
                );
              },
              child: const Text('How to Play'),
            ),
          ],
        ),
      ),
    );
  }
}
