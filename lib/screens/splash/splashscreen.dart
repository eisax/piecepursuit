import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/home/homescreen.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    // Create a linear animation from 0.0 to 1.0
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    // Start the animation
    _animationController.forward();

    // Add a callback when the animation is completed
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
         Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeScreen()),
                            );
        print("Animation Completed!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 5, // Adjust the radius as needed
            colors: [
              lightbrown.withOpacity(0.5), // Dark brown color with 50% opacity
              gold.withOpacity(
                  0.0), // Dark brown color with 0% opacity (fully transparent)
            ],
            stops: [0.3, 1.0], // Adjust the stops to control the transition
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Opacity(
                  opacity: 0.1,
                  child: Container(
                    height: height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/puzzle.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                child: Container(
              padding: EdgeInsets.only(top: height*0.15),
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width,
                    child: Image.asset("assets/logo.png"),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors
                                .white, // You can change the border color here
                            width: 1.0, // You can adjust the border width here
                          ),
                        ),
                        margin: EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            AnimatedBuilder(
                              animation: _animation,
                              builder: (context, child) {
                                return LinearProgressIndicator(
                                  value: _animation.value,
                                  borderRadius: BorderRadius.circular(15),
                                  backgroundColor: Colors.transparent,
                                  minHeight: 10,
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(lightbrown),
                                );
                              },
                            ),
                          
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
