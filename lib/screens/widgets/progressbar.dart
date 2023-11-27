import 'package:flutter/material.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class MyProgressBar extends StatefulWidget {
  final double width;
  final Color color;
  final double height;
  final double? borderRadius;

  MyProgressBar(
      {required this.width, required this.height, required this.color, this.borderRadius});

  @override
  _MyProgressBarState createState() => _MyProgressBarState();
}

class _MyProgressBarState extends State<MyProgressBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    // Create a linear animation from 0.0 to 1.0
    _animation =
        Tween<double>(begin: 0.0, end: 0.5).animate(_animationController);

    // Start the animation
    _animationController.forward();

    // Add a callback when the animation is completed
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        
        print("Animation Completed!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Stack(
              children: [
                LinearProgressIndicator(
                  value: _animation.value,
                  borderRadius:_animation.value ==1? BorderRadius.circular(widget.borderRadius??15):BorderRadius.only(topLeft: Radius.circular(widget.borderRadius??15),bottomLeft: Radius.circular(widget.borderRadius??15)),
                  backgroundColor: Colors.transparent,
                  minHeight: 16,
                  valueColor: AlwaysStoppedAnimation<Color>(widget.color??lightbrown),
                ),
                Positioned(
                    child: Center(
                  child: FractionallySizedBox(
                    widthFactor: _animation.value,
                    child: Center(
                      child: Text(
                        '${(_animation.value * 100).toInt()}%',
                        style: TextStyle(
                            color: Colors.white,fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ))
              ],
            );
          },
        )
       
      ],
    );
  }
}
