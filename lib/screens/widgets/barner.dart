import 'package:flutter/material.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class TrapeziumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
        child: CustomPaint(
          painter: TrapeziumPainter(),
        ),
      ),
    );
  }
}

class TrapeziumPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        colors: [gold, darkbrown],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height)));

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width - 40, size.height)
      ..lineTo(40, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
